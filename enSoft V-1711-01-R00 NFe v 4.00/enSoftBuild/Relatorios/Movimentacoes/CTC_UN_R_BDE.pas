unit CTC_UN_R_BDE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, Vcl.ComCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.Menus, vcl.wwdblook, Vcl.DBCtrls, JvDBControls, Data.DB, vcl.wwdatsrc,
  Datasnap.DBClient, ACBrSEF2;

type
  TCTC_FM_R_BDE = class(TPAD_FM_X_REL)
    CTC_FR_R_BDE_MEQ: TfrxReport;
    CTC_XL_R_BDE: TfrxXLSExport;
    CTC_PD_R_BDE: TfrxPDFExport;
    CTC_DB_R_BDE: TfrxDBDataset;
    pcFiltros: TPageControl;
    tsFornecedores: TTabSheet;
    lblFornecedoresDisponiveis: TLabel;
    lboxOperador: TListBox;
    Label1: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    Label2: TLabel;
    pmExcluirFuncionario: TPopupMenu;
    btnRemoverRegistroFuncionario: TMenuItem;
    lblEquipamento: TLabel;
    lblObra: TLabel;
    txtEquipamentoDescricao: TDBText;
    txtObraDescricao: TDBText;
    txtEquipamento: TJvComboEdit;
    txtObra: TJvComboEdit;
    CTC_CD_R_BDE: TClientDataSet;
    CTC_FR_R_BDE_MED: TfrxReport;
    CTC_FR_R_BDE_OBR: TfrxReport;
    Cliente: TTabSheet;
    Label3: TLabel;
    lboxClienteSel: TListBox;
    pmRemoverClientes: TPopupMenu;
    btnRemoverCliente: TMenuItem;
    btnRemoverTodosClientes: TMenuItem;
    CTC_FR_R_BDE_CLI: TfrxReport;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxOperadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverRegistroFuncionarioClick(Sender: TObject);
    procedure txtEquipamentoButtonClick(Sender: TObject);
    procedure txtEquipamentoExit(Sender: TObject);
    procedure txtObraButtonClick(Sender: TObject);
    procedure txtObraExit(Sender: TObject);
    procedure lboxClienteSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverClienteClick(Sender: TObject);
    procedure btnRemoverTodosClientesClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    procedure ExibirRel;
    function  TestarCampos: Boolean;

    var
      xOpcoes, xCondOperador,xCondCliente: string;
  public
    { Public declarations }
  end;

var
  CTC_FM_R_BDE: TCTC_FM_R_BDE;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_FUN, enFunc, PSQ_UN_X_MEQ, PSQ_UN_X_OBR, uDmCtc,
  enConstantes, CAD_UN_C_CLI, PSQ_UN_X_CLI;

{ TCTC_FM_R_BDE }

procedure TCTC_FM_R_BDE.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TCTC_FM_R_BDE.btnRemoverClienteClick(Sender: TObject);
begin
  inherited;
  if lboxClienteSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  lboxClienteSel.DeleteSelected;
end;

procedure TCTC_FM_R_BDE.btnRemoverRegistroFuncionarioClick(Sender: TObject);
begin
  inherited;
  if lboxOperador.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxOperador.DeleteSelected;
end;

procedure TCTC_FM_R_BDE.btnRemoverTodosClientesClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxClienteSel.ClearSelection;

  if lboxClienteSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxClienteSel.Items.Count > 0 then
     begin
       for i := 0 to lboxClienteSel.Items.Count - 1 do
           begin
             lboxClienteSel.Items.Delete(lboxClienteSel.ItemIndex);
           end;
       lboxClienteSel.Items.Clear;
     end;
end;

procedure TCTC_FM_R_BDE.ExibirRel;
var
  rDtaIni, rDtaFin, rEquipamento, rObra,rordem, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   // Equipamento
   rEquipamento := txtEquipamento.Text;

   // Obra
   rObra := txtObra.Text;

   PreencherCondicao;

   {0 = Opção do relatório
    1 = Data Inicial
    2 = Data Final
    3 = Obra
    4 = Equipamento
    5 = Operador}

   CTC_CD_R_BDE.Active:= False;
   CTC_CD_R_BDE.Close;
   CTC_CD_R_BDE.Data :=
           CTC_CD_R_BDE.DataRequest(
                VarArrayOf([lbxRelatorios.ItemIndex, rDtaIni, rDtaFin, rObra, rEquipamento, xCondOperador,xCondCliente]));

   if not CTC_CD_R_BDE.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Boletim Diário - Por Equipamento' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(CTC_FR_R_BDE_MEQ.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            CTC_FR_R_BDE_MEQ.Variables['Opcoes'] := QuotedStr(xOpcoes);
            CTC_FR_R_BDE_MEQ.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CTC_FR_R_BDE_MEQ.PrepareReport();
            CTC_FR_R_BDE_MEQ.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Boletim Diário - Medição' then
          begin
            if FileExists(PathImg) then
              begin
                LogoEmpresa := TfrxPictureView(CTC_FR_R_BDE_MED.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;

            CTC_FR_R_BDE_MED.Variables['Opcoes'] := QuotedStr(xOpcoes);
            CTC_FR_R_BDE_MED.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CTC_FR_R_BDE_MED.PrepareReport();
            CTC_FR_R_BDE_MED.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Boletim Diário - Por Obra' then
          begin
            if FileExists(PathImg) then
              begin
                LogoEmpresa := TfrxPictureView(CTC_FR_R_BDE_OBR.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;

            CTC_FR_R_BDE_OBR.Variables['Opcoes'] := QuotedStr(xOpcoes);
            CTC_FR_R_BDE_OBR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CTC_FR_R_BDE_OBR.PrepareReport();
            CTC_FR_R_BDE_OBR.ShowReport();
          end;

        if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = 'Boletim Diário - Por Cliente' then
          begin
            if FileExists(PathImg) then
              begin
                LogoEmpresa := TfrxPictureView(CTC_FR_R_BDE_CLI.FindObject('imgEmpresa1'));
                if Assigned(LogoEmpresa) then
                  LogoEmpresa.Picture.LoadFromFile(PathImg);
              end;

            CTC_FR_R_BDE_CLI.Variables['Opcoes'] := QuotedStr(xOpcoes);
            CTC_FR_R_BDE_CLI.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            CTC_FR_R_BDE_CLI.PrepareReport();
            CTC_FR_R_BDE_CLI.ShowReport();
          end;
      end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;

procedure TCTC_FM_R_BDE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CTC_FM_R_BDE);
end;

procedure TCTC_FM_R_BDE.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
end;

procedure TCTC_FM_R_BDE.lboxClienteSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
        PSQ_FM_X_CLI.ShowModal;
        if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
           begin
              if not dmGeral.ExisteRegNoListBox(lboxClienteSel,6,StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0)) then
                begin
                  lboxClienteSel.Items.Add(StrZero(PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0) +
                                             ' - ' + PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_CLI.Free;
     end;
end;

procedure TCTC_FM_R_BDE.lboxOperadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;

        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxOperador,4,PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsString) then
                begin
                  lboxOperador.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,4,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TCTC_FM_R_BDE.PreencherCondicao;
var
  i: integer;
  Cond,opcoesCliente,opcoesOperador: String;
begin
  // Operador ------------------------------------------------------------------
  xCondOperador := '';
  if lboxOperador.Count > 0 then
     begin
       for i := 0 to lboxOperador.Count - 1 do
          begin
            if xCondOperador <> '' then
               begin
                 xCondOperador :=
                 xCondOperador + ',' +''''+trim(copy(lboxOperador.Items[i],1,4))+'''';
                 opcoesOperador :=
                 opcoesOperador + '                 '+lboxOperador.Items[i] + #13+#10;
               end;
            if xCondOperador = '' then
               begin
                 xCondOperador :=
                 xCondOperador + ''''+trim(copy(lboxOperador.Items[i],1,4))+'''';
                 opcoesOperador :=
                 opcoesOperador + lboxOperador.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesOperador := 'Todos'+  #13+#10;
    end;

   // Cliente ----------------------------------------------------------------
  xCondCliente := '';
  if lboxClienteSel.Count > 0 then
    begin
      for i := 0 to lboxClienteSel.Count - 1 do
        begin
          if xCondCliente <> '' then
            begin
              xCondCliente :=
              xCondCliente + ',' +''''+trim(copy(lboxClienteSel.Items[i],1,6))+'''';
              opcoesCliente :=
              opcoesCliente + '                 '+lboxClienteSel.Items[i] + #13+#10;
            end;
          if xCondCliente = '' then
            begin
              xCondCliente :=
              xCondCliente +''''+trim(copy(lboxClienteSel.Items[i],1,6))+'''';
              opcoesCliente :=
              opcoesCliente + lboxClienteSel.Items[i] + #13+#10;
            end;
        end;
    end
  else
    begin
      opcoesCliente := 'Todos';
    end;


  // Opções --------------------------------------------------------------------
  xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;

  if (deInicial.Text <> '  /  /    ') and (deFinal.Text <> '  /  /    ') then
    xOpcoes := xOpcoes + 'Período........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;

  if txtEquipamento.Text <>'' then
    xOpcoes := xOpcoes + 'Equipamento....: ' + txtEquipamento.Text+' - '+txtEquipamentoDescricao.Caption+ #13+#10;

  if txtObra.Text <>'' then
    xOpcoes := xOpcoes + 'Obra...........: ' + txtObra.Text+' - '+txtObraDescricao.Caption+ #13+#10;

    xOpcoes := xOpcoes + 'Operador.......: ' + opcoesOperador;
    xOpcoes := xOpcoes + 'Cliente........: ' + opcoesCliente +  #13+#10;
end;

function TCTC_FM_R_BDE.TestarCampos: Boolean;
begin
  result := True;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido.');
      result := False;
    end;
end;

procedure TCTC_FM_R_BDE.txtEquipamentoButtonClick(Sender: TObject);
begin
  inherited;
   PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
   PSQ_FM_X_MEQ.ShowModal;
      if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
         begin
           txtEquipamento.Text             := PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('ID_MEQ').AsString;
           txtEquipamentoDescricao.Caption := PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_MEQ.Free;
end;

procedure TCTC_FM_R_BDE.txtEquipamentoExit(Sender: TObject);
begin
  inherited;
  txtEquipamentoDescricao.Caption := '';

  dmGeral.BUS_CD_C_MEQ.Close;
  dmGeral.BUS_CD_C_MEQ.Data :=
  dmGeral.BUS_CD_C_MEQ.DataRequest(VarArrayOf([0, txtEquipamento.Text]));

  if not dmGeral.BUS_CD_C_MEQ.IsEmpty then
    begin
      txtEquipamento.Text := dmGeral.BUS_CD_C_MEQ.FieldByName('ID_MEQ').AsString;
      txtEquipamentoDescricao.Caption := dmGeral.BUS_CD_C_MEQ.FieldByName('DESCRICAO').AsString;
    end;
end;

procedure TCTC_FM_R_BDE.txtObraButtonClick(Sender: TObject);
begin
   inherited;
   PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
   PSQ_FM_X_OBR.ShowModal;
      if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
         begin
           txtObra.Text             := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsString;
           txtObraDescricao.Caption := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('DESCRICAO').AsString;
         end;
   PSQ_FM_X_OBR.Free;
end;

procedure TCTC_FM_R_BDE.txtObraExit(Sender: TObject);
begin
  inherited;
  txtObraDescricao.Caption := '';

  dmCtc.BUS_CD_C_OBR.Close;
  dmCtc.BUS_CD_C_OBR.Data :=
  dmCtc.BUS_CD_C_OBR.DataRequest(VarArrayOf([0, txtObra.Text,'True']));
  if not dmCtc.BUS_CD_C_OBR.IsEmpty then
    begin
      txtObra.Text             := dmCtc.BUS_CD_C_OBR.FieldByName('ID_OBRA').AsString;
      txtObraDescricao.Caption := dmCtc.BUS_CD_C_OBR.FieldByName('DESCRICAO').AsString;
    end;
end;

end.
