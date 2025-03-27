unit PCP_UN_R_CRP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ComCtrls, frxClass,
  frxDBSet, frxExportPDF, frxExportXLS, Vcl.ImgList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.ExtCtrls, vcl.wwdblook, Vcl.Mask, JvExMask,
  JvToolEdit,enFunc, Vcl.Menus, Data.DB, Datasnap.DBClient;

type
  TPCP_FM_R_CRP = class(TPAD_FM_X_REL)
    PCP_FR_R_CRP_GER: TfrxReport;
    PCP_XL_R_CRP: TfrxXLSExport;
    PCP_PD_R_CRP: TfrxPDFExport;
    PCP_DB_R_CRP_ITE: TfrxDBDataset;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    tsRecipiente: TTabSheet;
    tsItens: TTabSheet;
    lboxEmpDisp: TListBox;
    lboxEmpSel: TListBox;
    lblEmpresasDisp: TLabel;
    lblEmpresasSel: TLabel;
    lboxItens: TListBox;
    Label1: TLabel;
    lboxRecDisp: TListBox;
    lboxRecSel: TListBox;
    lblRecDisp: TLabel;
    lblRecSel: TLabel;
    deInicial: TJvDateEdit;
    deFinal: TJvDateEdit;
    lblPeriodo: TLabel;
    até: TLabel;
    lblAlmoxarifado: TLabel;
    cbbAlmoxarifado: TComboBox;
    lblExibirSaldo: TLabel;
    ckbExibirSaldo: TCheckBox;
    PCP_FR_R_CRP_ITE: TfrxReport;
    pmSelEmp: TPopupMenu;
    MenuItemEmpresas: TMenuItem;
    pmSelRecipiente: TPopupMenu;
    MenuItemRecipiente: TMenuItem;
    pmExcluirItem: TPopupMenu;
    MenuItemRemoverTodosRegistro: TMenuItem;
    pmRemoverEmp: TPopupMenu;
    btnRemoverTodasEmp: TMenuItem;
    pmRemoverRecipente: TPopupMenu;
    btnRemoverRecipiente: TMenuItem;
    PCP_DB_R_CRP_ITE_BXI: TfrxDBDataset;
    PCP_FR_R_CRP_BXI_ITE: TfrxReport;
    PCP_FR_R_CRP_BXI_RPT: TfrxReport;
    PCP_CD_R_CRP_ITE: TClientDataSet;
    PCP_CD_R_CRP_ITE_BXI: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure lboxItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure MenuItemEmpresasClick(Sender: TObject);
    procedure MenuItemRecipienteClick(Sender: TObject);
    procedure MenuItemRemoverTodosRegistroClick(Sender: TObject);
    procedure btnRemoverTodasEmpClick(Sender: TObject);
    procedure btnRemoverRecipienteClick(Sender: TObject);
    procedure lboxEmpDispDblClick(Sender: TObject);
    procedure lboxEmpSelDblClick(Sender: TObject);
    procedure lboxRecDispDblClick(Sender: TObject);
    procedure lboxRecSelDblClick(Sender: TObject);
    procedure lboxItensDblClick(Sender: TObject);
  private
    { Private declarations }
    function TestarCampos:boolean;
    procedure ExibirRel;
    procedure PreencherCondicao;
  public
    { Public declarations }
    xCondEmpresa,xCondRecipientes,xCondItens,xOpcoes:string;
  end;

var
  PCP_FM_R_CRP: TPCP_FM_R_CRP;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE, uDmSgq;

procedure TPCP_FM_R_CRP.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
        ExibirRel;
     end;
end;

procedure TPCP_FM_R_CRP.btnRemoverRecipienteClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxRecDisp.ClearSelection;

  if lboxRecSel.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxRecSel.Items.Count > 0 then
     begin
       for i := 0 to lboxRecSel.Items.Count - 1 do
           begin
             lboxRecDisp.Items.Add(lboxRecSel.Items[i]);
             lboxRecSel.Items.Delete(lboxRecSel.ItemIndex);
           end;
       lboxRecSel.Items.Clear;
     end;

end;

procedure TPCP_FM_R_CRP.btnRemoverTodasEmpClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxEmpDisp.ClearSelection;

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

procedure TPCP_FM_R_CRP.btnSairClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(PCP_FM_R_CRP);
end;

procedure TPCP_FM_R_CRP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   FreeAndNil(PCP_FM_R_CRP);
end;

procedure TPCP_FM_R_CRP.FormShow(Sender: TObject);
begin
  inherited;
  if(dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean = false) then
    begin
      cbbAlmoxarifado.Enabled := false;
      cbbAlmoxarifado.Color := $DADADA;
    end;



  PCP_FR_R_CRP_GER.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  PCP_FR_R_CRP_GER.Variables['ft_usaAlmoxarifado'] := dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean;
  PCP_FR_R_CRP_GER.Variables['ft_usaCor'] := dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean;
  PCP_FR_R_CRP_GER.Variables['ft_usaTamanho'] := dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean;

  PCP_FR_R_CRP_ITE.Variables['ft_TituloCorTam'] :=  QuotedStr(dmGeral.MostrarTitCorTamanho);
  PCP_FR_R_CRP_ITE.Variables['ft_usaAlmoxarifado'] := dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean;
  PCP_FR_R_CRP_ITE.Variables['ft_usaCor'] := dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean;
  PCP_FR_R_CRP_ITE.Variables['ft_usaTamanho'] := dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean;

  PCP_FR_R_CRP_BXI_RPT.Variables['ft_TituloCorTam'] := QuotedStr(dmGeral.MostrarTitCorTamanho);
  PCP_FR_R_CRP_BXI_RPT.Variables['ft_usaAlmoxarifado'] := dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean;
  PCP_FR_R_CRP_BXI_RPT.Variables['ft_usaCor'] := dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean;
  PCP_FR_R_CRP_BXI_RPT.Variables['ft_usaTamanho'] := dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean;

  PCP_FR_R_CRP_BXI_ITE.Variables['ft_usaAlmoxarifado'] := dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean;
  PCP_FR_R_CRP_BXI_ITE.Variables['ft_usaCor'] := dmGeral.CAD_CD_C_PAR_CTRativa_cor.AsBoolean;
  PCP_FR_R_CRP_BXI_ITE.Variables['ft_usaTamanho'] := dmGeral.CAD_CD_C_PAR_CTRativa_tamanho.AsBoolean;

   lbxRelatorios.ItemIndex := 0;


    // Almoxarifado ------------------------------------------------------------------
  dmGeral.BUS_CD_C_ALM.Close;
  dmGeral.BUS_CD_C_ALM.Data :=
  dmGeral.BUS_CD_C_ALM.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_ALM.IsEmpty then
     begin
       dmGeral.BUS_CD_C_ALM.First;

       while not dmGeral.BUS_CD_C_ALM.eof do
          begin
            cbbAlmoxarifado.AddItem(StrZero(dmGeral.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_ALM.FieldByName('DESCRICAO').AsString,
                                    TObject(dmGeral.BUS_CD_C_ALM.FieldByName('ID_ALMOXARIFADO').AsInteger));
            dmGeral.BUS_CD_C_ALM.Next;
          end;
     end;
  dmGeral.BUS_CD_C_ALM.Close;


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

   // Recipientes ------------------------------------------------------------------
  dmSgq.BUS_CD_C_RPT.Close;
  dmSgq.BUS_CD_C_RPT.Data :=
  dmSgq.BUS_CD_C_RPT.DataRequest(
          VarArrayOf([1, '%']));

  if not dmSgq.BUS_CD_C_RPT.IsEmpty then
     begin
       dmSgq.BUS_CD_C_RPT.First;

       while not dmSgq.BUS_CD_C_RPT.eof do
          begin
            lboxRecDisp.Items.Add(StrZero(dmSgq.BUS_CD_C_RPT.FieldByName('ID_RPT').AsFloat,3,0) +
                                    ' - ' + dmSgq.BUS_CD_C_RPT.FieldByName('DESCRICAO').AsString);
            dmSgq.BUS_CD_C_RPT.Next;
          end;
     end;
  dmSgq.BUS_CD_C_RPT.Close;

end;


procedure TPCP_FM_R_CRP.ExibirRel;
var
  rDtaIni, rDtaFin, rExibirSaldoMaiorZero, PathImg: String;
  rAlmoxarifado:string;
  rIndexRelatorio:integer;
  LogoEmpresa: TfrxPictureView;
begin

   rDtaini := deInicial.Text;
   rDtaFin := deFinal.Text;

   rAlmoxarifado := '';
   if(dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean=true) then
     begin
      rAlmoxarifado := trim(copy(cbbAlmoxarifado.text,1,3));
     end;

   rExibirSaldoMaiorZero := '0';
   if ckbExibirSaldo.Checked then
    begin
       rExibirSaldoMaiorZero := '1';
    end;

   PreencherCondicao;

   if lbxRelatorios.ItemIndex in [0,1] then
     begin
       PCP_CD_R_CRP_ITE.Close;
       PCP_CD_R_CRP_ITE.Data :=
       PCP_CD_R_CRP_ITE.DataRequest(
                      VarArrayOf([lbxRelatorios.ItemIndex,xCondEmpresa, rDtaIni, rDtaFin, xCondRecipientes, rAlmoxarifado, xCondItens,rExibirSaldoMaiorZero]));

       if not PCP_CD_R_CRP_ITE.IsEmpty then
         begin
           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
           if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Geral' then
             begin
               if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_CRP_GER.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

               dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_CRP_GER.Name,xCodLme,xRevLme,nil);
               PCP_FR_R_CRP_GER.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

               PCP_FR_R_CRP_GER.Variables['Opcoes'] := QuotedStr(xOpcoes);
               PCP_FR_R_CRP_GER.PrepareReport();
               PCP_FR_R_CRP_GER.ShowReport();
             end;

           if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Item' then
             begin
               if FileExists(PathImg) then
                 begin
                   LogoEmpresa := TfrxPictureView(PCP_FR_R_CRP_ITE.FindObject('imgEmpresa2'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;

               dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_CRP_ITE.Name,xCodLme,xRevLme,nil);
               PCP_FR_R_CRP_ITE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

               PCP_FR_R_CRP_ITE.Variables['Opcoes'] := QuotedStr(xOpcoes);
               PCP_FR_R_CRP_ITE.PrepareReport();
               PCP_FR_R_CRP_ITE.ShowReport();
             end;
       end
       else
         begin
           ShowMessage('Nenhum registro foi encontrado.');
       end;
   end;

   if lbxRelatorios.ItemIndex in [2,3] then
     begin
       PCP_CD_R_CRP_ITE_BXI.Close;
       PCP_CD_R_CRP_ITE_BXI.Data :=
       PCP_CD_R_CRP_ITE_BXI.DataRequest(
                      VarArrayOf([lbxRelatorios.ItemIndex,xCondEmpresa, rDtaIni, rDtaFin, xCondRecipientes, rAlmoxarifado, xCondItens,rExibirSaldoMaiorZero]));
       if not PCP_CD_R_CRP_ITE_BXI.IsEmpty then
         begin
           PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
           if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Baixas por item' then
             begin
               if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_CRP_BXI_ITE.FindObject('imgEmpresa3'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

               dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_CRP_BXI_ITE.Name,xCodLme,xRevLme,nil);
               PCP_FR_R_CRP_BXI_ITE.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

               PCP_FR_R_CRP_BXI_ITE.Variables['Opcoes'] := QuotedStr(xOpcoes);
               PCP_FR_R_CRP_BXI_ITE.PrepareReport();
               PCP_FR_R_CRP_BXI_ITE.ShowReport();
             end;

           if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Baixas por recipientes' then
             begin
               if FileExists(PathImg) then
                begin
                  LogoEmpresa := TfrxPictureView(PCP_FR_R_CRP_BXI_RPT.FindObject('imgEmpresa4'));
                  if Assigned(LogoEmpresa) then
                    LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

               dmGeral.BusCodigoRevListMestre(true,false,PCP_FR_R_CRP_BXI_RPT.Name,xCodLme,xRevLme,nil);
               PCP_FR_R_CRP_BXI_RPT.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));

               PCP_FR_R_CRP_BXI_RPT.Variables['Opcoes'] := QuotedStr(xOpcoes);
               PCP_FR_R_CRP_BXI_RPT.PrepareReport();
               PCP_FR_R_CRP_BXI_RPT.ShowReport();
             end;
         end
       else
         begin
           ShowMessage('Nenhum registro foi encontrado.');
         end;

     end;

end;




procedure TPCP_FM_R_CRP.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesRecipientes,opcoesItens:string;
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

   // Itens --------------------------------------------------------------
  xCondItens := '';
  if lboxItens.Count > 0 then
     begin
       for i := 0 to lboxItens.Count - 1 do
          begin
            if xCondItens <> '' then
               begin
                 xCondItens :=
                 xCondItens+ ',' +''''+trim(copy(lboxItens.Items[i],1,6))+'''';
                 opcoesItens :=
                 opcoesItens +'                    '+lboxItens.Items[i] + #13+#10;
               end;
            if xCondItens = '' then
               begin
                 xCondItens :=
                 xCondItens +''''+trim(copy(lboxItens.Items[i],1,6))+'''';
                 opcoesItens :=
                 opcoesItens + lboxItens.Items[i] + #13+#10;
               end;
          end;
     end
  else
     begin
          opcoesItens := 'Todos' + #13+#10;
      end;



    // Recipientes ----------------------------------------------------------------
  xCondRecipientes := '';
  if lboxRecSel.Count > 0 then
  begin
    if lboxRecDisp.Count <> 0 then
     begin
       for i := 0 to lboxRecSel.Count - 1 do
          begin
            if xCondRecipientes <> '' then
               begin
                 xCondRecipientes :=
                 xCondRecipientes + ',' +''''+trim(copy(lboxRecSel.Items[i],1,3))+'''';
                 opcoesRecipientes :=
                 opcoesRecipientes +'                    '+lboxRecSel.Items[i] + #13+#10;
               end;
            if xCondRecipientes = '' then
               begin
                 xCondRecipientes :=
                 xCondRecipientes +''''+trim(copy(lboxRecSel.Items[i],1,3))+'''';
                 opcoesRecipientes :=
                 opcoesRecipientes + lboxRecSel.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesRecipientes:= 'Todos' + #13+#10;
        End;
  end
   else
     begin
      opcoesRecipientes:= 'Todos' + #13+#10;
     end;


    // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   if lbxRelatorios.ItemIndex in [0,1] then
     begin
       if(ckbExibirSaldo.Checked)then
         begin
           xOpcoes := xOpcoes +'Exibir recipientes com saldo de itens maior que zero: Sim' +#13+#10;
         end
       else
         begin
           xOpcoes := xOpcoes +'Exibir recipientes com saldo de itens maior que zero: Não'+#13+#10;
         end;
     end;
   xOpcoes := xOpcoes + 'Período.............................................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa.............................................: ' + opcoesEmpresa+#13+#10;

   xOpcoes := xOpcoes + 'Recipiente..........................................: ' + opcoesRecipientes+#13+#10;
   xOpcoes := xOpcoes + 'Item................................................: ' + opcoesItens+#13+#10;
end;

function TPCP_FM_R_CRP.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

  if trim(mens) <> '' then
     begin
       ShowMessage('Atenção!' + #13 + mens);
       Result := False;
       exit;
     end
  else
     begin
        if ((deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ')) then
            begin
              mens := mens +  '.O período deve ser preenchido.' + #13;
            end
        else
            begin
              if (deInicial.Date >  deFinal.Date) then
                  begin
                    mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
                  end;
            end;

        if (dmGeral.CAD_CD_C_PAR_CTRutiliza_almoxarifado.AsBoolean=true) then
          begin
           if cbbAlmoxarifado.Text = '' then
             begin
                mens := mens +  '.É necessário selecionar almoxarifado' + #13;
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
            exit;
          end;
     end;
end;



procedure TPCP_FM_R_CRP.lboxEmpDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpDisp.ItemIndex > - 1 then
     begin
       lboxEmpSel.Items.Add(lboxEmpDisp.Items[lboxEmpDisp.ItemIndex]);
       lboxEmpDisp.Items.Delete(lboxEmpDisp.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CRP.lboxEmpSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpSel.ItemIndex > -1 then
     begin
       lboxEmpDisp.Items.Add(lboxEmpSel.Items[lboxEmpSel.ItemIndex]);
       lboxEmpSel.Items.Delete(lboxEmpSel.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CRP.lboxItensDblClick(Sender: TObject);
begin
  inherited;
  if lboxItens.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxItens.DeleteSelected;
end;

procedure TPCP_FM_R_CRP.lboxItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_f3 then
     begin
        PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
        PSQ_FM_X_ITE.ShowModal;
        if not PSQ_FM_X_ITE.BUS_CD_C_ITE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxItens,6,StrZero( PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0)) then
                begin
                  lboxItens.Items.Add(StrZero( PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsFloat,6,0) +
                                             ' - ' +  PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_ITE.Free;
     end;
end;

procedure TPCP_FM_R_CRP.lboxRecDispDblClick(Sender: TObject);
begin
  inherited;
  if lboxRecDisp.ItemIndex > - 1 then
     begin
       lboxRecSel.Items.Add(lboxRecDisp.Items[lboxRecDisp.ItemIndex]);
       lboxRecDisp.Items.Delete(lboxRecDisp.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CRP.lboxRecSelDblClick(Sender: TObject);
begin
  inherited;
  if lboxRecSel.ItemIndex > -1 then
     begin
       lboxRecDisp.Items.Add(lboxRecSel.Items[lboxRecSel.ItemIndex]);
       lboxRecSel.Items.Delete(lboxRecSel.ItemIndex);
     end;
end;

procedure TPCP_FM_R_CRP.MenuItemEmpresasClick(Sender: TObject);
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

procedure TPCP_FM_R_CRP.MenuItemRecipienteClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxRecDisp.ClearSelection;

  if lboxRecDisp.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxRecDisp.Items.Count > 0 then
     begin
       for i := 0 to lboxRecDisp.Items.Count - 1 do
           begin
             lboxRecSel.Items.Add(lboxRecDisp.Items[i]);
             lboxRecDisp.Items.Delete(lboxRecDisp.ItemIndex);
           end;
       lboxRecDisp.Items.Clear;
     end;

end;

procedure TPCP_FM_R_CRP.MenuItemRemoverTodosRegistroClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
  lboxItens.ClearSelection;

  if lboxItens.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

   lboxItens.Items.Clear;


end;

end.
