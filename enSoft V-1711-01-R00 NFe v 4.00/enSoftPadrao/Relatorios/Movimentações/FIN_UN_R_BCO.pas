unit FIN_UN_R_BCO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.ComCtrls,
  vcl.wwdblook, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Menus, frxExportXLS,
  frxClass, frxExportPDF, frxDBSet, Data.DB, Datasnap.DBClient;

type
  TFIN_FM_R_BCO = class(TPAD_FM_X_REL)
    lblPeriodo: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    lblContaCorrente: TLabel;
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsPlanodeContas: TTabSheet;
    lblPlanoSelecionado: TLabel;
    lblPlanosDisponiveis: TLabel;
    lboxPlanoSelecionado: TListBox;
    lboxPlanosDisponiveis: TListBox;
    tsTipoFinancerio: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    lboxTipoFinanceiro: TListBox;
    lboxTipoFinanceiroSelecionado: TListBox;
    pmRemoverTodosPlanoContas: TPopupMenu;
    btnRemoverRegistros: TMenuItem;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmSelPlanosConta: TPopupMenu;
    MenuItemPlanoConta: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    pmSelTipoFinanceiro: TPopupMenu;
    menuItemTipoFinanceiro: TMenuItem;
    pmRemoveTodosTipoFinanceiro: TPopupMenu;
    btnRemoverTodosTiposFinanceiro: TMenuItem;
    cbbContaCorrente: TComboBox;
    FIN_FR_R_BCO_EXB: TfrxReport;
    FIN_PD_R_BCO: TfrxPDFExport;
    FIN_XL_R_BCO: TfrxXLSExport;
    FIN_DP_R_BCO_SBC: TfrxDBDataset;
    FIN_DP_R_BCO_CCB: TfrxDBDataset;
    FIN_DP_R_BCO: TfrxDBDataset;
    FIN_FR_R_BCO_NCN: TfrxReport;
    FIN_FR_R_BCO_CDL: TfrxReport;
    FIN_FR_R_BCO_CDC: TfrxReport;
    FIN_FR_R_BCO_SBC: TfrxReport;
    FIN_FR_R_BCO_CCB: TfrxReport;
    FIN_DB_R_BCO_SLD: TfrxDBDataset;
    FIN_CD_R_BCO: TClientDataSet;
    FIN_CD_R_BCO_SLD: TClientDataSet;
    FIN_CD_R_BCO_SBC: TClientDataSet;
    FIN_CD_R_BCO_CCB: TClientDataSet;
    Label5: TLabel;
    txtobra: TJvComboEdit;
    FIN_FR_R_BCO_EXB_NFR: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure lboxPlanosDisponiveisDblClick(Sender: TObject);
    procedure lboxPlanoSelecionadoDblClick(Sender: TObject);
    procedure lboxTipoFinanceiroDblClick(Sender: TObject);
    procedure lboxTipoFinanceiroSelecionadoDblClick(Sender: TObject);
    procedure btnRemoverRegistrosClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure MenuItemPlanoContaClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure menuItemTipoFinanceiroClick(Sender: TObject);
    procedure btnRemoverTodosTiposFinanceiroClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lbxRelatoriosClick(Sender: TObject);
    procedure txtobraButtonClick(Sender: TObject);
    procedure txtobraExit(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherCondicao;
    function TestarCampos: Boolean;
    procedure ExibirRel;
     var
      xOpcoes, xCondEmpresa, xCondPlanoContas, xCondTipoFinanceiro,obra,nome_obra: string;
  public
    { Public declarations }
  end;

var
  FIN_FM_R_BCO: TFIN_FM_R_BCO;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, enConstantes, PSQ_UN_X_OBR, uDmCtc;

procedure TFIN_FM_R_BCO.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if TestarCampos then
     begin
       ExibirRel;
     end;
end;

procedure TFIN_FM_R_BCO.btnRemoverRegistrosClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxPlanoSelecionado.ClearSelection;

  if lboxPlanoSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanoSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanoSelecionado.Items.Count - 1 do
           begin
             lboxPlanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[i]);
             lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
           end;
       lboxPlanoSelecionado.Items.Clear;
     end;
end;

procedure TFIN_FM_R_BCO.btnRemoverTodosEmpresaClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxEmpresaSelecionada.ClearSelection;

  if lboxEmpresaSelecionada.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresaSelecionada.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Items.Count - 1 do
           begin
             lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[i]);
             lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
           end;
       lboxEmpresaSelecionada.Items.Clear;
     end;
end;

procedure TFIN_FM_R_BCO.btnRemoverTodosTiposFinanceiroClick(Sender: TObject);
var
  i:integer;
begin
  inherited;
  lboxTipoFinanceiroSelecionado.ClearSelection;

  if lboxTipoFinanceiroSelecionado.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoFinanceiroSelecionado.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoFinanceiroSelecionado.Items.Count - 1 do
           begin
             lboxTipoFinanceiro.Items.Add(lboxTipoFinanceiroSelecionado.Items[i]);
             lboxTipoFinanceiroSelecionado.Items.Delete(lboxTipoFinanceiroSelecionado.ItemIndex);
           end;
       lboxTipoFinanceiroSelecionado.Items.Clear;
     end;
end;

procedure TFIN_FM_R_BCO.ExibirRel;
var
  rOperador, rDtaIni, rDtaFin, rContaCorrente, PathImg: String;
  rIndexRelatorio:integer;
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
// Operador
  {if not (cbbOperador.ItemIndex = -1) then
    begin
      rOperador := copy(cbbOperador.Text,1,2);
    end
  else
    begin
      showmessage('O campo "Operador" deve ser preenchido.');
      cbbOperador.SetFocus;
      abort;
    end;}

// Conta corrente

  if (lbxRelatorios.ItemIndex <> 4) then
     begin
        if not (cbbContaCorrente.ItemIndex = -1) then
          begin
            rContaCorrente := copy(cbbContaCorrente.Text,1,pos(' - ',cbbContaCorrente.Text)-1);
          end
        else
          begin
            showmessage('O campo "Conta Corrente" deve ser preenchido.');
            cbbContaCorrente.SetFocus;
            abort;
          end;
     end;
  PreencherCondicao;

  if lbxRelatorios.ItemIndex in [0,1,2,3] then
     begin

      FIN_CD_R_BCO_SLD.Close;
                        FIN_CD_R_BCO_SLD.Data :=
                        FIN_CD_R_BCO_SLD.DataRequest(
                                  VarArrayOf([rDtaIni,rContaCorrente,xCondEmpresa]));

      FIN_CD_R_BCO.Close;
                        FIN_CD_R_BCO.Data :=
                        FIN_CD_R_BCO.DataRequest(
                                  VarArrayOf([lbxRelatorios.ItemIndex,rDtaIni,rDtaFin,rContaCorrente,xCondEmpresa,
                                              xCondPlanoContas,xCondTipoFinanceiro,txtObra.Text]));
      if not FIN_CD_R_BCO.IsEmpty then
        begin
          PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

          if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Extrato Bancário' then
            begin

              if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('ctc').AsBoolean=true) then
                begin
                  if FileExists(PathImg) then          // Data de Movimento
                     begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_BCO_EXB_NFR.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                     end;

                  dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_BCO_EXB_NFR.Name,xCodLme,xRevLme,nil);
                  FIN_FR_R_BCO_EXB_NFR.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_BCO_EXB_NFR.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_BCO_EXB_NFR.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_BCO_EXB_NFR.PrepareReport();
                  FIN_FR_R_BCO_EXB_NFR.ShowReport();
                end
              else
                begin
                  if FileExists(PathImg) then          // Data de Movimento
                     begin
                        LogoEmpresa := TfrxPictureView(FIN_FR_R_BCO_EXB.FindObject('imgEmpresa1'));
                        if Assigned(LogoEmpresa) then
                           LogoEmpresa.Picture.LoadFromFile(PathImg);
                     end;

                  dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_BCO_EXB.Name,xCodLme,xRevLme,nil);
                  FIN_FR_R_BCO_EXB.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                  FIN_FR_R_BCO_EXB.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                  FIN_FR_R_BCO_EXB.Variables['Opcoes'] := QuotedStr(xOpcoes);
                  FIN_FR_R_BCO_EXB.PrepareReport();
                  FIN_FR_R_BCO_EXB.ShowReport();
                end;
            end;

           if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Extrato Conciliado por data de Lançamento' then
            begin
              if FileExists(PathImg) then    // Data de Lançamento
                 begin
                    LogoEmpresa := TfrxPictureView(FIN_FR_R_BCO_CDL.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                       LogoEmpresa.Picture.LoadFromFile(PathImg);
                 end;

              dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_BCO_CDL.Name,xCodLme,xRevLme,nil);
              FIN_FR_R_BCO_CDL.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
              FIN_FR_R_BCO_CDL.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
              FIN_FR_R_BCO_CDL.Variables['Opcoes'] := QuotedStr(xOpcoes);
              FIN_FR_R_BCO_CDL.PrepareReport();
              FIN_FR_R_BCO_CDL.ShowReport();
            end;

            if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Extrato Conciliado por data de Conciliação' then
              begin
                if FileExists(PathImg) then      // Data de conciliação
                   begin
                      LogoEmpresa := TfrxPictureView(FIN_FR_R_BCO_CDC.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;

                dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_BCO_CDC.Name,xCodLme,xRevLme,nil);
                FIN_FR_R_BCO_CDC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                FIN_FR_R_BCO_CDC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                FIN_FR_R_BCO_CDC.Variables['Opcoes'] := QuotedStr(xOpcoes);
                FIN_FR_R_BCO_CDC.PrepareReport();
                FIN_FR_R_BCO_CDC.ShowReport();
              end;

             if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Extrato Não Conciliado' then
              begin
                if FileExists(PathImg) then          // Data de movimento
                   begin
                      LogoEmpresa := TfrxPictureView(FIN_FR_R_BCO_NCN.FindObject('imgEmpresa1'));
                      if Assigned(LogoEmpresa) then
                         LogoEmpresa.Picture.LoadFromFile(PathImg);
                   end;

                dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_BCO_NCN.Name,xCodLme,xRevLme,nil);
                FIN_FR_R_BCO_NCN.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                FIN_FR_R_BCO_NCN.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                FIN_FR_R_BCO_NCN.Variables['Opcoes'] := QuotedStr(xOpcoes);
                FIN_FR_R_BCO_NCN.PrepareReport();
                FIN_FR_R_BCO_NCN.ShowReport();
              end;
        end
      else
        begin
           ShowMessage('Nenhum registro foi encontrado.');
           exit;
        end;
    end;

    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Saldo dos Bancos' then
      begin
        FIN_CD_R_BCO_SBC.Close;        // Data de movimento
        FIN_CD_R_BCO_SBC.Data :=
                        FIN_CD_R_BCO_SBC.DataRequest(
                                  VarArrayOf([rDtaIni,rDtaFin]));
        if not FIN_CD_R_BCO_SBC.IsEmpty then
           begin
            PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(FIN_FR_R_BCO_SBC.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_BCO_SBC.Name,xCodLme,xRevLme,nil);
            FIN_FR_R_BCO_SBC.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FIN_FR_R_BCO_SBC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            FIN_FR_R_BCO_SBC.Variables['Opcoes'] := QuotedStr(xOpcoes);
            FIN_FR_R_BCO_SBC.PrepareReport();
            FIN_FR_R_BCO_SBC.ShowReport();
           end
         else
           begin
              ShowMessage('Nenhum registro foi encontrado.');
              exit;
           end;
      end;


    if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Consolidação Caixa/Banco' then
      begin
        FIN_CD_R_BCO_CCB.Close;  // Data de movimento
        FIN_CD_R_BCO_CCB.Data :=
                        FIN_CD_R_BCO_CCB.DataRequest(
                                  VarArrayOf([rDtaIni,rDtaFin,rContaCorrente,
                                                xCondEmpresa,xCondPlanoContas,xCondTipoFinanceiro,txtObra.Text]));
         if not FIN_CD_R_BCO_CCB.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
               begin
                 LogoEmpresa := TfrxPictureView(FIN_FR_R_BCO_CCB.FindObject('imgEmpresa1'));
                 if Assigned(LogoEmpresa) then
                   LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

             dmGeral.BusCodigoRevListMestre(true,false,FIN_FR_R_BCO_CCB.Name,xCodLme,xRevLme,nil);
             FIN_FR_R_BCO_CCB.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             FIN_FR_R_BCO_CCB.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             FIN_FR_R_BCO_CCB.Variables['Opcoes'] := QuotedStr(xOpcoes);
             FIN_FR_R_BCO_CCB.PrepareReport();
             FIN_FR_R_BCO_CCB.ShowReport();
           end
         else
           begin
             ShowMessage('Nenhum registro foi encontrado.');
             exit;
           end;
      end;

end;

procedure TFIN_FM_R_BCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(FIN_FM_R_BCO);
end;

procedure TFIN_FM_R_BCO.FormShow(Sender: TObject);
begin
  inherited;
  lbxRelatorios.ItemIndex := 0;
  label5.Visible := dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;
  txtobra.Visible := dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean;

  // Operador ------------------------------------------------------------------
 { dmGeral.BUS_CD_C_FUN.Close;
  dmGeral.BUS_CD_C_FUN.Data :=
  dmGeral.BUS_CD_C_FUN.DataRequest(
          VarArrayOf([1, '%']));

  if not dmGeral.BUS_CD_C_FUN.IsEmpty then
     begin
       dmGeral.BUS_CD_C_FUN.First;

       while not dmGeral.BUS_CD_C_FUN.eof do
          begin
            cbboperador.Items.Add(StrZero(dmGeral.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsFloat,2,0) +
                                    ' - ' + dmGeral.BUS_CD_C_FUN.FieldByName('NOME').AsString);
            dmGeral.BUS_CD_C_FUN.Next;
          end;
     end;
  dmGeral.BUS_CD_C_FUN.Close;  }

  // Conta Corrente ------------------------------------------------------------------
  dmGeral.BUS_CD_C_CTC.Close;
  dmGeral.BUS_CD_C_CTC.Data :=
  dmGeral.BUS_CD_C_CTC.DataRequest(
          VarArrayOf([3, '1']));

  if not dmGeral.BUS_CD_C_CTC.IsEmpty then
     begin
       dmGeral.BUS_CD_C_CTC.First;

       while not dmGeral.BUS_CD_C_CTC.eof do
          begin
            cbbcontacorrente.Items.Add(StrZero(dmGeral.BUS_CD_C_CTC.FieldByName('ID_CONTA').AsFloat,2,0) +
                                    ' - ' + dmGeral.BUS_CD_C_CTC.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_CTC.Next;
          end;
     end;
  dmGeral.BUS_CD_C_CTC.Close;

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
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;

  // Planos de Contas ----------------------------------------------------------
  dmGeral.BUS_CD_C_PCT.Close;
  dmGeral.BUS_CD_C_PCT.Data :=
  dmGeral.BUS_CD_C_PCT.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_PCT.IsEmpty then
     begin
       dmGeral.BUS_CD_C_PCT.First;

       while not dmGeral.BUS_CD_C_PCT.eof do
          begin
            lboxPlanosDisponiveis.Items.Add(dmGeral.BUS_CD_C_PCT.FieldByName('ID_PLANO').AsString +
                                    ' - ' + dmGeral.BUS_CD_C_PCT.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_PCT.Next;
          end;
     end;

 dmGeral.BUS_CD_C_PCT.Close;

// Tipo Financeiro ----------------------------------------------------------
  dmGeral.BUS_CD_C_TIF.Close;
  dmGeral.BUS_CD_C_TIF.Data :=
  dmGeral.BUS_CD_C_TIF.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_TIF.IsEmpty then
     begin
       dmGeral.BUS_CD_C_TIF.First;

       while not dmGeral.BUS_CD_C_TIF.eof do
          begin
            lboxTipoFinanceiro.Items.Add(StrZero(dmGeral.BUS_CD_C_TIF.FieldByName('ID_TIPO_FINANCEIRO').AsFloat,6,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TIF.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_TIF.Next;
          end;
     end;

 dmGeral.BUS_CD_C_TIF.Close;
end;

procedure TFIN_FM_R_BCO.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TFIN_FM_R_BCO.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;

procedure TFIN_FM_R_BCO.lboxPlanosDisponiveisDblClick(Sender: TObject);
begin
  inherited;
   if lboxPlanosDisponiveis.ItemIndex > - 1 then
     begin
       lboxPlanoSelecionado.Items.Add(lboxPlanosDisponiveis.Items[lboxPlanosDisponiveis.ItemIndex]);
       lboxPlanosDisponiveis.Items.Delete(lboxPlanosDisponiveis.ItemIndex);
     end;
end;

procedure TFIN_FM_R_BCO.lboxPlanoSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxPlanoSelecionado.ItemIndex > -1 then
     begin
       lboxplanosDisponiveis.Items.Add(lboxPlanoSelecionado.Items[lboxPlanoSelecionado.ItemIndex]);
       lboxPlanoSelecionado.Items.Delete(lboxPlanoSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_BCO.lboxTipoFinanceiroDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoFinanceiro.ItemIndex > - 1 then
     begin
       lboxTipoFinanceiroSelecionado.Items.Add(lboxTipoFinanceiro.Items[lboxTipoFinanceiro.ItemIndex]);
       lboxTipoFinanceiro.Items.Delete(lboxTipoFinanceiro.ItemIndex);
     end;
end;

procedure TFIN_FM_R_BCO.lboxTipoFinanceiroSelecionadoDblClick(Sender: TObject);
begin
  inherited;
  if lboxTipoFinanceiroSelecionado.ItemIndex > -1 then
     begin
       lboxTipoFinanceiro.Items.Add(lboxTipoFinanceiroSelecionado.Items[lboxTipoFinanceiroSelecionado.ItemIndex]);
       lboxTipoFinanceiroSelecionado.Items.Delete(lboxTipoFinanceiroSelecionado.ItemIndex);
     end;
end;

procedure TFIN_FM_R_BCO.lbxRelatoriosClick(Sender: TObject);
begin
  inherited;
  if (lbxRelatorios.ItemIndex = 4) then
    begin
      cbbContaCorrente.Enabled := false;
      pcFiltros.Visible := false;
    end;
  if (lbxRelatorios.ItemIndex <> 4) then
    begin
       cbbContaCorrente.Enabled := true;
       pcFiltros.Visible := true;
    end;

  if (lbxRelatorios.ItemIndex = 0) then
     begin
       lblPeriodo.Caption := 'Período de movimento: ';
     end;

  if (lbxRelatorios.ItemIndex = 1) then
     begin
       lblPeriodo.Caption := 'Período de Lançamento: ';
     end;

  if (lbxRelatorios.ItemIndex = 2) then
     begin
       lblPeriodo.Caption := 'Período de Conciliação: ';
     end;

  if (lbxRelatorios.ItemIndex in [3,4,5]) then
     begin
       lblPeriodo.Caption := 'Período de movimento: ';
     end;
end;

procedure TFIN_FM_R_BCO.menuItemEmpresasClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxEmpresas.ClearSelection;

  if lboxEmpresas.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxEmpresas.Items.Count > 0 then
     begin
       for i := 0 to lboxEmpresas.Items.Count - 1 do
           begin
             lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[i]);
             lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
           end;
       lboxEmpresas.Items.Clear;
     end;
end;

procedure TFIN_FM_R_BCO.MenuItemPlanoContaClick(Sender: TObject);
var
  i: integer;
begin
  inherited;
  lboxPlanosDisponiveis.ClearSelection;

  if lboxPlanosDisponiveis.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxPlanosDisponiveis.Items.Count > 0 then
     begin
       for i := 0 to lboxPlanosDisponiveis.Items.Count - 1 do
           begin
             lboxPlanoSelecionado.Items.Add(lboxPlanosDisponiveis.Items[i]);
             lboxPlanosDisponiveis.Items.Delete(lboxPlanosDisponiveis.ItemIndex);
           end;
       lboxPlanosDisponiveis.Items.Clear;
     end;
end;

procedure TFIN_FM_R_BCO.menuItemTipoFinanceiroClick(Sender: TObject);
var
  i: integer;
begin
  inherited;

  lboxTipoFinanceiro.ClearSelection;

  if lboxTipoFinanceiro.Items.Count = 0 then
     begin
       Showmessage('Não há registro para selecionar.');
       exit;
     end;

  if lboxTipoFinanceiro.Items.Count > 0 then
     begin
       for i := 0 to lboxTipoFinanceiro.Items.Count - 1 do
           begin
             lboxTipoFinanceiroSelecionado.Items.Add(lboxTipoFinanceiro.Items[i]);
             lboxTipoFinanceiro.Items.Delete(lboxTipoFinanceiro.ItemIndex);
           end;
       lboxTipoFinanceiro.Items.Clear;
     end;
end;

procedure TFIN_FM_R_BCO.PreencherCondicao;
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesPlanoContas,opcoesTipoFinanceiro:string;
begin
  // Empresas --------------------------------------------------------------------
  xCondEmpresa := '';
  if lboxEmpresaSelecionada.Count > 0 then
     begin
       for i := 0 to lboxEmpresaSelecionada.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                    '+lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lboxEmpresaSelecionada.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lboxEmpresaSelecionada.Items[i] + #13+#10;
               end;
          end;
     end;

// Planos de Contas ------------------------------------------------------------
  xCondPlanoContas := '';
  if lboxPlanoSelecionado.Count > 0 then
     begin
     if lboxPlanosDisponiveis.Count > 0 then
        begin

       for i := 0 to lboxPlanoSelecionado.Count - 1 do
          begin
            if xCondPlanoContas <> '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas + ',' +''''+trim(copy(lboxPlanoSelecionado.Items[i],1,9))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +'                    '+lboxPlanoSelecionado.Items[i] + #13+#10;
               end;
            if xCondPlanoContas = '' then
               begin
                 xCondPlanoContas :=
                 xCondPlanoContas +''''+trim(copy(lboxPlanoSelecionado.Items[i],1,9))+'''';
                 opcoesPlanoContas :=
                 opcoesPlanoContas +lboxPlanoSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
  else
      begin
        opcoesPlanoContas := 'Todos';
      end;
     end
  else
     begin
        opcoesPlanoContas := 'Todos';
     end;

// Tipo Financeiro ------------------------------------------------------------
  xCondTipoFinanceiro := '';
  if lboxTipoFinanceiroSelecionado.Count > 0 then
     begin
     if lboxTipoFinanceiro.Count > 0 then
        begin

       for i := 0 to lboxTipoFinanceiroSelecionado.Count - 1 do
          begin
            if xCondTipoFinanceiro <> '' then
               begin
                 xCondTipoFinanceiro :=
                 xCondTipoFinanceiro + ',' +''''+trim(copy(lboxTipoFinanceiroSelecionado.Items[i],1,6))+'''';
                 opcoesTipoFinanceiro :=
                 opcoesTipoFinanceiro +'                    '+lboxTipoFinanceiroSelecionado.Items[i] + #13+#10;
               end;
            if xCondTipoFinanceiro = '' then
               begin
                 xCondTipoFinanceiro :=
                 xCondTipoFinanceiro +''''+trim(copy(lboxTipoFinanceiroSelecionado.Items[i],1,6))+'''';
                 opcoesTipoFinanceiro :=
                 opcoesTipoFinanceiro +lboxTipoFinanceiroSelecionado.Items[i] + #13+#10;
               end;
          end;
     end
  else
      begin
        opcoesTipoFinanceiro := 'Todos';
      end;
     end
  else
     begin
        opcoesTipoFinanceiro := 'Todos';
     end;

// Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   if (lbxRelatorios.ItemIndex <> 4) then
     begin
       xOpcoes := xOpcoes + 'Conta Corrente....: ' + cbbContaCorrente.Text + #13+#10;
       xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
       xOpcoes := xOpcoes + 'Plano de Contas...: ' + opcoesPlanoContas+#13+#10;
       xOpcoes := xOpcoes + 'Tipo Financeiro...: ' + opcoesTipoFinanceiro+#13+#10;
       if obra <> '' then
         xOpcoes := xOpcoes + 'Obra..............: ' + obra+' - '+nome_obra+#13+#10;
     end
   else
     begin
       xOpcoes := xOpcoes + 'Empresa...........: Todos ' +#13+#10;
       xOpcoes := xOpcoes + 'Plano de Contas...: Todos ' +#13+#10;
       xOpcoes := xOpcoes + 'Tipo Financeiro...: Todos ' +#13+#10;
       if obra <> '' then
         xOpcoes := xOpcoes + 'Obra..............: ' + obra+' - '+nome_obra+#13+#10;
     end;

end;

function TFIN_FM_R_BCO.TestarCampos: Boolean;
var
  mens: String;
begin
  result := True;
  mens := '';

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

        if ((lbxRelatorios.ItemIndex <> 4) and (cbbContaCorrente.Text = '')) then
          begin
            mens := mens + '.Conta Corrente deve ser preenchido'+#13 ;
          end;


        if (lbxRelatorios.ItemIndex <> 4) and (lboxEmpresaSelecionada.Count = 0) then
           begin
             mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
           end;

       {if ((obra ='') or (obra='0')) and (dmgeral.CAD_CD_C_PAR_MOD.FieldByName('CTC').AsBoolean) then
           begin
             mens := mens +  '.É necessário selecionar a obra' + #13;
           end;}

       if trim(mens) <> '' then
          begin
            ShowMessage('Atenção!' + #13 + mens);
            Result := False;
            exit;
          end;
end;

procedure TFIN_FM_R_BCO.txtobraButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_OBR := TPSQ_FM_X_OBR.Create(Self);
  PSQ_FM_X_OBR.ShowModal;
  if not PSQ_FM_X_OBR.BUS_CD_C_OBR.IsEmpty then
    begin
      txtobra.Text := PSQ_FM_X_OBR.BUS_CD_C_OBR.FieldByName('id_obra').AsString;
    end;
  PSQ_FM_X_OBR.Free;
end;

procedure TFIN_FM_R_BCO.txtobraExit(Sender: TObject);
begin
  inherited;
  dmCtc.BUS_CD_C_OBR.Close;
  dmCtc.BUS_CD_C_OBR.Data :=
    dmCtc.BUS_CD_C_OBR.DataRequest(
      VarArrayOf([0, txtobra.Text,'True']));

  if not dmCtc.BUS_CD_C_OBR.IsEmpty then
    begin
      obra := dmCtc.BUS_CD_C_OBR.FieldByName('id_obra').AsString;
      nome_obra := dmCtc.BUS_CD_C_OBR.FieldByName('descricao').AsString;
    end
  else
    begin
      showmessage('Obra não Encontrada!');
      txtobra.Text := '';
      obra := '';
      nome_obra := '';
    end;
end;

end.
