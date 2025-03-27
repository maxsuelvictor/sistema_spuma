unit OFI_UN_R_POS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, JvToolEdit, Vcl.Mask,
  JvExMask, Vcl.ComCtrls, Vcl.Menus,frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart,
  frxChart, Data.DB, Datasnap.DBClient;

type
  TOFI_FM_R_POS = class(TPAD_FM_X_REL)
    txtDataIni: TJvDateEdit;
    txtDataFinal: TJvDateEdit;
    lblPeriodo: TLabel;
    lblA: TLabel;
    lblSituacao: TLabel;
    cbbSituacao: TComboBox;
    pcFiltro: TPageControl;
    tsEmpresa: TTabSheet;
    tsCliente: TTabSheet;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    lboxCliente: TListBox;
    lblEmpDis: TLabel;
    lblEmpSel: TLabel;
    lblClientesDisponiveis: TLabel;
    pmExcluirTodasEmp: TPopupMenu;
    pmSelTodasEmp: TPopupMenu;
    btnSelTodasEmp: TMenuItem;
    btnExcluirTodasEmp: TMenuItem;
    pmExluirCliente: TPopupMenu;
    btnExluirCliente: TMenuItem;
    OFI_FR_R_POS: TfrxReport;
    OFI_XL_R_POS: TfrxXLSExport;
    OFI_PD_R_POS: TfrxPDFExport;
    OFI_DB_R_POS: TfrxDBDataset;
    OFI_CT_R_POS: TfrxChartObject;
    OFI_DB_R_POS_STA: TfrxDBDataset;
    OFI_FR_R_POS_OSP: TfrxReport;
    OFI_DB_R_POS_OSP: TfrxDBDataset;
    OFI_CD_R_POS: TClientDataSet;
    OFI_CD_R_POS_STA: TClientDataSet;
    OFI_CD_R_POS_OSP: TClientDataSet;
    procedure btnSelTodasEmpClick(Sender: TObject);
    procedure btnExcluirTodasEmpClick(Sender: TObject);
    procedure btnExluirClienteClick(Sender: TObject);
    procedure lboxClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
  private
    { Private declarations }
      procedure ExibirRel;
     function TestarCampos: Boolean;
      procedure PreencherCondicao;
     var
       xCondEmpresa,xCondCliente,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  OFI_FM_R_POS: TOFI_FM_R_POS;

implementation

{$R *.dfm}

uses PSQ_UN_X_CLI, uDmGeral, enFunc, enConstantes;

procedure TOFI_FM_R_POS.btnExcluirTodasEmpClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpSel.ClearSelection;

  if lboxEmpSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpSel.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpSel.Items.Count - 1 do
           begin
             lboxEmpDisp.Items.Add(lboxEmpSel.Items[i]);
             lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
           end;
       lboxEmpSel.Items.Clear;
     end;
end;

procedure TOFI_FM_R_POS.btnExluirClienteClick(Sender: TObject);
begin
  inherited;
   if lboxCliente.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxCliente.DeleteSelected;
end;


function TOFI_FM_R_POS.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if (lbxRelatorios.ItemIndex = 0) then
    begin
     if ((txtDataIni.Text = '  /  /    ') or (txtDataFinal.Text = '  /  /    ')) then
       begin
         mens := mens +  '.O período deve ser preenchido.' + #13;
       end
     else
       begin
        if (txtDataIni.Date >  txtDataFinal.Date) then
          begin
            mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
          end;
       end;
    end;
  if lboxEmpSel.Count = 0 then
    begin
      mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
    end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
    end;
end;

procedure TOFI_FM_R_POS.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TOFI_FM_R_POS.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesCliente:string;
begin

  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpSel.Count > 0 then
     begin
       for i := 0 to lboxEmpSel.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                    '+lboxEmpSel.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpSel.Items[i] + #13+#10;
               end;
          end;
     end;

  // Cliente --------------------------------------------------------------
  xCondCliente := '';
  if (lbxRelatorios.ItemIndex = 0) then
    begin
      if lboxCliente.Count > 0 then
        begin
          for i := 0 to lboxCliente.Count - 1 do
            begin
             if xCondCliente <> '' then
               begin
                 xCondCliente :=
                 xCondCliente+ ',' +''''+trim(copy(lboxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente +'                    '+lboxCliente.Items[i] + #13+#10;
               end;
             if xCondCliente = '' then
               begin
                 xCondCliente :=
                 xCondCliente +''''+trim(copy(lboxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente + lboxCliente.Items[i] + #13+#10;
               end;
            end;
        end
      else
        begin
          opcoesCliente := 'Todos';
        end;
    end;
  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;

   if (lbxRelatorios.ItemIndex = 0) then
     begin
       xOpcoes := xOpcoes + 'Período...........: ' + txtDataIni.Text + ' à ' + txtDataFinal.Text + #13+#10;
       xOpcoes := xOpcoes + 'Situação..........: ' + cbbSituacao.Text + #13+#10;
     end;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   if (lbxRelatorios.ItemIndex = 0) then
     begin
       xOpcoes := xOpcoes + 'Cliente...........: ' + opcoesCliente+#13+#10;
     end;
end;

procedure  TOFI_FM_R_POS.ExibirRel;
var
  rDtaIni, rDtaFin,rSituacao,PathImg: String;
  LogoEmpresa: TfrxPictureView;
  ImprimirGrafico:string;
begin
  ImprimirGrafico := 'False';
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   // Período
   rDtaIni := txtDataIni.Text;
   rDtaFin := txtDataFinal.Text;
   rSituacao := '';
   if (cbbSituacao.ItemIndex <> 3) then
     begin
       rSituacao := cbbSituacao.ItemIndex.ToString(cbbSituacao.ItemIndex);
     end;

   PreencherCondicao;

    if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Pós-Venda') then
      begin
          OFI_CD_R_POS.Active:= False;
               OFI_CD_R_POS.Close;
               OFI_CD_R_POS.Data :=
               OFI_CD_R_POS.DataRequest(
                      VarArrayOf([rDtaIni, rDtaFin, xCondEmpresa, xCondCliente,rSituacao]));

          if (not OFI_CD_R_POS.IsEmpty) then
            begin
                 OFI_CD_R_POS_STA.Close;

                if (cbbSituacao.ItemIndex = 3) then
                  begin
                     OFI_CD_R_POS_STA.Data :=
                     OFI_CD_R_POS_STA.DataRequest(
                                              VarArrayOf([rDtaIni, rDtaFin, xCondEmpresa, xCondCliente]));
                      ImprimirGrafico := 'True';
                  end;

                if (cbbSituacao.ItemIndex <> 3) then
                  begin
                    OFI_CD_R_POS_STA.Open;
                    OFI_CD_R_POS_STA.EmptyDataSet;
                  end;

                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(OFI_FR_R_POS.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;


                dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_POS.Name,xCodLme,xRevLme,nil);
                OFI_FR_R_POS.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                 OFI_FR_R_POS.Variables['ft_imprimirGrafico'] := QuotedStr(ImprimirGrafico);
                OFI_FR_R_POS.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                OFI_FR_R_POS.Variables['Opcoes'] := QuotedStr(xOpcoes);
                OFI_FR_R_POS.PrepareReport();
                OFI_FR_R_POS.ShowReport();
            end
          else
            begin
                ShowMessage('Nenhum registro foi encontrado.');
            end;
      end;


    if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Ordem de Serviço Pendente') then
      begin
          OFI_CD_R_POS_OSP.Active:= False;
               OFI_CD_R_POS_OSP.Close;
               OFI_CD_R_POS_OSP.Data :=
               OFI_CD_R_POS_OSP.DataRequest(
                      VarArrayOf([xCondEmpresa]));

          if (not OFI_CD_R_POS_OSP.IsEmpty) then
            begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(OFI_FR_R_POS_OSP.FindObject('imgEmpresa2'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;

                dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_POS_OSP.Name,xCodLme,xRevLme,nil);
                OFI_FR_R_POS_OSP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                OFI_FR_R_POS_OSP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                OFI_FR_R_POS_OSP.Variables['Opcoes'] := QuotedStr(xOpcoes);
                OFI_FR_R_POS_OSP.PrepareReport();
                OFI_FR_R_POS_OSP.ShowReport();
            end
          else
            begin
                ShowMessage('Nenhum registro foi encontrado.');
            end;

      end;
end;

procedure TOFI_FM_R_POS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_R_POS);
end;

procedure TOFI_FM_R_POS.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;

  // Empresas ------------------------------------------------------------------
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;

       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;
end;

procedure TOFI_FM_R_POS.btnSelTodasEmpClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpDisp.ClearSelection;

  if lboxEmpDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpDisp.Items.Count - 1 do
           begin
             lboxEmpSel.Items.Add(lboxEmpDisp.Items[i]);
             lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
           end;
       lboxEmpDisp.Items.Clear;
     end;
end;

procedure TOFI_FM_R_POS.lboxClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
        PSQ_FM_X_CLI.ShowModal;
        if not PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxCliente,6,StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0)) then
                begin
                  lboxCliente.Items.Add(StrZero( PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsFloat,6,0) +
                                             ' - ' +  PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_CLI.Free;
     end;
end;



procedure TOFI_FM_R_POS.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TOFI_FM_R_POS.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TOFI_FM_R_POS.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Pós-Venda') then
     begin
       lblPeriodo.Visible := true;
       lblA.Visible := true;
       txtDataIni.Visible := true;
       txtDataFinal.Visible := true;
       tsCliente.TabVisible := true;
       cbbSituacao.Visible := true;
       lblSituacao.Visible := true;
     end;
  if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Ordem de Serviço Pendente') then
     begin
       lblPeriodo.Visible := false;
       lblA.Visible := false;
       txtDataIni.Visible := false;
       txtDataFinal.Visible := false;
       tsCliente.TabVisible := false;
       cbbSituacao.Visible := false;
       lblSituacao.Visible := false;
     end;

end;

end.
