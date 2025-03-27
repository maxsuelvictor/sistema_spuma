unit OFI_UN_R_ABC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, vcl.Wwdbedit,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.ImgList,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, Vcl.Menus, frxClass,
  frxDBSet, frxExportPDF, frxExportXLS, Data.DB, Datasnap.DBClient;

type
  TOFI_FM_R_ABC = class(TPAD_FM_X_REL)
    pcFiltros: TPageControl;
    tsEmpresas: TTabSheet;
    lblEmpresasDisponiveis: TLabel;
    lblEmpresaSelecionada: TLabel;
    lboxEmpresas: TListBox;
    lboxEmpresaSelecionada: TListBox;
    tsModeloVeiculo: TTabSheet;
    lblModeloVeiculo: TLabel;
    lboxModelo: TListBox;
    Label1: TLabel;
    deInicial: TJvDateEdit;
    Label2: TLabel;
    deFinal: TJvDateEdit;
    pmSelEmpresas: TPopupMenu;
    menuItemEmpresas: TMenuItem;
    pmExcluirFornecedor: TPopupMenu;
    btnRemoverRegistroFornecedor: TMenuItem;
    pmRemoverModelo: TPopupMenu;
    btnRemoverModelos: TMenuItem;
    pmRemoverTodosEmpresa: TPopupMenu;
    btnRemoverTodosEmpresa: TMenuItem;
    OFI_FR_R_OFV_ABC_01: TfrxReport;
    OFI_XL_R_OFV_ABC: TfrxXLSExport;
    OFI_PD_R_OFV_ABC: TfrxPDFExport;
    OFI_DB_R_OFV_ABC_001: TfrxDBDataset;
    OFI_DB_R_OFV_ABC_002: TfrxDBDataset;
    tsTipoOS: TTabSheet;
    lboxTipoOSDisp: TListBox;
    lboxTipoOSSel: TListBox;
    lblTipoOSDisp: TLabel;
    lblTipoOSSel: TLabel;
    txtFaixaC: TEdit;
    lblFaixaC: TLabel;
    txtFaixaB: TEdit;
    lblFaixaB: TLabel;
    txtFaixaA: TEdit;
    lblFaixaA: TLabel;
    lblFaixa: TLabel;
    cdsABC01: TClientDataSet;
    cdsABC01curva: TStringField;
    cdsABC01id_mve: TIntegerField;
    cdsABC01descricao: TStringField;
    cdsABC01vlr_venda: TCurrencyField;
    cdsABC01vlr_acumulado: TCurrencyField;
    cdsABC01per_var: TCurrencyField;
    cdsABC01per_acum: TCurrencyField;
    cdsABC01id_sequencia: TIntegerField;
    cdsABC02: TClientDataSet;
    cdsABC02id_tipo_os: TIntegerField;
    cdsABC02descricao: TStringField;
    cdsABC02vlr_venda: TCurrencyField;
    cdsABC02id_sequencia: TIntegerField;
    OFI_FR_R_OFV_ABC_02: TfrxReport;
    cdsABC02curva: TStringField;
    cdsABC02vlr_acumulado: TCurrencyField;
    cdsABC02per_venda: TCurrencyField;
    cdsABC02per_acum: TCurrencyField;
    OFI_CD_R_OFV_ABC_001: TClientDataSet;
    OFI_CD_R_OFV_ABC_002: TClientDataSet;
    OFI_CD_R_OFV_ABC_003: TClientDataSet;
    OFI_DB_R_OFV_ABC_003: TfrxDBDataset;
    OFI_FR_R_OFV_ABC_03: TfrxReport;
    cdsABC03: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    IntegerField2: TIntegerField;
    cdsABC03id_mar: TIntegerField;
    OFI_CD_R_OFV_ABC_003id_mar: TIntegerField;
    OFI_CD_R_OFV_ABC_003descricao: TWideStringField;
    OFI_CD_R_OFV_ABC_003vlr_liquido_pro_ser: TFMTBCDField;
    OFI_CD_R_OFV_ABC_003vlr_total: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lboxEmpresasDblClick(Sender: TObject);
    procedure lboxEmpresaSelecionadaDblClick(Sender: TObject);
    procedure menuItemEmpresasClick(Sender: TObject);
    procedure btnRemoverTodosEmpresaClick(Sender: TObject);
    procedure btnRemoverModelosClick(Sender: TObject);
    procedure txtfaixaAKeyPress(Sender: TObject; var Key: Char);
    procedure txtfaixaBKeyPress(Sender: TObject; var Key: Char);
    procedure txtfaixaCKeyPress(Sender: TObject; var Key: Char);
    procedure txtfaixaAExit(Sender: TObject);
    procedure txtfaixaBExit(Sender: TObject);
    procedure txtfaixaCExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lboxTipoOSDispDblClick(Sender: TObject);
    procedure lboxTipoOSSelDblClick(Sender: TObject);
    procedure lboxModeloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ExibirRel;
    procedure PreencherCondicao;
    function TestarCampos:Boolean;
    var
      xCondEmpresa,xCondModelo,xCondTipoOS,xOpcoes:string;
  public
    { Public declarations }
  end;

var
  OFI_FM_R_ABC: TOFI_FM_R_ABC;

implementation

{$R *.dfm}

uses uDmGeral, enFunc, PSQ_UN_X_FOR, enConstantes, PSQ_UN_X_MVE;

procedure  TOFI_FM_R_ABC.ExibirRel;
var
  rDtaIni, rDtaFin,PathImg: String;
  vlrAcu,perAcu:currency;
  faixaA,faixaB,faixaC:string;
  index,total_registro:integer;
  LogoEmpresa: TfrxPictureView;
begin
  if lbxRelatorios.ItemIndex = -1 then
     Showmessage('Nenhum relatório foi selecionado.');

   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   PreencherCondicao;

   if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Por Modelo de Veículo') then
      begin
        OFI_CD_R_OFV_ABC_001.Active:= False;
        OFI_CD_R_OFV_ABC_001.Close;
        OFI_CD_R_OFV_ABC_001.Data :=
                OFI_CD_R_OFV_ABC_001.DataRequest(
                      VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,xCondTipoOS,xCondModelo]));

        if not OFI_CD_R_OFV_ABC_001.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_ABC_01.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
             vlrAcu := 0;
             perAcu := 0;
             total_registro := OFI_CD_R_OFV_ABC_001.RecordCount;
             index := 0;
             cdsABC01.EmptyDataSet;
             while (not OFI_CD_R_OFV_ABC_001.eof) do
               begin
                 cdsABC01.Insert;
                 cdsABC01.FieldByName('ID_SEQUENCIA').AsInteger := index;
                 cdsABC01.FieldByName('ID_MVE').AsInteger := OFI_CD_R_OFV_ABC_001.FieldByName('ID_MVE').AsInteger;
                 cdsABC01.FieldByName('DESCRICAO').AsString := OFI_CD_R_OFV_ABC_001.FieldByName('DESCRICAO').AsString;
                 cdsABC01.FieldByName('VLR_VENDA').AsCurrency := OFI_CD_R_OFV_ABC_001.FieldByName('VLR_LIQUIDO_PRO_SER').AsCurrency;
                 vlrAcu := vlrAcu + cdsABC01.FieldByName('VLR_VENDA').AsCurrency;
                 cdsABC01.FieldByName('VLR_ACUMULADO').AsCurrency := vlrAcu;
                 if (index <(total_registro-1) ) then
                   begin
                    cdsABC01.FieldByName('PER_VAR').AsCurrency := 100*(OFI_CD_R_OFV_ABC_001.FieldByName('VLR_LIQUIDO_PRO_SER').AsCurrency/
                                                                    OFI_CD_R_OFV_ABC_001.FieldByName('VLR_TOTAL').AsCurrency);
                   end
                 else
                   begin
                     cdsABC01.FieldByName('PER_VAR').AsCurrency := 100 - perAcu;
                   end;
                  perAcu := perAcu + cdsABC01.FieldByName('PER_VAR').AsCurrency;
                  cdsABC01.FieldByName('PER_ACUM').AsCurrency := perAcu;
                 if perAcu <= FaixaA.ToInteger(txtFaixaA.Text) then
                   cdsABC01.FieldByName('curva').AsString := 'A';
                 if (perAcu<= (FaixaA.ToInteger(txtFaixaA.Text) + FaixaB.ToInteger(txtFaixaB.Text)) ) and (perAcu> FaixaA.ToInteger(txtFaixaA.Text)) Then
                    cdsABC01.FieldByName('curva').AsString := 'B';
                 if (perAcu<= (FaixaA.ToInteger(txtFaixaA.Text) + FaixaB.ToInteger(txtFaixaB.Text) + FaixaC.ToInteger(txtFaixaC.Text) ) ) and
                    (perAcu> (FaixaA.ToInteger(txtFaixaA.Text) + FaixaB.ToInteger(txtFaixaB.Text)) ) Then
                     cdsABC01.FieldByName('curva').AsString := 'C';
                 cdsABC01.Post;
                 OFI_CD_R_OFV_ABC_001.Next;
                 index := index +1;
               end;
             cdsABC01.IndexFieldNames :='ID_SEQUENCIA';
             dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_ABC_01.Name,xCodLme,xRevLme,nil);
             OFI_FR_R_OFV_ABC_01.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             OFI_FR_R_OFV_ABC_01.Variables['ft_vlr_total'] := QuotedStr(OFI_CD_R_OFV_ABC_001.FieldByName('VLR_TOTAL').AsString);
             OFI_FR_R_OFV_ABC_01.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             OFI_FR_R_OFV_ABC_01.Variables['Opcoes'] := QuotedStr(xOpcoes);
             OFI_FR_R_OFV_ABC_01.PrepareReport();
             OFI_FR_R_OFV_ABC_01.ShowReport();
           end
        else
           begin
             ShowMessage('Nenhum registro foi encontrado.');
           end;
      end;

    if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Por Tipo de Ordem de Serviço') then
      begin
        OFI_CD_R_OFV_ABC_002.Active:= False;
        OFI_CD_R_OFV_ABC_002.Close;
        OFI_CD_R_OFV_ABC_002.Data :=
                OFI_CD_R_OFV_ABC_002.DataRequest(
                      VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,xCondTipoOS,xCondModelo]));

        if not OFI_CD_R_OFV_ABC_002.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_ABC_02.FindObject('imgEmpresa2'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;

             vlrAcu := 0;
             perAcu := 0;
             total_registro := OFI_CD_R_OFV_ABC_002.RecordCount;
             index := 0;
             cdsABC02.EmptyDataSet;
             while (not OFI_CD_R_OFV_ABC_002.eof) do
               begin
                 cdsABC02.Insert;
                 cdsABC02.FieldByName('ID_SEQUENCIA').AsInteger := index;
                 cdsABC02.FieldByName('ID_TIPO_OS').AsInteger := OFI_CD_R_OFV_ABC_002.FieldByName('ID_TIPO_OS').AsInteger;
                 cdsABC02.FieldByName('DESCRICAO').AsString := OFI_CD_R_OFV_ABC_002.FieldByName('DESCRICAO').AsString;
                 cdsABC02.FieldByName('VLR_VENDA').AsCurrency := OFI_CD_R_OFV_ABC_002.FieldByName('VLR_LIQUIDO_PRO_SER').AsCurrency;
                 vlrAcu := vlrAcu + cdsABC02.FieldByName('VLR_VENDA').AsCurrency;
                 cdsABC02.FieldByName('VLR_ACUMULADO').AsCurrency := vlrAcu;
                 if (index <(total_registro-1) ) then
                   begin
                    cdsABC02.FieldByName('PER_VENDA').AsCurrency := 100*(OFI_CD_R_OFV_ABC_002.FieldByName('VLR_LIQUIDO_PRO_SER').AsCurrency/
                                                                    OFI_CD_R_OFV_ABC_002.FieldByName('VLR_TOTAL').AsCurrency);
                   end
                 else
                   begin
                     cdsABC02.FieldByName('PER_VENDA').AsCurrency := 100 - perAcu;
                   end;
                  perAcu := perAcu + cdsABC02.FieldByName('PER_VENDA').AsCurrency;
                  cdsABC02.FieldByName('PER_ACUM').AsCurrency := perAcu;
                 if perAcu <= FaixaA.ToInteger(txtFaixaA.Text) then
                   cdsABC02.FieldByName('curva').AsString := 'A';
                 if (perAcu<= (FaixaA.ToInteger(txtFaixaA.Text) + FaixaB.ToInteger(txtFaixaB.Text)) ) and (perAcu> FaixaA.ToInteger(txtFaixaA.Text)) Then
                    cdsABC02.FieldByName('curva').AsString := 'B';
                 if (perAcu<= (FaixaA.ToInteger(txtFaixaA.Text) + FaixaB.ToInteger(txtFaixaB.Text) + FaixaC.ToInteger(txtFaixaC.Text) ) ) and
                    (perAcu> (FaixaA.ToInteger(txtFaixaA.Text) + FaixaB.ToInteger(txtFaixaB.Text)) ) Then
                     cdsABC02.FieldByName('curva').AsString := 'C';
                 cdsABC02.Post;
                 OFI_CD_R_OFV_ABC_002.Next;
                 index := index +1;
               end;
             cdsABC02.IndexFieldNames :='ID_SEQUENCIA';
             dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_ABC_02.Name,xCodLme,xRevLme,nil);
             OFI_FR_R_OFV_ABC_02.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             OFI_FR_R_OFV_ABC_02.Variables['ft_vlr_total'] := QuotedStr(OFI_CD_R_OFV_ABC_002.FieldByName('VLR_TOTAL').AsString);
             OFI_FR_R_OFV_ABC_02.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             OFI_FR_R_OFV_ABC_02.Variables['Opcoes'] := QuotedStr(xOpcoes);
             OFI_FR_R_OFV_ABC_02.PrepareReport();
             OFI_FR_R_OFV_ABC_02.ShowReport();
           end
        else
           begin
             ShowMessage('Nenhum registro foi encontrado.');
           end;
      end;

    if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Por Marca de Veiculo') then
      begin
        OFI_CD_R_OFV_ABC_003.Active:= False;
        OFI_CD_R_OFV_ABC_003.Close;
        OFI_CD_R_OFV_ABC_003.Data :=
                OFI_CD_R_OFV_ABC_003.DataRequest(
                      VarArrayOf([rDtaIni,rDtaFin,xCondEmpresa,xCondTipoOS,xCondModelo]));

        if not OFI_CD_R_OFV_ABC_003.IsEmpty then
           begin
             PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
             if FileExists(PathImg) then
                begin
                   LogoEmpresa := TfrxPictureView(OFI_FR_R_OFV_ABC_03.FindObject('imgEmpresa1'));
                   if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
                end;
             vlrAcu := 0;
             perAcu := 0;
             total_registro := OFI_CD_R_OFV_ABC_003.RecordCount;
             index := 0;
             cdsABC03.EmptyDataSet;
             while (not OFI_CD_R_OFV_ABC_003.eof) do
               begin
                 cdsABC03.Insert;
                 cdsABC03.FieldByName('ID_SEQUENCIA').AsInteger := index;
                 cdsABC03.FieldByName('ID_MAR').AsInteger := OFI_CD_R_OFV_ABC_003.FieldByName('ID_MAR').AsInteger;
                 cdsABC03.FieldByName('DESCRICAO').AsString := OFI_CD_R_OFV_ABC_003.FieldByName('DESCRICAO').AsString;
                 cdsABC03.FieldByName('VLR_VENDA').AsCurrency := OFI_CD_R_OFV_ABC_003.FieldByName('VLR_LIQUIDO_PRO_SER').AsCurrency;
                 vlrAcu := vlrAcu + cdsABC03.FieldByName('VLR_VENDA').AsCurrency;
                 cdsABC03.FieldByName('VLR_ACUMULADO').AsCurrency := vlrAcu;
                 if (index <(total_registro-1) ) then
                   begin
                    cdsABC03.FieldByName('PER_VAR').AsCurrency := 100*(OFI_CD_R_OFV_ABC_003.FieldByName('VLR_LIQUIDO_PRO_SER').AsCurrency/
                                                                    OFI_CD_R_OFV_ABC_003.FieldByName('VLR_TOTAL').AsCurrency);
                   end
                 else
                   begin
                     cdsABC03.FieldByName('PER_VAR').AsCurrency := 100 - perAcu;
                   end;
                  perAcu := perAcu + cdsABC03.FieldByName('PER_VAR').AsCurrency;
                  cdsABC03.FieldByName('PER_ACUM').AsCurrency := perAcu;
                 if perAcu <= FaixaA.ToInteger(txtFaixaA.Text) then
                   cdsABC03.FieldByName('curva').AsString := 'A';
                 if (perAcu<= (FaixaA.ToInteger(txtFaixaA.Text) + FaixaB.ToInteger(txtFaixaB.Text)) ) and (perAcu> FaixaA.ToInteger(txtFaixaA.Text)) Then
                    cdsABC03.FieldByName('curva').AsString := 'B';
                 if (perAcu<= (FaixaA.ToInteger(txtFaixaA.Text) + FaixaB.ToInteger(txtFaixaB.Text) + FaixaC.ToInteger(txtFaixaC.Text) ) ) and
                    (perAcu> (FaixaA.ToInteger(txtFaixaA.Text) + FaixaB.ToInteger(txtFaixaB.Text)) ) Then
                     cdsABC03.FieldByName('curva').AsString := 'C';
                 cdsABC03.Post;
                 OFI_CD_R_OFV_ABC_003.Next;
                 index := index +1;
               end;
             cdsABC03.IndexFieldNames :='ID_SEQUENCIA';
             dmGeral.BusCodigoRevListMestre(true,false,OFI_FR_R_OFV_ABC_03.Name,xCodLme,xRevLme,nil);
             OFI_FR_R_OFV_ABC_03.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
             OFI_FR_R_OFV_ABC_03.Variables['ft_vlr_total'] := QuotedStr(OFI_CD_R_OFV_ABC_003.FieldByName('VLR_TOTAL').AsString);
             OFI_FR_R_OFV_ABC_03.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
             OFI_FR_R_OFV_ABC_03.Variables['Opcoes'] := QuotedStr(xOpcoes);
             OFI_FR_R_OFV_ABC_03.PrepareReport();
             OFI_FR_R_OFV_ABC_03.ShowReport();
           end
        else
           begin
             ShowMessage('Nenhum registro foi encontrado.');
           end;
      end;
end;

procedure  TOFI_FM_R_ABC.PreencherCondicao;
var
  i: integer;
  opcoesEmpresa,opcoesModelo,opcoesTipoOS:string;
begin
  xOpcoes := '';
   // Empresas ------------------------------------------------------------------
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

   // Modelo ----------------------------------------------------------------
  xCondModelo := '';
  if lboxModelo.Count > 0 then
    begin
       for i := 0 to lboxModelo.Count - 1 do
          begin
            if xCondModelo <> '' then
               begin
                 xCondModelo :=
                 xCondModelo + ',' +''''+trim(copy(lboxModelo.Items[i],1,7))+'''';
                 opcoesModelo :=
                 opcoesModelo +'                    '+lboxModelo.Items[i] + #13+#10;
               end;
            if xCondModelo = '' then
               begin
                 xCondModelo :=
                 xCondModelo +''''+trim(copy(lboxModelo.Items[i],1,7))+'''';
                 opcoesModelo :=
                 opcoesModelo + lboxModelo.Items[i] + #13+#10;
               end;
          end;
    end
   else
     begin
      opcoesModelo := 'Todos';
     end;
   // Tipo OS ----------------------------------------------------------------
  xCondTipoOS := '';
  if lboxTipoOSSel.Count > 0 then
  begin
    if lboxTipoOSDisp.Count <> 0 then
     begin
       for i := 0 to lboxTipoOSSel.Count - 1 do
          begin
            if xCondTipoOS <> '' then
               begin
                 xCondTipoOS :=
                 xCondTipoOS + ',' +''''+trim(copy(lboxTipoOSSel.Items[i],1,3))+'''';
                 opcoesTipoOS :=
                 opcoesTipoOS +'                    '+lboxTipoOSSel.Items[i] + #13+#10;
               end;
            if xCondTipoOS = '' then
               begin
                 xCondTipoOS :=
                 xCondTipoOS +''''+trim(copy(lboxTipoOSSel.Items[i],1,3))+'''';
                 opcoesTipoOS :=
                 opcoesTipoOS + lboxTipoOSSel.Items[i] + #13+#10;
               end;
          end;
     end
      else
        begin
          opcoesTipoOS := 'Todos';
        End;
  end
   else
     begin
      opcoesTipoOS := 'Todos';
     end;

    // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período...........: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   xOpcoes := xOpcoes + 'Faixa.............: ' +'A='+txtFaixaA.Text+'; B='+txtFaixaB.Text+'; C='+txtFaixaC.Text + #13+#10;
   xOpcoes := xOpcoes + 'Empresa...........: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Modelo............: ' + opcoesModelo+#13+#10;
   xOpcoes := xOpcoes + 'Tipo OS...........: ' + opcoesTipoOS+#13+#10;
end;

function  TOFI_FM_R_ABC.TestarCampos:Boolean;
var
  mens,valorFaixa: String;
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

  if ((txtFaixaA.Text = '') or (txtFaixaB.Text = '') or (txtFaixaC.Text = '')) then
    begin
      mens := mens +  '.Os campos da Faixa tem que ser preenchidos.' + #13;
    end
  else
    begin
      if ((valorFaixa.ToInteger(txtFaixaA.Text) + valorFaixa.ToInteger(txtFaixaB.Text) +
                valorFaixa.ToInteger(txtFaixaC.Text))<>100) then
        begin
          mens := mens +  '.A soma dos valores dos campos da Faixa tem que ser igual a 100.' + #13;
        end;
    end;


  if lboxEmpresaSelecionada.Count = 0 then
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


procedure TOFI_FM_R_ABC.btnImprimirClick(Sender: TObject);
begin
  inherited;
   if TestarCampos then
     begin
        ExibirRel;
     end;
end;


procedure TOFI_FM_R_ABC.btnRemoverTodosEmpresaClick(Sender: TObject);
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

procedure TOFI_FM_R_ABC.btnRemoverModelosClick(Sender: TObject);
var
 i:integer;
begin
  inherited;
    if lboxModelo.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;

  lboxModelo.DeleteSelected;
end;

procedure TOFI_FM_R_ABC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(OFI_FM_R_ABC);
end;

procedure TOFI_FM_R_ABC.FormShow(Sender: TObject);
begin
  inherited;
  cdsABC01.CreateDataSet;
  cdsABC02.CreateDataSet;
  cdsABC03.CreateDataSet;
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
            lboxEmpresas.Items.Add(StrZero(dmGeral.BUS_CD_C_PAR.FieldByName('ID_EMPRESA').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString);
            dmGeral.BUS_CD_C_PAR.Next;
          end;
     end;
  dmGeral.BUS_CD_C_PAR.Close;

  // Modelo Veiculo -------------------------------------------------------
  {dmGeral.BUS_CD_C_MVE.Close;
  dmGeral.BUS_CD_C_MVE.Data :=
  dmGeral.BUS_CD_C_MVE.DataRequest(
          VarArrayOf([1, '%']));

 if not dmGeral.BUS_CD_C_MVE.IsEmpty then
     begin
       dmGeral.BUS_CD_C_MVE.First;

       while not dmGeral.BUS_CD_C_MVE.eof do
          begin
            lboxModeloDisponivel.Items.Add(StrZero(dmGeral.BUS_CD_C_MVE.FieldByName('ID_MVE').AsFloat,7,0) +
                                    ' - ' + dmGeral.BUS_CD_C_MVE.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_MVE.Next;
          end;
     end;

 dmGeral.BUS_CD_C_MVE.Close;}

 // Tipo de Ordem de Serviço --------------------------------------------------
  dmgeral.BUS_CD_C_TIO.Close;
  dmgeral.BUS_CD_C_TIO.Data :=
  dmgeral.BUS_CD_C_TIO.DataRequest(VarArrayOf([1,'%']));
   if not dmGeral.BUS_CD_C_TIO.IsEmpty then
     begin
       dmGeral.BUS_CD_C_TIO.First;

       while not dmGeral.BUS_CD_C_TIO.eof do
          begin
            lboxTipoOSDisp.Items.Add(StrZero(dmGeral.BUS_CD_C_TIO.FieldByName('ID_TIPO_OS').AsFloat,3,0) +
                                    ' - ' + dmGeral.BUS_CD_C_TIO.FieldByName('DESCRICAO').AsString);
            dmGeral.BUS_CD_C_TIO.Next;
          end;
     end;
  dmGeral.BUS_CD_C_TIO.Close;

end;



procedure TOFI_FM_R_ABC.lboxEmpresasDblClick(Sender: TObject);
begin
  inherited;
  if lboxEmpresas.ItemIndex > - 1 then
     begin
       lboxEmpresaSelecionada.Items.Add(lboxEmpresas.Items[lboxEmpresas.ItemIndex]);
       lboxEmpresas.Items.Delete(lboxEmpresas.ItemIndex);
     end;
end;

procedure TOFI_FM_R_ABC.lboxEmpresaSelecionadaDblClick(Sender: TObject);
begin
  inherited;
   if lboxEmpresaSelecionada.ItemIndex > -1 then
     begin
       lboxEmpresas.Items.Add(lboxEmpresaSelecionada.Items[lboxEmpresaSelecionada.ItemIndex]);
       lboxEmpresaSelecionada.Items.Delete(lboxEmpresaSelecionada.ItemIndex);
     end;
end;


procedure TOFI_FM_R_ABC.lboxModeloKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_MVE:= TPSQ_FM_X_MVE.Create(Self);
        PSQ_FM_X_MVE.ShowModal;
        if not dmGeral.BUS_CD_C_MVE.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxModelo,6,StrZero(dmGeral.BUS_CD_C_MVE.FieldByName('ID_MVE').AsFloat,7,0)) then
                begin
                  lboxModelo.Items.Add(StrZero(dmGeral.BUS_CD_C_MVE.FieldByName('ID_MVE').AsFloat,7,0) +
                                             ' - ' + dmGeral.BUS_CD_C_MVE.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_MVE.Free;
     end;
end;

procedure TOFI_FM_R_ABC.lboxTipoOSDispDblClick(Sender: TObject);
begin
  inherited;
   if lboxTipoOSDisp.ItemIndex > - 1 then
     begin
       lboxTipoOSSel.Items.Add(lboxTipoOSDisp.Items[lboxTipoOSDisp.ItemIndex]);
       lboxTipoOSDisp.Items.Delete(lboxTipoOSDisp.ItemIndex);
     end;
end;

procedure TOFI_FM_R_ABC.lboxTipoOSSelDblClick(Sender: TObject);
begin
  inherited;
    if lboxTipoOSSel.ItemIndex > -1 then
     begin
       lboxTipoOSDisp.Items.Add(lboxTipoOSSel.Items[lboxTipoOSSel.ItemIndex]);
       lboxTipoOSSel.Items.Delete(lboxTipoOSSel.ItemIndex);
     end;
end;



procedure TOFI_FM_R_ABC.menuItemEmpresasClick(Sender: TObject);
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



procedure TOFI_FM_R_ABC.txtfaixaAExit(Sender: TObject);
begin
  inherited;
  if (txtfaixaA.Text = '0') or (txtfaixaA.Text = '') then
    begin
      showmessage('"Faixa A" dever ser preenchida.');
      txtfaixaA.SetFocus;
    end;
end;

procedure TOFI_FM_R_ABC.txtfaixaAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TOFI_FM_R_ABC.txtfaixaBExit(Sender: TObject);
begin
  inherited;
  if (txtfaixaB.Text = '0') or (txtfaixaB.Text = '') then
    begin
      showmessage('"Faixa B" dever ser preenchida.');
      txtfaixaB.SetFocus;
    end;
end;

procedure TOFI_FM_R_ABC.txtfaixaBKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TOFI_FM_R_ABC.txtfaixaCExit(Sender: TObject);
begin
  inherited;
  if (txtfaixaC.Text = '0') or (txtfaixaC.Text = '') then
    begin
      showmessage('"Faixa C" dever ser preenchida.');
      txtfaixaC.SetFocus;
    end;
end;

procedure TOFI_FM_R_ABC.txtfaixaCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

end.
