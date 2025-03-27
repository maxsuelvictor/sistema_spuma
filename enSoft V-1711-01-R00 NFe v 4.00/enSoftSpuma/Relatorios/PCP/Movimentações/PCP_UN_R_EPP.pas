unit PCP_UN_R_EPP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, frxClass, frxDBSet, Data.DB, Datasnap.DBClient,
  frxExportPDF, frxExportXLS, Vcl.Menus, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.DBGrids;

type
  TPCP_FM_R_EPP = class(TPAD_FM_X_REL)
    PageControl1: TPageControl;
    tsEmpresa: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    tsAlmoxarifado: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    lboxAlmDisp: TListBox;
    lboxAlmSel: TListBox;
    tsGrupo: TTabSheet;
    tsResponsavel: TTabSheet;
    Label12: TLabel;
    lboxRespSel: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    deInicial: TJvDateEdit;
    pmSelGrupoItem: TPopupMenu;
    MenuItemGruposItens: TMenuItem;
    pmExcluirAlm: TPopupMenu;
    btnExcluirAlm: TMenuItem;
    pmExcluirEmp: TPopupMenu;
    btnExcluirEmp: TMenuItem;
    pmRemoverTodosGrupos: TPopupMenu;
    btnRemoverTodosGrupos: TMenuItem;
    pmExcluirTme: TPopupMenu;
    btnExcluirTme: TMenuItem;
    pmExcluirResp: TPopupMenu;
    btnExcluirResp: TMenuItem;
    pmSelAlm: TPopupMenu;
    btnSelAlm: TMenuItem;
    pmSelEmp: TPopupMenu;
    btnSelEmp: TMenuItem;
    pmSelTme: TPopupMenu;
    btnSelTme: TMenuItem;
    EST_XL_R_MOV: TfrxXLSExport;
    EST_PD_R_MOV: TfrxPDFExport;
    PCP_CD_R_EPP: TClientDataSet;
    PCP_DB_R_EPP: TfrxDBDataset;
    pmExcluirGru: TPopupMenu;
    Retirarregistro1: TMenuItem;
    lboxGru: TListBox;
    Label5: TLabel;
    PCP_DB_R_EPP_GRU: TfrxDBDataset;
    PCP_CD_R_EPP_GRU: TClientDataSet;
    PCP_FR_R_EPP_GRU: TfrxReport;
    PCP_CD_R_EPPid_empresa: TIntegerField;
    PCP_CD_R_EPPemp_fantasia: TWideStringField;
    PCP_CD_R_EPPid_almoxarifado: TIntegerField;
    PCP_CD_R_EPPint_nomealm: TWideStringField;
    PCP_CD_R_EPPdta_entrada: TDateField;
    PCP_CD_R_EPPid_item: TIntegerField;
    PCP_CD_R_EPPint_nomeite: TWideMemoField;
    PCP_CD_R_EPPid_und_venda: TWideStringField;
    PCP_CD_R_EPPid_cor: TIntegerField;
    PCP_CD_R_EPPint_nomecor: TWideStringField;
    PCP_CD_R_EPPid_tamanho: TIntegerField;
    PCP_CD_R_EPPint_nometam: TWideStringField;
    PCP_CD_R_EPPqtde: TFloatField;
    PCP_CD_R_EPPtotal_metro: TFloatField;
    PCP_FR_R_EPP: TfrxReport;
    cbTipoEntrada: TComboBox;
    Label6: TLabel;
    PCP_CD_R_EPPtipo_entrada: TIntegerField;
    PCP_FR_R_EPP_FUN: TfrxReport;
    PCP_DB_R_EPP_FUN: TfrxDBDataset;
    PCP_CD_R_EPP_FUN: TClientDataSet;
    PCP_CD_R_EPP_FUNid_empresa: TIntegerField;
    PCP_CD_R_EPP_FUNemp_fantasia: TWideStringField;
    PCP_CD_R_EPP_FUNid_almoxarifado: TIntegerField;
    PCP_CD_R_EPP_FUNint_nomealm: TWideStringField;
    PCP_CD_R_EPP_FUNid_func_colchoaria: TIntegerField;
    PCP_CD_R_EPP_FUNint_nomefun: TWideStringField;
    PCP_CD_R_EPP_FUNqtde: TFloatField;
    PCP_DB_R_EPP_FUN_DET: TfrxDBDataset;
    PCP_CD_R_EPP_FUN_DET: TClientDataSet;
    PCP_CD_R_EPP_FUNid_grupo: TWideStringField;
    PCP_CD_R_EPP_FUNdescricao: TWideStringField;
    PCP_CD_R_EPP_FUN_DETid_empresa: TIntegerField;
    PCP_CD_R_EPP_FUN_DETemp_fantasia: TWideStringField;
    PCP_CD_R_EPP_FUN_DETid_almoxarifado: TIntegerField;
    PCP_CD_R_EPP_FUN_DETint_nomealm: TWideStringField;
    PCP_CD_R_EPP_FUN_DETid_func_colchoaria: TIntegerField;
    PCP_CD_R_EPP_FUN_DETint_nomefun: TWideStringField;
    PCP_CD_R_EPP_FUN_DETid_grupo: TWideStringField;
    PCP_CD_R_EPP_FUN_DETdescricao: TWideStringField;
    PCP_CD_R_EPP_FUN_DETid_item: TIntegerField;
    PCP_CD_R_EPP_FUN_DETint_nomeite: TWideStringField;
    PCP_CD_R_EPP_FUN_DETqtde: TFloatField;
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lboxAlmDispDblClick(Sender: TObject);
    procedure lboxAlmSelDblClick(Sender: TObject);
    procedure lboxRespSelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcluirAlmClick(Sender: TObject);
    procedure btnExcluirEmpClick(Sender: TObject);
    procedure btnExcluirRespClick(Sender: TObject);
    procedure btnSelAlmClick(Sender: TObject);
    procedure btnSelEmpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Retirarregistro1Click(Sender: TObject);
    procedure lboxGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function VerificarCampos:Boolean;
    var
      xCondEmp,xCondAlmoxarifado,xCondTipoEstoque,xCondResp,
      xOpcoes,xCondGru:string;
  public
    { Public declarations }
  end;

var
  PCP_FM_R_EPP: TPCP_FM_R_EPP;

implementation

{$R *.dfm}

uses PSQ_UN_X_FUN, uDmGeral,enFunc,enConstantes, PSQ_UN_X_GRU;

procedure TPCP_FM_R_EPP.btnExcluirAlmClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxAlmSel.ClearSelection;

  if lboxAlmSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxAlmSel.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmSel.Items.Count - 1 do
           begin
             lboxAlmDisp.Items.Add(lboxAlmSel.Items[i]);
             lboxAlmSel.Items.Delete(lboxAlmSel.ItemIndex);
           end;
       lboxAlmSel.Items.Clear;
     end;
end;

procedure TPCP_FM_R_EPP.btnExcluirEmpClick(Sender: TObject);
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

procedure TPCP_FM_R_EPP.btnExcluirRespClick(Sender: TObject);
begin
  inherited;
  if lboxRespSel.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       Exit;
     end;

  lboxRespSel.DeleteSelected;
end;

procedure TPCP_FM_R_EPP.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if VerificarCampos then
    begin
      ExibirRel;
    end;
end;

procedure TPCP_FM_R_EPP.btnSelAlmClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxAlmDisp.ClearSelection;

  if lboxAlmDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
     end;

  if lboxAlmDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxAlmDisp.Items.Count - 1 do
           begin
             lboxAlmSel.Items.Add(lboxAlmDisp.Items[i]);
             lboxAlmDisp.Items.Delete(lboxAlmDisp.ItemIndex);
           end;
       lboxAlmDisp.Items.Clear;
     end;
end;

procedure TPCP_FM_R_EPP.btnSelEmpClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxEmpDisp.ClearSelection;

  if lboxEmpDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       Exit;
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

procedure TPCP_FM_R_EPP.ExibirRel;
var
  rImprimirCodigo, rDtaIni, rDtaFin, rTipoEntrada, PathImg: String;
  LogoEmpresa: TfrxPictureView;
begin

  if lbxRelatorios.ItemIndex = -1 then
   begin
     Showmessage('Nenhum relatório foi selecionado.');
     exit;
   end;

     // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   rTipoEntrada := copy(cbTipoEntrada.Text,1,1);

   PreencherCondicao;

   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '0 - Entrada de Produto Acabado' then
      begin
         PCP_CD_R_EPP.Close;
         PCP_CD_R_EPP.Data :=
             PCP_CD_R_EPP.DataRequest(
                          VarArrayOf([lbxRelatorios.ItemIndex, rDtaIni, rDtaFin,xCondEmp,
                          xCondAlmoxarifado, xCondResp,
                          xCondGru,rTipoEntrada]));


         if not PCP_CD_R_EPP.IsEmpty then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

              if FileExists(PathImg) then
                 begin
                    LogoEmpresa := TfrxPictureView(PCP_FR_R_EPP.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;
              dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_EPP.Name,xCodLme,xRevLme,nil);

              {if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
                 PCP_FR_R_EPP.Variables['ativa_cor'] := true
               else
                 PCP_FR_R_EPP.Variables['ativa_cor'] := false;

               if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
                 PCP_FR_R_EPP.Variables['ativa_tamanho'] := true
               else
                 PCP_FR_R_EPP.Variables['ativa_tamanho'] := false;  }

              if rTipoEntrada = '0' then
                 PCP_FR_R_EPP.Variables['ft_titulo_relatorio'] := QuotedStr('Entrada de Produto Acabado');
              if rTipoEntrada = '1' then
                 PCP_FR_R_EPP.Variables['ft_titulo_relatorio'] := QuotedStr('Contagem de Produto Acabado');

              PCP_FR_R_EPP.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
              PCP_FR_R_EPP.Variables['ft_codlme1'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              PCP_FR_R_EPP.Variables['Opcoes1'] := QuotedStr(xOpcoes);
              PCP_FR_R_EPP.Variables['ft_periodo'] := QuotedStr(deInicial.Text + ' à ' + deFinal.Text);
              PCP_FR_R_EPP.PrepareReport();
              PCP_FR_R_EPP.ShowReport();

            end
          else
            begin
               ShowMessage('Nenhum registro foi encontrado.');
            end;
      end;


   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '1 - Entrada de Produto Acabado por Grupo' then
      begin
         PCP_CD_R_EPP_GRU.Close;
         PCP_CD_R_EPP_GRU.Data :=
             PCP_CD_R_EPP_GRU.DataRequest(
                          VarArrayOf([lbxRelatorios.ItemIndex, rDtaIni, rDtaFin,xCondEmp,
                          xCondAlmoxarifado, xCondResp,
                          xCondGru,rTipoEntrada]));


         if not PCP_CD_R_EPP_GRU.IsEmpty then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

              if FileExists(PathImg) then
                 begin
                    LogoEmpresa := TfrxPictureView(PCP_FR_R_EPP_GRU.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;
              dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_EPP_GRU.Name,xCodLme,xRevLme,nil);

              if rTipoEntrada = '0' then
                 PCP_FR_R_EPP_GRU.Variables['ft_titulo_relatorio'] := QuotedStr('Entrada de Produto Acabado por Grupo');
              if rTipoEntrada = '1' then
                 PCP_FR_R_EPP_GRU.Variables['ft_titulo_relatorio'] := QuotedStr('Contagem de Produto Acabado por Grupo');


              PCP_FR_R_EPP_GRU.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
              PCP_FR_R_EPP_GRU.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              PCP_FR_R_EPP_GRU.Variables['Opcoes'] := QuotedStr(xOpcoes);
              PCP_FR_R_EPP_GRU.Variables['ft_periodo'] := QuotedStr(deInicial.Text + ' à ' + deFinal.Text);
              PCP_FR_R_EPP_GRU.PrepareReport();
              PCP_FR_R_EPP_GRU.ShowReport();

            end
          else
            begin
               ShowMessage('Nenhum registro foi encontrado.');
            end;
      end;


   if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '2 - Entrada de Produto Acabado por Costureiro' then
      begin
         PCP_CD_R_EPP_FUN.Close;
         PCP_CD_R_EPP_FUN.Data :=
             PCP_CD_R_EPP_FUN.DataRequest(
                          VarArrayOf([lbxRelatorios.ItemIndex, rDtaIni, rDtaFin,xCondEmp,
                          xCondAlmoxarifado, xCondResp,
                          xCondGru,rTipoEntrada]));

         PCP_CD_R_EPP_FUN_DET.Close;
         PCP_CD_R_EPP_FUN_DET.Data :=
             PCP_CD_R_EPP_FUN_DET.DataRequest(
                          VarArrayOf([lbxRelatorios.ItemIndex, rDtaIni, rDtaFin,xCondEmp,
                          xCondAlmoxarifado, xCondResp,
                          xCondGru,rTipoEntrada]));


         if not PCP_CD_R_EPP_FUN.IsEmpty then
            begin
              PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

              if FileExists(PathImg) then
                 begin
                    LogoEmpresa := TfrxPictureView(PCP_FR_R_EPP_FUN.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;
              dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_EPP_FUN.Name,xCodLme,xRevLme,nil);


              PCP_FR_R_EPP_FUN.Variables['Assin_enorth'] := QuotedStr(enConstantes.CAssin_Enorth);
              PCP_FR_R_EPP_FUN.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              PCP_FR_R_EPP_FUN.Variables['Opcoes'] := QuotedStr(xOpcoes);
              PCP_FR_R_EPP_FUN.Variables['ft_periodo'] := QuotedStr(deInicial.Text + ' à ' + deFinal.Text);
              PCP_FR_R_EPP_FUN.PrepareReport();
              PCP_FR_R_EPP_FUN.ShowReport();

            end
          else
            begin
               ShowMessage('Nenhum registro foi encontrado.');
            end;
      end;


end;

procedure TPCP_FM_R_EPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_R_EPP);
end;

procedure TPCP_FM_R_EPP.FormShow(Sender: TObject);
begin
  inherited;

   if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     tsAlmoxarifado.TabVisible := true
   else
     tsAlmoxarifado.TabVisible := false;

   PCP_FR_R_EPP.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);


   // Empresa -------------------------------------------------------------
    dmGeral.BUS_CD_C_PAR.Close;
    dmGeral.BUS_CD_C_PAR.Data :=
    dmGeral.BUS_CD_C_PAR.DataRequest(
           VarArrayOf([1, '%']));

    if not dmGeral.BUS_CD_C_PAR.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PAR.First;

       while not dmGeral.BUS_CD_C_PAR.eof do
          begin
            lboxEmpDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;

     dmGeral.BUS_CD_C_ALM.Close;



   // Almoxarifados -------------------------------------------------------------
  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
    begin
    dmGeral.BUS_CD_C_ALM.Close;
    dmGeral.BUS_CD_C_ALM.Data :=
    dmGeral.BUS_CD_C_ALM.DataRequest(
           VarArrayOf([1, '%']));

    if not dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ALM.First;

       while not dmGeral.BUS_CD_C_ALM.eof do
          begin
            lboxAlmDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_ALM.Next;
          end;
     end;

     dmGeral.BUS_CD_C_ALM.Close;
  end;


end;

procedure TPCP_FM_R_EPP.lboxAlmDispDblClick(Sender: TObject);
begin
  inherited;
 if lboxAlmDisp.ItemIndex > - 1 then
     begin
       lboxAlmSel.Items.Add(lboxAlmDisp.Items[lboxAlmDisp.ItemIndex]);
       lboxAlmDisp.Items.Delete(lboxAlmDisp.ItemIndex);
     end;
end;

procedure TPCP_FM_R_EPP.lboxAlmSelDblClick(Sender: TObject);
begin
  inherited;
 if lboxAlmSel.ItemIndex > -1 then
     begin
       lboxAlmDisp.Items.Add(lboxAlmSel.Items[lboxAlmSel.ItemIndex]);
       lboxAlmSel.Items.Delete(lboxAlmSel.ItemIndex);
     end;
end;

procedure TPCP_FM_R_EPP.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TPCP_FM_R_EPP.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
 if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TPCP_FM_R_EPP.lboxGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_GRU := TPSQ_FM_X_GRU.Create(Self);
        PSQ_FM_X_GRU.ShowModal;
        if not PSQ_FM_X_GRU.BUS_CD_C_GRU.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxGru,8,PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString) then
                begin
                  lboxGru.Items.Add(trim(PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('ID_GRUPO').AsString) +
                                 ' - ' + PSQ_FM_X_GRU.BUS_CD_C_GRU.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_GRU.Free;
     end;
end;

procedure TPCP_FM_R_EPP.lboxRespSelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key = vk_f3 then
     begin
        PSQ_FM_X_FUN := TPSQ_FM_X_FUN.Create(Self);
        PSQ_FM_X_FUN.ShowModal;
        if not PSQ_FM_X_FUN.BUS_CD_C_FUN.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxRespSel,6,StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0)) then
                begin
                  lboxRespSel.Items.Add(StrZero(PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger,6,0) +
                                             ' - ' + PSQ_FM_X_FUN.BUS_CD_C_FUN.FieldByName('NOME').AsString);
                end;
           end;
         PSQ_FM_X_FUN.Free;
     end;
end;

procedure TPCP_FM_R_EPP.PreencherCondicao;
var
  i: integer;
  opcoesEmp,opcoesAlmoxarifado,opcoesTipoEstoque,opcoesSetor,opcoesResp,opcoesCusto,
  opcoesEquip,opcoesCentroCusto,opcoesGrupo:string;
begin

   opcoesAlmoxarifado := 'O sistema está configurado para não utilização por almoxarifado.';


   // Empresa ----------------------------------------------------------
  xCondEmp := '';
  if lboxEmpSel.Count > 0 then
     begin
       if lboxEmpSel.Count > 0 then
         begin
          for i := 0 to lboxEmpSel.Count - 1 do
           begin
            if xCondEmp <> '' then
               begin
                 xCondEmp :=
                 xCondEmp + ',' +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmp :=
                 opcoesEmp +'                    '+lboxEmpSel.Items[i] + #13+#10;
               end;
            if xCondEmp = '' then
               begin
                 xCondEmp :=
                 xCondEmp +''''+trim(copy(lboxEmpSel.Items[i],1,3))+'''';
                 opcoesEmp :=
                 opcoesEmp + lboxEmpSel.Items[i] + #13+#10;
               end;
           end;
         end
       else
        begin
         opcoesEmp := 'Todos';
        end;
    end
  else
    begin
      opcoesEmp := 'Todos';
    end;




  // Almoxarifados -------------------------------------------------------------

  xCondAlmoxarifado := '''0''';

  if dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean then
     begin
       xCondAlmoxarifado := '';
       opcoesAlmoxarifado := '';
       if lboxAlmSel.Count > 0 then
         begin
          if lboxAlmDisp.Count > 0 then
            begin
             for i := 0 to lboxAlmSel.Count - 1 do
              begin
                if xCondAlmoxarifado <> '' then
                   begin
                     xCondAlmoxarifado :=
                     xCondAlmoxarifado + ',' +''''+trim(copy(lboxAlmSel.Items[i],1,3))+'''';
                     opcoesAlmoxarifado :=
                     opcoesAlmoxarifado +'                    '+lboxAlmSel.Items[i] + #13+#10;
                   end;
                if xCondAlmoxarifado = '' then
                   begin
                     xCondAlmoxarifado :=
                     xCondAlmoxarifado +''''+trim(copy(lboxAlmSel.Items[i],1,3))+'''';
                     opcoesAlmoxarifado :=
                     opcoesAlmoxarifado +lboxAlmSel.Items[i] + #13+#10;
                   end;
              end;
         end
         else
          begin
             opcoesAlmoxarifado := 'Todos';
          end;
         end
       else
       begin
          opcoesAlmoxarifado := 'Todos';
       end;
    end;




   // Grupos de Estoque ---------------------------------------------------------
  xCondGru := '';
  if lboxGru.Count > 0 then
     begin
       for i := 0 to lboxGru.Count - 1 do
          begin
            if xCondGru <> '' then
               begin
                 xCondGru :=
                 xCondGru + ',' +trim(copy(lboxGru.Items[i],1,pos(' - ',lboxGru.Items[i])-1));
                 opcoesGrupo :=
                 opcoesGrupo +'                             '+lboxGru.Items[i] + #13+#10;
               end;
            if xCondGru = '' then
               begin
                 xCondGru :=
                 xCondGru +trim(copy(lboxGru.Items[i],1,pos(' - ',lboxGru.Items[i])-1));
                 opcoesGrupo :=
                 opcoesGrupo + lboxGru.Items[i] + #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesGrupo := 'Todos';
    end;

   // Responsavel ---------------------------------------------------------
  xCondResp := '';
  if lboxRespSel.Count > 0 then
     begin
       for i := 0 to lboxRespSel.Count - 1 do
          begin
            if xCondResp <> '' then
               begin
                 xCondResp :=
                 xCondResp + ',' +''''+trim(copy(lboxRespSel.Items[i],1,6))+'''';
                 opcoesResp :=
                 opcoesResp  +'                    '+lboxRespSel.Items[i] + #13+#10;
               end;
            if xCondResp = '' then
               begin
                 xCondResp :=
                 xCondResp +''''+trim(copy(lboxRespSel.Items[i],1,6))+'''';
                 opcoesResp :=
                 opcoesResp +lboxRespSel.Items[i] + #13+#10;
               end;
          end;
     end
   else
     begin
        opcoesResp :=  'Todos';
     end;



  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;

   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmp + #13+#10;
   xOpcoes := xOpcoes + 'Almoxarifado......: ' + opcoesAlmoxarifado + #13+#10;
   xOpcoes := xOpcoes + 'Grupo ............: ' + opcoesGrupo+#13+#10;
   xOpcoes := xOpcoes + 'Responsável.......: ' + opcoesResp +#13+#10;
end;

procedure TPCP_FM_R_EPP.Retirarregistro1Click(Sender: TObject);
begin
  inherited;
 if lboxGru.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxGru.DeleteSelected;
end;

function TPCP_FM_R_EPP.VerificarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
     begin
       mens := mens +  '.O período deve ser preenchido.' + #13;
     end
  else
    if (deInicial.Date >  deFinal.Date) then
     begin
       mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
     end;

  if lboxEmpSel.Count = 0 then
     mens := mens +  '.É necessário selecionar pelo menos 1 empresa' + #13;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;
end;

end.
