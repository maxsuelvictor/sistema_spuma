unit ESP_UN_M_ACE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Data.DB, DateUtils, ComObj,
  Datasnap.DBClient, Vcl.ComCtrls, Vcl.CheckLst, Vcl.StdCtrls, Vcl.Mask,IniFiles ,
  {RxToolEdit,} Vcl.ImgList, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls,
  JvExMask, JvToolEdit, Vcl.Menus;

type
  TESP_FM_M_ACE = class(TPAD_FM_X_REL)
    lbl_Periodo: TLabel;
    Label2: TLabel;
    {de_Inicial: TDateEdit;
    de_Final: TDateEdit; }
    ckRetroativo: TCheckBox;
    ProgressBar2: TProgressBar;
    ProgressBar1: TProgressBar;
    ACE_CD_M_IDN: TClientDataSet;
    ACE_CD_M_PRO: TClientDataSet;
    ACE_CD_M_FIL: TClientDataSet;
    ACE_CD_M_EST_DEP: TClientDataSet;
    ACE_CD_M_EST_FOP: TClientDataSet;
    ACE_CD_M_VND: TClientDataSet;
    ACE_CD_M_CLI: TClientDataSet;
    ACE_CD_M_NFE: TClientDataSet;
    ACE_CD_M_FILtipo: TWideStringField;
    ACE_CD_M_FILcliente: TWideStringField;
    ACE_CD_M_FILemp_razao: TWideStringField;
    ACE_CD_M_FILuf: TWideStringField;
    ACE_CD_M_FILcidade: TWideStringField;
    ACE_CD_M_FILemp_bairro: TWideStringField;
    ACE_CD_M_FILemp_cep: TWideStringField;
    ACE_CD_M_FILstatus: TWideStringField;
    ACE_CD_M_EST_DEPdoc_cnpj: TWideStringField;
    ACE_CD_M_EST_DEPqtde: TFloatField;
    ACE_CD_M_EST_FOPdoc_cnpj: TWideStringField;
    ACE_CD_M_EST_FOPemp_cnpj: TWideStringField;
    ACE_CD_M_EST_FOPnome_for: TWideStringField;
    ACE_CD_M_EST_FOPid_empresa: TIntegerField;
    ACE_CD_M_EST_FOPqtde: TFloatField;
    ACE_CD_M_VNDtipo: TWideStringField;
    ACE_CD_M_VNDemp_cnpj: TWideStringField;
    ACE_CD_M_VNDcod_fab: TWideStringField;
    ACE_CD_M_VNDnum_lote: TWideStringField;
    ACE_CD_M_VNDval_lote: TWideStringField;
    ACE_CD_M_VNDlivre1: TWideStringField;
    ACE_CD_M_VNDlivre2: TWideStringField;
    ACE_CD_M_VNDqtde: TFloatField;
    ACE_CD_M_VNDvlr_liq_total: TFMTBCDField;
    ACE_CD_M_VNDmoeda: TWideStringField;
    ACE_CD_M_VNDid_transacao: TIntegerField;
    ACE_CD_M_VNDdta_estoque: TWideStringField;
    ACE_CD_M_VNDtipo_transacao: TWideStringField;
    ACE_CD_M_VNDid_cfo: TWideStringField;
    ACE_CD_M_VNDtipo_pdv: TWideStringField;
    ACE_CD_M_VNDid_pdv: TWideStringField;
    ACE_CD_M_VNDdes_pdv: TWideStringField;
    ACE_CD_M_VNDcep_pdv: TWideStringField;
    ACE_CD_M_VNDcla_pdv: TWideStringField;
    ACE_CD_M_VNDnome_vnd: TWideStringField;
    ACE_CD_M_CLItipo: TWideStringField;
    ACE_CD_M_CLIrazao_social: TWideStringField;
    ACE_CD_M_CLIfantasia: TWideStringField;
    ACE_CD_M_CLIpais: TWideStringField;
    ACE_CD_M_CLIregiao: TWideStringField;
    ACE_CD_M_CLIestado: TWideStringField;
    ACE_CD_M_CLIcidade: TWideStringField;
    ACE_CD_M_CLIbairro: TWideStringField;
    ACE_CD_M_CLIendereco: TWideStringField;
    ACE_CD_M_CLIgruporede: TWideStringField;
    ACE_CD_M_CLIcontato: TWideStringField;
    ACE_CD_M_CLIclassificacao: TWideStringField;
    ACE_CD_M_CLIvendedor: TWideStringField;
    ACE_CD_M_CLIdta_cadastro: TWideStringField;
    ACE_CD_M_CLIcep: TWideStringField;
    ACE_CD_M_CLIstatus: TWideStringField;
    ACE_CD_M_NFEtipo: TWideStringField;
    ACE_CD_M_NFEcd_loja: TWideStringField;
    ACE_CD_M_NFEnota_fiscal: TIntegerField;
    ACE_CD_M_NFEacao: TWideStringField;
    ACE_CD_M_NFEvalor: TFMTBCDField;
    ACE_CD_M_NFEqtde: TFloatField;
    ACE_CD_M_NFEdta_acao: TWideStringField;
    ACE_CD_M_NFEdta_entrada: TWideStringField;
    ACE_CD_M_IDNtipo: TWideMemoField;
    ACE_CD_M_IDNcliente: TWideStringField;
    ACE_CD_M_IDNdta_arquivo: TWideMemoField;
    ACE_CD_M_PROtipo: TWideStringField;
    ACE_CD_M_PROcod_fabricante: TWideStringField;
    ACE_CD_M_PROdes_fabricante: TWideStringField;
    ACE_CD_M_PROcod_produto: TIntegerField;
    ACE_CD_M_PROdes_produto: TWideStringField;
    ACE_CD_M_PROcod_grupo: TWideStringField;
    ACE_CD_M_PROdes_grupo: TWideStringField;
    ACE_CD_M_PROcod_familia: TWideStringField;
    ACE_CD_M_PROdes_familia: TWideStringField;
    ACE_CD_M_PROcod_sub_familia: TWideStringField;
    ACE_CD_M_PROdes_sub_familia: TWideStringField;
    ACE_CD_M_PROtipo_cod_barra: TWideStringField;
    ACE_CD_M_PROembalagem: TWideStringField;
    ACE_CD_M_PROvolume: TFloatField;
    ACE_CD_M_PROund: TWideStringField;
    ACE_CD_M_PROdta_cadastro: TWideStringField;
    ACE_CD_M_PROativo: TWideStringField;
    ACE_CD_M_EST_DEPemp_cnpj: TWideStringField;
    de_Inicial: TJvDateEdit;
    de_Final: TJvDateEdit;
    ACE_CD_M_PROcod_barra: TWideStringField;
    ACE_CD_M_CLIid_pdv: TWideStringField;
    ACE_CD_M_EST_DEPdta_movimento: TWideStringField;
    ACE_CD_M_EST_DEPid_item: TWideStringField;
    ACE_CD_M_EST_FOPid_item: TWideStringField;
    ACE_CD_M_EST_FOPind_ite_bar: TIntegerField;
    ACE_CD_M_VNDcod_barra: TWideStringField;
    btnGerencial: TButton;
    ACE_CD_M_GER: TClientDataSet;
    ACE_CD_M_GERdocumento: TWideStringField;
    ACE_CD_M_GERnumero: TIntegerField;
    ACE_CD_M_GERdata_emissao: TDateField;
    ACE_CD_M_GERdescricao: TWideStringField;
    ACE_CD_M_GERqtde: TFloatField;
    ACE_CD_M_GERvalor_unitario: TFMTBCDField;
    ACE_CD_M_GERcfop: TWideStringField;
    ACE_CD_M_GERfilial: TWideMemoField;
    pmExcluirCidade: TPopupMenu;
    btnRemoverCidade: TMenuItem;
    ACE_CD_M_GERcidade: TWideStringField;
    ACE_CD_M_GERuf: TWideStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    ClbEmpresa: TCheckListBox;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    ClbFamilia: TCheckListBox;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    Label4: TLabel;
    lboxCidade: TListBox;
    lboxUF: TCheckListBox;
    TabSheet5: TTabSheet;
    Label6: TLabel;
    pmExcluirFornecedor: TPopupMenu;
    MenuItem1: TMenuItem;
    lboxFor: TListBox;
    ACE_CD_M_GERcodigo: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerencialClick(Sender: TObject);
    procedure lboxCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverCidadeClick(Sender: TObject);
    procedure lboxForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuItem1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GerarArqProduto;
    procedure GerarArqLoja;
    procedure GerarArqEstoque;
    procedure GerarArqVenda;
    procedure GerarArqCliente;
    procedure GerarArqNotasRecebidas;
    procedure GerarNormal;
    procedure GerarExcel(Consulta:TClientDataSet);
    procedure GerarRetroativo;
    procedure FormatData;
    Function  TestarCampos: boolean;
    Function CalcData(I:integer):string;
  public
    { Public declarations }
  end;

var
  ESP_FM_M_ACE: TESP_FM_M_ACE;
  ano,mes,dia : word;
  DatArqIni,DataIni,DataFin,DataSeg,DataTer,DataQua: string;
  PriDia,SegDia,TerDia,QuaDia,QuiDia,Filial,Familia,Cnpj,Cidade,UF,Fornecedor: string;
  PriData,QuiData: TDateTime;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CID, PSQ_UN_X_FOR, enFunc;

procedure TESP_FM_M_ACE.btnGerencialClick(Sender: TObject);
var
I: integer;
begin
  inherited;
  if TestarCampos then
    begin
      Filial := '';
          for I := 0 to clbEmpresa.Items.Count - 1 do
            begin
              if ClbEmpresa.Checked[I] then
                begin
                  if Filial <> '' then
                   begin
                     Filial :=
                     Filial + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
                   end;
                  if Filial = '' then
                   begin
                     Filial :=
                     Filial +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
                   end;
                end;
            end;

          Familia := '';
          for I := 0 to clbFamilia.Items.Count - 1 do
            begin
              if clbFamilia.Checked[I] then
                begin
                  if Familia <> '' then
                   begin
                     Familia :=
                     Familia + ',' +''''+trim(copy(clbFamilia.Items[I],1,Pos(' ', clbFamilia.Items[I])))+'''';
                   end;
                  if Familia = '' then
                   begin
                     Familia :=
                     Familia +''''+ trim(copy(clbFamilia.Items[I],1,Pos(' ', clbFamilia.Items[I])))+'''';
                   end;
                end;
            end;

          Cidade := '';
          if lboxCidade.Count > 0 then
            begin
              for i := 0 to lboxCidade.Count - 1 do
                begin
                  if Cidade <> '' then
                    begin
                      Cidade :=
                      Cidade + ',' +''''+trim(copy(lboxCidade.Items[i],1,Pos('-',lboxCidade.Items[i])-1))+'''';
                    end;
                  if Cidade = '' then
                    begin
                      Cidade :=
                      Cidade +''''+trim(copy(lboxCidade.Items[i],1,Pos('-',lboxCidade.Items[i])-1))+'''';
                    end;
                end;
            end;

         Fornecedor := '';
          if lboxFor.Count > 0 then
            begin
              for i := 0 to lboxFor.Count - 1 do
                begin
                  if Fornecedor <> '' then
                    begin
                      Fornecedor :=
                      Fornecedor + ',' +''''+trim(copy(lboxFor.Items[i],1,Pos('-',lboxFor.Items[i])-1))+'''';
                    end;
                  if Fornecedor = '' then
                    begin
                      Fornecedor :=
                      Fornecedor +''''+trim(copy(lboxFor.Items[i],1,Pos('-',lboxFor.Items[i])-1))+'''';
                    end;
                end;
            end;

          UF := '';
          if lboxUF.Count > 0 then
            begin
              for i := 0 to lboxUF.Count - 1 do
                begin
                  if lboxUF.Checked[i] then
                     begin
                        if UF <> '' then
                          begin
                            UF :=
                            UF + ',' +''''+trim(copy(lboxUF.Items[i],1,Pos('-',lboxUF.Items[i])-1))+'''';
                          end;
                        if UF = '' then
                          begin
                            UF :=
                            UF +''''+trim(copy(lboxUF.Items[i],1,Pos('-',lboxUF.Items[i])-1))+'''';
                          end;
                     end;
                end;
            end;

      ACE_CD_M_GER.Close;
      ACE_CD_M_GER.Data := ACE_CD_M_GER.DataRequest(VarArrayOf([de_inicial.Text,de_final.Text,Filial,'BAYER%',
                                                                Familia,Cidade,UF,Fornecedor]));
      //cdsGerencial.Open;

      GerarExcel(ACE_CD_M_GER);
    end;
end;

procedure TESP_FM_M_ACE.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if ckRetroativo.Checked then
    GerarRetroativo
  else
    GerarNormal;
end;

procedure TESP_FM_M_ACE.btnRemoverCidadeClick(Sender: TObject);
begin
  inherited;
  if lboxCidade.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxCidade.DeleteSelected;
end;

function TESP_FM_M_ACE.CalcData(I: integer): String;
var
  Ano,Mes,Dia: word;
  iAno,iMes,iDia: string;
begin
  if ckRetroativo.Checked then
    begin
      DecodeDate(de_final.Date - I,ano,mes,dia);
      iAno := inttostr(ano);
      iMes := inttostr(mes);
      iDia := inttostr(dia);
    end
  else
    begin
      DecodeDate(de_inicial.Date - I,ano,mes,dia);
      iAno := inttostr(ano);
      iMes := inttostr(mes);
      iDia := inttostr(dia);
    end;

  if length(iDia) = 1 then
            iDia := '0'+ iDia;

  if (length(iMes) = 1) then
            iMes := '0'+ iMes;

  Result := (iAno) + (iMes) + (iDia);
end;

procedure TESP_FM_M_ACE.FormatData;
var
  iAno,iMes,iDia: String;
  I:Integer;
begin

  DecodeDate(de_final.Date ,ano,mes,dia);
  iAno := inttostr(ano);
  iMes := inttostr(mes);
  iDia := inttostr(dia);

  if length(iDia) = 1 then
    iDia := '0'+ iDia;

  if (length(iMes) = 1) then
    iMes := '0'+ iMes;

  datafin   := (iAno) + (iMes) + (iDia);  // se "retroativo";

  if not (de_inicial.Text = '  /  /    ') then
    begin
      for I := 0 to 4 do
        begin
          DecodeDate(de_inicial.Date - I,ano,mes,dia);
          iAno := inttostr(ano);
          iMes := inttostr(mes);
          iDia := inttostr(dia);

          if length(iDia) = 1 then
            iDia := '0'+ iDia;

          if (length(iMes) = 1) then
            iMes := '0'+ iMes;

          if I = 0 then
            begin
              QuiData := de_inicial.Date - I;
              QuiDia  := iDia;
              datarqini := (iAno) + (iMes) + (iDia);
              if not ckRetroativo.Checked then
              datafin   := (iAno) + (iMes) + (iDia);
            end;

          if I = 4 then
            begin
              PriData := de_inicial.Date - I;
              PriDia  := iDia;
              dataini := (iAno) + (iMes) + (iDia);
            end;
        end;
    end
  else
    begin
      showmessage('Data deve ser informada.');
      de_inicial.SetFocus;
      abort;
    end;
end;

procedure TESP_FM_M_ACE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(ESP_FM_M_ACE);
end;

procedure TESP_FM_M_ACE.FormShow(Sender: TObject);
var
ArqIni:TiniFile;
I,posi:integer;
begin
  inherited;
  // Carregar seleção de Empresas
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
  dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1, '%']));

  dmGeral.BUS_CD_C_PAR.First;
  while not dmGeral.BUS_CD_C_PAR.Eof do
    begin
      clbempresa.Items.Add(dmGeral.BUS_CD_C_PARid_empresa.AsString + ' - ' + dmGeral.BUS_CD_C_PARemp_razao.AsString);
      dmGeral.BUS_CD_C_PAR.Next;
    end;

  // Carregar seleção de Familias
  dmGeral.BUS_CD_C_FAM.Close;
  dmGeral.BUS_CD_C_FAM.Data := dmGeral.BUS_CD_C_FAM.DataRequest(VarArrayOf([1, '']));
  dmGeral.BUS_CD_C_FAM.Open;

  dmGeral.BUS_CD_C_FAM.First;
  while not dmGeral.BUS_CD_C_FAM.Eof do
    begin
      clbfamilia.Items.Add(dmGeral.BUS_CD_C_FAM.FieldByName('id_familia').AsString + ' - ' +
        dmGeral.BUS_CD_C_FAM.FieldByName('descricao').AsString);
      dmGeral.BUS_CD_C_FAM.Next;
    end;

  // Carregar seleção de Cidades
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Accera_Cid.ini');
  ArqIni.ReadSectionValues('CIDADES_RETIRADAS',lboxCidade.Items);
  ArqIni.Free;

  posi := lboxCidade.Items.Count;

  for I := 1 to posi do
    begin
      lboxCidade.Items.Add(StringReplace(lboxCidade.Items.Strings[0],'=',' - ',[rfReplaceAll, rfIgnoreCase]));
      lboxCidade.Items.Delete(0);
    end;
end;

procedure TESP_FM_M_ACE.GerarArqCliente;
var
arqCli:TextFile;
nome,arqMemo,arqTeste,campo : string;
i : integer;
begin
  campo:= '';
  inherited;
    try
      nome := ExtractFilePath(Application.ExeName) + 'accera\ACC_PDVS_' + CalcData(0) + '.txt';
      assignFile(arqCli, nome);
    if FileExists(nome) then
      DeleteFile(nome);

      Rewrite(arqCli);
      arqmemo :='';
      arqTeste :='';
    writeln(arqCli,'H;',ACE_CD_M_IDNCLIENTE.Text,';',CalcData(0));
    ACE_CD_M_CLI.First;

    while not ACE_CD_M_CLI.Eof do
      begin
        for I := 0 to ACE_CD_M_CLI.Fields.Count - 1 do
          begin
            arqMemo := arqMemo + Trim(ACE_CD_M_CLI.Fields[i].Text);
            if i < (ACE_CD_M_CLI.Fields.Count -1) then
              arqMemo := arqMemo + ';';
          end;
          campo := ACE_CD_M_CLIID_PDV.Text;
          ACE_CD_M_CLI.Next;
        if campo <> ACE_CD_M_CLIID_PDV.Text then
          begin
            writeln(arqCli, arqMemo);
            arqMemo := '';
          end
        else
          begin
            if ACE_CD_M_CLI.Eof then
              begin
                writeln(arqCli, arqMemo);
              end;
            arqMemo := '';
          end;
      end;
    writeln(arqCli,'E');

    CloseFile(arqCli);
    progressBar1.Position := 90;
    finally
    end;
end;

procedure TESP_FM_M_ACE.GerarArqEstoque;
var
arqEst:TextFile;
nome,arqMemo,campo,arqTest : string;
I,J,L,sld_crg,sld_zero,teste,menor,maior : integer;
begin
  campo:= '';
  arqTest := '';
  inherited;
    try
      nome := ExtractFilePath(Application.ExeName) + 'accera\ACC_POSESTQ_' + CalcData(0) + '.txt';
      assignFile(arqEst, nome);
    if FileExists(nome) then
      DeleteFile(nome);

      Rewrite(arqEst);


      {menor := StrToInt(datafin);
      maior := StrToInt(dataini);

    ACE_CD_M_EST_FOP.First;
    while not ACE_CD_M_EST_FOP.Eof do
      begin
        if ckRetroativo.Checked then
          begin
            ACE_CD_M_EST_DEP.Close;
            ACE_CD_M_EST_DEP.Data := ACE_CD_M_EST_DEP.DataRequest(VarArrayOf([1,filial,de_inicial.Text,de_final.Text,ACE_CD_M_EST_FOPid_item.Text,Familia]));
          end
        else
          begin
            ACE_CD_M_EST_DEP.Close;
            ACE_CD_M_EST_DEP.Data := ACE_CD_M_EST_DEP.DataRequest(VarArrayOf([0,filial,de_inicial.Text,de_final.Text,ACE_CD_M_EST_FOPid_item.Text,Familia]));
          end;
        ACE_CD_M_EST_DEP.First;
        while not ACE_CD_M_EST_DEP.Eof do
          begin
            if menor > ACE_CD_M_EST_DEPdta_movimento.AsInteger then
              menor := ACE_CD_M_EST_DEPdta_movimento.AsInteger;
            if maior < ACE_CD_M_EST_DEPdta_movimento.AsInteger then
              maior := ACE_CD_M_EST_DEPdta_movimento.AsInteger;
            ACE_CD_M_EST_DEP.Next;
          end;
        ACE_CD_M_EST_FOP.Next;
      end;}

    if ckRetroativo.Checked then
      writeln(arqEst,'H;',ACE_CD_M_IDNCLIENTE.Text,';',CalcData(4),';',datafin)
    else
      writeln(arqEst,'H;',ACE_CD_M_IDNCLIENTE.Text,';',CalcData(4),';',dataini);

    ACE_CD_M_EST_FOP.First;

    while not ACE_CD_M_EST_FOP.Eof do
      begin
       // if cdsAcceraEst2id_filial.Text <> '5' then
       //   begin
            sld_crg := ACE_CD_M_EST_FOPqtde.AsInteger;

            ACE_CD_M_EST_DEP.Filtered := false;

            if sld_crg < 0 then
              sld_zero := 0
            else
              sld_zero := sld_crg;

            L := 4;

            if ckRetroativo.Checked then
              begin
                ACE_CD_M_EST_DEP.Close;
                ACE_CD_M_EST_DEP.Data := ACE_CD_M_EST_DEP.DataRequest(VarArrayOf([1,filial,de_inicial.Text,de_final.Text,ACE_CD_M_EST_FOPind_ite_bar.Text,ACE_CD_M_EST_FOPid_item.Text,Familia,Cidade,UF,Fornecedor]));
              end
            else
              begin
                ACE_CD_M_EST_DEP.Close;
                ACE_CD_M_EST_DEP.Data := ACE_CD_M_EST_DEP.DataRequest(VarArrayOf([0,filial,de_inicial.Text,de_final.Text,ACE_CD_M_EST_FOPind_ite_bar.Text,ACE_CD_M_EST_FOPid_item.Text,Familia,Cidade,UF,Fornecedor]));
              end;

            ACE_CD_M_EST_DEP.Filtered := true;
            ACE_CD_M_EST_DEP.Filter   := ' emp_cnpj = ' + ACE_CD_M_EST_FOPemp_cnpj.text;

          //  if ACE_CD_M_EST_DEPid_item.Text = '7892058100541' then
           //    showmessage('oi');


            if not ACE_CD_M_EST_DEP.IsEmpty then
              begin
                ACE_CD_M_EST_DEP.First;
                while not ACE_CD_M_EST_DEP.Eof do
                  begin
                    if ACE_CD_M_EST_DEPdta_movimento.AsInteger = strToint(datafin) - L then
                      begin
                        sld_crg := sld_crg + ACE_CD_M_EST_DEPqtde.AsInteger;
                        if sld_crg < 0 then
                          sld_zero := 0
                        else
                          sld_zero := sld_crg;
                        arqMemo := arqMemo +'V;'+ Trim(ACE_CD_M_EST_DEPemp_cnpj.Text) +';'+ Trim(ACE_CD_M_EST_DEPdoc_cnpj.Text)+';'+ Trim(ACE_CD_M_EST_DEPid_item.Text)+';'+';'+';'+ IntToStr(sld_zero) +';H;'+ Trim(ACE_CD_M_EST_DEPdta_movimento.Text) +#13+#10;
                        if pos(arqMemo,arqTest)=0 then
                          begin
                            write(arqEst, arqMemo);
                            arqTest := arqTest + arqMemo;
                          end;
                        arqMemo := '';
                        L := L - 1;
                      end
                    else
                      begin
                        J := strToint(CalcData(0)) - ACE_CD_M_EST_DEPdta_movimento.AsInteger;

                        if J > 4 then J := 4;

                        for I := L downto J do
                          begin
                            arqMemo := arqMemo +'V;'+ Trim(ACE_CD_M_EST_DEPemp_cnpj.Text) +';'+ Trim(ACE_CD_M_EST_DEPdoc_cnpj.Text)+';'+ Trim(ACE_CD_M_EST_DEPid_item.Text)+';'+';'+';'+ IntToStr(sld_zero) +';H;'+ CalcData(I) +#13+#10;
                            if pos(arqMemo,arqTest)=0 then
                              begin
                                write(arqEst, arqMemo);
                                arqTest := arqTest + arqMemo;
                              end;
                            arqMemo := '';
                          end;
                        L:= J - 1;
                      end;
                    ACE_CD_M_EST_DEP.Next;
                    if (ACE_CD_M_EST_DEP.Eof) and (not (L = 0))then
                      begin
                        for I := L downto 0 do
                          begin
                            arqMemo := arqMemo +'V;'+ Trim(ACE_CD_M_EST_DEPemp_cnpj.Text) +';'+ Trim(ACE_CD_M_EST_DEPdoc_cnpj.Text)+';'+ Trim(ACE_CD_M_EST_DEPid_item.Text)+';'+';'+';'+ IntToStr(sld_zero) +';H;'+ CalcData(I) +#13+#10;
                            if pos(arqMemo,arqTest)=0 then
                              begin
                                write(arqEst, arqMemo);
                                arqTest := arqTest + arqMemo;
                              end;
                            arqMemo := '';
                          end;
                      end;
                  end;
              end
            else
              begin
                for I := 4 downto 0 do
                  begin
                    arqMemo := arqMemo +'V;'+ Trim(ACE_CD_M_EST_FOPemp_cnpj.Text) +';'+ Trim(ACE_CD_M_EST_FOPdoc_cnpj.Text)+';'+ Trim(ACE_CD_M_EST_FOPid_item.Text)+';'+';'+';'+ IntToStr(sld_zero) +';H;'+ CalcData(I) +#13+#10;
                    if pos(arqMemo,arqTest)=0 then
                      begin
                        write(arqEst, arqMemo);
                        arqTest := arqTest + arqMemo;
                      end;
                    arqMemo := '';
                  end;
              end;
            ACE_CD_M_EST_FOP.Next;
          end;

    //  end;

    writeln(arqEst,'E');

    CloseFile(arqEst);
    progressBar1.Position := 70;
    finally
    end;
end;

procedure TESP_FM_M_ACE.GerarArqLoja;
var
arqLoj:TextFile;
nome : string;
i : integer;
begin
  inherited;
    try
      nome := ExtractFilePath(Application.ExeName) + 'accera\ACC_CADSITE_' + CalcData(0) + '.txt';
      assignFile(arqLoj, nome);
    if FileExists(nome) then
      DeleteFile(nome);

      Rewrite(arqLoj);

    writeln(arqLoj,'H;',ACE_CD_M_IDNCLIENTE.Text,';',CalcData(0));
    ACE_CD_M_FIL.First;

    while not ACE_CD_M_FIL.Eof do
      begin
        for I := 0 to ACE_CD_M_FIL.Fields.Count - 1 do
          begin
            write(arqLoj,Trim(ACE_CD_M_FIL.Fields[i].Text));
            if i < (ACE_CD_M_FIL.Fields.Count -1) then
              write(arqLoj,';')
          end;
        ACE_CD_M_FIL.Next;
        writeln(arqLoj,'')
      end;
    writeln(arqLoj,'E');

    CloseFile(arqLoj);
    progressBar1.Position := 70;
    finally
    end;
end;

procedure TESP_FM_M_ACE.GerarArqNotasRecebidas;
var
arqNfr:TextFile;
nome,arqMemo,arqTeste : string;
i,menor,maior: integer;
begin
  inherited;
    try
      nome := ExtractFilePath(Application.ExeName) + 'accera\ACC_NFS_' + CalcData(0) + '.txt';
      assignFile(arqNfr, nome);
    if FileExists(nome) then
      DeleteFile(nome);

      Rewrite(arqNfr);
      arqmemo :='';
      arqTeste :='';

      menor := StrToInt(datafin);
      maior := StrToInt(dataini);

    ACE_CD_M_NFE.First;
    while not ACE_CD_M_NFE.Eof do
      begin
        if menor > ACE_CD_M_NFEDTA_ENTRADA.AsInteger then
          menor := ACE_CD_M_NFEDTA_ENTRADA.AsInteger;
        if maior < ACE_CD_M_NFEDTA_ENTRADA.AsInteger then
          maior := ACE_CD_M_NFEDTA_ENTRADA.AsInteger;
        ACE_CD_M_NFE.Next;
      end;

    writeln(arqNfr,'H;',ACE_CD_M_IDNCLIENTE.Text,';',IntToStr(menor),';',IntToStr(maior));
    ACE_CD_M_NFE.First;

    while not ACE_CD_M_NFE.Eof do
      begin
        for I := 0 to ACE_CD_M_NFE.Fields.Count - 1 do
          begin
            arqMemo := arqMemo + Trim(ACE_CD_M_NFE.Fields[i].Text);
            if i < (ACE_CD_M_NFE.Fields.Count -1) then
              arqMemo := arqMemo + ';';
          end;
        ACE_CD_M_NFE.Next;
        if arqMemo <> arqTeste then
          begin
            arqTeste := arqMemo;
            writeln(arqNfr, arqMemo);
            arqMemo := '';
          end
        else
          begin
            if ACE_CD_M_NFE.Eof then
              begin
                arqTeste := arqMemo;
                writeln(arqNfr, arqMemo);
              end;
            arqMemo := '';
          end;
      end;
    writeln(arqNfr,'E');

    CloseFile(arqNfr);
    progressBar1.Position := 100;
    finally
    end;
end;

procedure TESP_FM_M_ACE.GerarArqProduto;
var
arqProd:TextFile;
nome,arqMemo,arqTeste,campo : string;
i : integer;
begin
  campo:= '';
  inherited;
    try
      nome := ExtractFilePath(Application.ExeName) + 'accera\ACC_CADPROD_' + CalcData(0) + '.txt';
      assignFile(arqProd, nome);
    if FileExists(nome) then
      DeleteFile(nome);

      Rewrite(arqProd);
      arqmemo :='';
      arqTeste :='';

    writeln(arqProd,'H;',ACE_CD_M_IDNCLIENTE.Text,';',CalcData(0));
    ACE_CD_M_PRO.First;

    while not ACE_CD_M_PRO.Eof do
      begin
        for I := 0 to ACE_CD_M_PRO.Fields.Count -1  do
          begin
            arqMemo := arqMemo + Trim(ACE_CD_M_PRO.Fields[i].Text);
            if i < (ACE_CD_M_PRO.Fields.Count -1) then
              arqMemo := arqMemo + ';';
          end;
          campo := ACE_CD_M_PROCOD_PRODUTO.Text;
          ACE_CD_M_PRO.Next;
        if campo <> ACE_CD_M_PROCOD_PRODUTO.Text then
          begin
            arqTeste := arqMemo;
            writeln(arqProd, arqMemo);
            arqMemo := '';
          end
        else
          begin
            if ACE_CD_M_PRO.Eof then
              begin
                arqTeste := arqMemo;
                writeln(arqProd, arqMemo);
              end;
            arqMemo := '';
          end;
      end;
    writeln(arqProd,'E');

    CloseFile(arqProd);
    progressBar1.Position := 60;
    finally
    end;
end;

procedure TESP_FM_M_ACE.GerarArqVenda;
var
ArqVnd:TextFile;
nome,ArqCanc,rcnpj,rcodbarra,rlote,ridtran,rdatatran,rtipotran : string;
i,menor,maior: integer;
begin
  inherited;
  rcnpj := '';
  rcodbarra := '';
  rlote := '';
  ridtran := '';
  rdatatran := '';
  rtipotran := '';
    try
      nome := ExtractFilePath(Application.ExeName) + 'accera\ACC_SELLOUT_' + CalcData(0) + '.txt';
      assignFile(ArqVnd, nome);
    if FileExists(nome) then
      DeleteFile(nome);

      Rewrite(ArqVnd);
      menor := StrToInt(datafin);
      maior := StrToInt(dataini);
    ACE_CD_M_VND.First;
    while not ACE_CD_M_VND.Eof do
      begin
        if menor > ACE_CD_M_VNDDTA_ESTOQUE.AsInteger then
          menor := ACE_CD_M_VNDDTA_ESTOQUE.AsInteger;
        if maior < ACE_CD_M_VNDDTA_ESTOQUE.AsInteger then
          maior := ACE_CD_M_VNDDTA_ESTOQUE.AsInteger;
        ACE_CD_M_VND.Next;
      end;

    writeln(ArqVnd,'H;',ACE_CD_M_IDNCLIENTE.Text,';',InttoStr(menor),';',InttoStr(maior));
    ACE_CD_M_VND.First;

    while not ACE_CD_M_VND.Eof do
      begin
        if (rcnpj = ACE_CD_M_VNDemp_cnpj.AsString) and
          (rcodbarra = ACE_CD_M_VNDcod_barra.AsString) and
          (rlote = ACE_CD_M_VNDnum_lote.AsString) and
          (ridtran = ACE_CD_M_VNDid_transacao.AsString) and
          (rdatatran = ACE_CD_M_VNDdta_estoque.AsString) and
          (rtipotran = ACE_CD_M_VNDtipo_transacao.AsString) then
          begin
            ACE_CD_M_VND.Next;
          end
        else
          begin
            rcnpj := ACE_CD_M_VNDemp_cnpj.AsString;
            rcodbarra := ACE_CD_M_VNDcod_barra.AsString;
            rlote := ACE_CD_M_VNDnum_lote.AsString;
            ridtran := ACE_CD_M_VNDid_transacao.AsString;
            rdatatran := ACE_CD_M_VNDdta_estoque.AsString;
            rtipotran := ACE_CD_M_VNDtipo_transacao.AsString;

            ArqCanc := '';
            for I := 0 to ACE_CD_M_VND.Fields.Count - 1 do
              begin
                if ACE_CD_M_VNDTIPO_TRANSACAO.AsString = 'C' then
                  begin
                    if ACE_CD_M_VND.Fields[i].Text = 'C' then
                      begin
                        ArqCanc := ArqCanc + 'V';
                      end
                    else
                      begin
                        ArqCanc := ArqCanc + Trim(StringReplace(ACE_CD_M_VND.Fields[i].Text,'.','', [rfReplaceAll]));
                      end;
                  end;
                write(ArqVnd,Trim(StringReplace(ACE_CD_M_VND.Fields[i].Text,'.','', [rfReplaceAll])));
                if i < (ACE_CD_M_VND.Fields.Count -1) then
                  begin
                    if ACE_CD_M_VNDTIPO_TRANSACAO.AsString = 'C' then
                      begin
                        ArqCanc := ArqCanc + ';';
                      end;
                    write(ArqVnd,';')
                  end;
              end;

            if ACE_CD_M_VNDTIPO_TRANSACAO.AsString = 'C' then
              begin
                writeln(ArqVnd,'');
                write(ArqVnd,ArqCanc);
              end;

            ACE_CD_M_VND.Next;
            writeln(ArqVnd,'')
          end;
      end;
    writeln(ArqVnd,'E');

    CloseFile(ArqVnd);
    progressBar1.Position := 80;
    finally
    end;
end;

procedure TESP_FM_M_ACE.GerarExcel(Consulta: TClientDataSet);
var
  coluna, linha: integer;
  Excel : Variant;
  valor: string;
begin
  try
    Excel := CreateOleObject('Excel.Application');
    Excel.Workbooks.add(1);
    Excel.cells.NumberFormat := AnsiChar('@');
  except
    Application.MessageBox ('Versão do Ms-Excel'+
    'Incompatível','Erro',MB_OK+MB_ICONEXCLAMATION);
  end;
  Screen.Cursor := crHourGlass;
  try

  Consulta.First;
  try
    for linha:=0 to Consulta.RecordCount-1 do
      begin
        for coluna:=1 to Consulta.FieldCount do // eliminei a coluna 0 da relação do Excel
          begin
            valor:= Consulta.Fields[coluna-1].AsString;
            {if (coluna = 5) or (coluna = 6) then
              Excel.cells [linha+2,coluna]:=copy(valor,1,5)
            else }
              Excel.cells[linha+2,coluna] :=trim(valor);
          end;
        Consulta.Next;
      end;

    for coluna:=1 to Consulta.FieldCount do // eliminei a coluna 0 da relação do Excel
      begin
        valor:= Consulta.Fields[coluna-1].DisplayLabel;
        Excel.cells[1,coluna].font.bold :=True;
        Excel.cells[1,coluna].Interior.Color :=clSilver;
        Excel.cells[1,coluna].Borders.LineStyle  := 1;
        Excel.cells[1,coluna].Borders.Color   := clBlack;
        Excel.cells[1,coluna]:=AnsiUpperCase(Trim(valor));
      end;
    Excel.columns.AutoFit; // esta linha é para fazer com que o Excel dimencione as células adequadamente.
    Excel.visible:=true;
  except
    Application.MessageBox ('Aconteceu um erro desconhecido durante a conversão'+
    'da tabela para o Ms-Excel','Erro',MB_OK+MB_ICONEXCLAMATION);
  end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TESP_FM_M_ACE.GerarNormal;
var
progDate,I : integer;
begin
  inherited;
  progressBar2.max := DaysBetween(de_final.Date,de_inicial.Date) + 1;
  progressBar2.Position := 0;

  if not TestarCampos then
    begin
      de_inicial.SetFocus;
      exit;
    end;

  while de_inicial.Date <= de_final.Date do
    begin

      FormatData;

      if dmgeral.BUS_CD_C_PARid_empresa.AsString <>'' then
        begin
          if not DirectoryExists(ExtractFilePath(Application.ExeName)+'\accera') then
            ForceDirectories(ExtractFilePath(Application.ExeName)+'\accera');

          Filial := '';
          for I := 0 to clbEmpresa.Items.Count - 1 do
            begin
              if ClbEmpresa.Checked[I] then
                begin
                  if Filial <> '' then
                   begin
                     Filial :=
                     Filial + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
                   end;
                  if Filial = '' then
                   begin
                     Filial :=
                     Filial +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
                   end;
                end;
            end;

          Familia := '';
          for I := 0 to clbFamilia.Items.Count - 1 do
            begin
              if clbFamilia.Checked[I] then
                begin
                  if Familia <> '' then
                   begin
                     Familia :=
                     Familia + ',' +''''+trim(copy(clbFamilia.Items[I],1,Pos(' ', clbFamilia.Items[I])))+'''';
                   end;
                  if Familia = '' then
                   begin
                     Familia :=
                     Familia +''''+ trim(copy(clbFamilia.Items[I],1,Pos(' ', clbFamilia.Items[I])))+'''';
                   end;
                end;
            end;

          Cidade := '';
          if lboxCidade.Count > 0 then
            begin
              for i := 0 to lboxCidade.Count - 1 do
                begin
                  if Cidade <> '' then
                    begin
                      Cidade :=
                      Cidade + ',' +''''+trim(copy(lboxCidade.Items[i],1,Pos('-',lboxCidade.Items[i])-1))+'''';
                    end;
                  if Cidade = '' then
                    begin
                      Cidade :=
                      Cidade +''''+trim(copy(lboxCidade.Items[i],1,Pos('-',lboxCidade.Items[i])-1))+'''';
                    end;
                end;
            end;

          Fornecedor := '';
          if lboxFor.Count > 0 then
            begin
              for i := 0 to lboxFor.Count - 1 do
                begin
                  if Fornecedor <> '' then
                    begin
                      Fornecedor :=
                      Fornecedor + ',' +''''+trim(copy(lboxFor.Items[i],1,Pos('-',lboxFor.Items[i])-1))+'''';
                    end;
                  if Fornecedor = '' then
                    begin
                      Fornecedor :=
                      Fornecedor +''''+trim(copy(lboxFor.Items[i],1,Pos('-',lboxFor.Items[i])-1))+'''';
                    end;
                end;
            end;

          UF := '';
          if lboxUF.Count > 0 then
            begin
              for i := 0 to lboxUF.Count - 1 do
                begin
                  if lboxUF.Checked[i] then
                     begin
                        if UF <> '' then
                          begin
                            UF :=
                            UF + ',' +''''+trim(copy(lboxUF.Items[i],1,Pos('-',lboxUF.Items[i])-1))+'''';
                          end;
                        if UF = '' then
                          begin
                            UF :=
                            UF +''''+trim(copy(lboxUF.Items[i],1,Pos('-',lboxUF.Items[i])-1))+'''';
                          end;
                     end;
                end;
            end;

          ACE_CD_M_CLI.Close;
          ACE_CD_M_CLI.Data := ACE_CD_M_CLI.DataRequest(VarArrayOf([0, Filial, de_inicial.Text,Cidade,UF,Fornecedor]));
          progressBar1.Position := 10;

          ACE_CD_M_EST_FOP.Close;
          ACE_CD_M_EST_FOP.Data := ACE_CD_M_EST_FOP.DataRequest(VarArrayOf([0, filial,de_inicial.Text,'',Familia,Cidade,UF,Fornecedor]));
          progressBar1.Position := 20;

          ACE_CD_M_PRO.Close;
          ACE_CD_M_PRO.Data := ACE_CD_M_PRO.DataRequest(VarArrayOf([0, filial,de_inicial.Text,Familia,Cidade,UF,Fornecedor]));
          progressBar1.Position := 30;

          ACE_CD_M_VND.Close;
          ACE_CD_M_VND.Data := ACE_CD_M_VND.DataRequest(VarArrayOf([0, filial,de_inicial.Text,'',Familia,Cidade,UF,Fornecedor]));
          progressBar1.Position := 40;

          ACE_CD_M_NFE.Close;
          ACE_CD_M_NFE.Data := ACE_CD_M_NFE.DataRequest(VarArrayOf([0, filial,de_inicial.Text,'',Familia,Cidade,UF,Fornecedor]));
          progressBar1.Position := 50;
        end;

      if dmgeral.BUS_CD_C_PARemp_cnpj.AsString <>'' then
        begin
        //Cnpj := dmgeral.qryBusFilialCNPJ.AsString;

        ACE_CD_M_FIL.Close;
        ACE_CD_M_FIL.Data := ACE_CD_M_FIL.DataRequest(VarArrayOf([Filial]));

        ACE_CD_M_IDN.Close;
        ACE_CD_M_IDN.Data := ACE_CD_M_IDN.DataRequest(VarArrayOf([dmgeral.BUS_CD_C_PARid_empresa.AsString]));

        end;

      GerarArqProduto;
      GerarArqLoja;
      GerarArqEstoque;
      GerarArqVenda;
      GerarArqCliente;
      GerarArqNotasRecebidas;

      de_inicial.Date := de_inicial.Date + 1;
      progressBar2.Position := progressBar2.Position + 1;
    end;
    ShowMessage('Arquivo gerado com Sucesso!');
    de_inicial.Text := '';
    //de_final.Text := '';
    de_inicial.SetFocus;
end;

procedure TESP_FM_M_ACE.GerarRetroativo;
var
progDate,I : integer;
begin
  inherited;
  if not TestarCampos then
    begin
      de_inicial.SetFocus;
      exit;
    end;

      FormatData;

      if dmgeral.BUS_CD_C_PARid_empresa.AsString <>'' then
        begin
          if not DirectoryExists(ExtractFilePath(Application.ExeName)+'\accera') then
            ForceDirectories(ExtractFilePath(Application.ExeName)+'\accera');

          Filial := '';
          for I := 0 to clbEmpresa.Items.Count - 1 do
            begin
              if ClbEmpresa.Checked[I] then
                begin
                  if Filial <> '' then
                   begin
                     Filial :=
                     Filial + ',' +''''+trim(copy(ClbEmpresa.Items[I],1,1))+'''';
                   end;
                  if Filial = '' then
                   begin
                     Filial :=
                     Filial +''''+ trim(copy(ClbEmpresa.Items[I],1,1))+'''';
                   end;
                end;
            end;

          Familia := '';
          for I := 0 to clbFamilia.Items.Count - 1 do
            begin
              if clbFamilia.Checked[I] then
                begin
                  if Familia <> '' then
                   begin
                     Familia :=
                     Familia + ',' +''''+trim(copy(clbFamilia.Items[I],1,1))+'''';
                   end;
                  if Familia = '' then
                   begin
                     Familia :=
                     Familia +''''+ trim(copy(clbFamilia.Items[I],1,1))+'''';
                   end;
                end;
            end;

          Cidade := '';
          if lboxCidade.Count > 0 then
            begin
              for i := 0 to lboxCidade.Count - 1 do
                begin
                  if Cidade <> '' then
                    begin
                      Cidade :=
                      Cidade + ',' +''''+trim(copy(lboxCidade.Items[i],1,Pos('-',lboxCidade.Items[i])-1))+'''';
                    end;
                  if Cidade = '' then
                    begin
                      Cidade :=
                      Cidade +''''+trim(copy(lboxCidade.Items[i],1,Pos('-',lboxCidade.Items[i])-1))+'''';
                    end;
                end;
            end;

          Fornecedor := '';
          if lboxFor.Count > 0 then
            begin
              for i := 0 to lboxFor.Count - 1 do
                begin
                  if Fornecedor <> '' then
                    begin
                      Fornecedor :=
                      Fornecedor + ',' +''''+trim(copy(lboxFor.Items[i],1,Pos('-',lboxFor.Items[i])-1))+'''';
                    end;
                  if Fornecedor = '' then
                    begin
                      Fornecedor :=
                      Fornecedor +''''+trim(copy(lboxFor.Items[i],1,Pos('-',lboxFor.Items[i])-1))+'''';
                    end;
                end;
            end;

          UF := '';
          if lboxUF.Count > 0 then
            begin
              for i := 0 to lboxUF.Count - 1 do
                begin
                  if lboxUF.Checked[i] then
                     begin
                        if UF <> '' then
                          begin
                            UF :=
                            UF + ',' +''''+trim(copy(lboxUF.Items[i],1,Pos('-',lboxUF.Items[i])-1))+'''';
                          end;
                        if UF = '' then
                          begin
                            UF :=
                            UF +''''+trim(copy(lboxUF.Items[i],1,Pos('-',lboxUF.Items[i])-1))+'''';
                          end;
                     end;
                end;
            end;

          ACE_CD_M_CLI.Close;
          ACE_CD_M_CLI.Data := ACE_CD_M_CLI.DataRequest(VarArrayOf([1,Filial,de_final.Text,Cidade,UF]));
          progressBar1.Position := 10;

          ACE_CD_M_EST_FOP.Close;
          ACE_CD_M_EST_FOP.Data := ACE_CD_M_EST_FOP.DataRequest(VarArrayOf([1,Filial,de_inicial.Text,de_final.Text,Familia,Cidade,UF,Fornecedor]));
          progressBar1.Position := 20;

          ACE_CD_M_PRO.Close;
          ACE_CD_M_PRO.Data := ACE_CD_M_PRO.DataRequest(VarArrayOf([1,Filial,de_final.Text,Familia,Cidade,UF,Fornecedor]));
          progressBar1.Position := 30;

          ACE_CD_M_VND.Close;
          ACE_CD_M_VND.Data := ACE_CD_M_VND.DataRequest(VarArrayOf([1,filial,de_final.Text,de_inicial.Text,Familia,Cidade,UF,Fornecedor]));
          progressBar1.Position := 40;

          ACE_CD_M_NFE.Close;
          ACE_CD_M_NFE.Data := ACE_CD_M_NFE.DataRequest(VarArrayOf([1,Filial,de_inicial.Text,de_final.Text,Familia,Cidade,UF,Fornecedor]));
          progressBar1.Position := 50;
        end;

      if dmgeral.BUS_CD_C_PARemp_cnpj.AsString <>'' then
        begin
        // Cnpj := dmgeral.qryBusFilialCNPJ.AsString;

        ACE_CD_M_FIL.Close;
        ACE_CD_M_FIL.Data := ACE_CD_M_FIL.DataRequest(VarArrayOf([filial]));

        ACE_CD_M_IDN.Close;
        ACE_CD_M_IDN.Data := ACE_CD_M_IDN.DataRequest(VarArrayOf([dmgeral.BUS_CD_C_PARid_empresa.AsString]));
        end;

      GerarArqProduto;
      GerarArqLoja;
      GerarArqEstoque;
      GerarArqVenda;
      GerarArqCliente;
      GerarArqNotasRecebidas;

    ShowMessage('Arquivo gerado com Sucesso!');
    de_inicial.Text := '';
    //de_final.Text := '';
    de_inicial.SetFocus;
end;

procedure TESP_FM_M_ACE.lboxCidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
    begin
      PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
      PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
        begin
          if not dmGeral.ExisteRegNoListBox(lboxCidade,10,PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString) then
            begin
              lboxCidade.Items.Add(Trim(
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString)+' - '+
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString+'-'+
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString);
            end;
        end;
      PSQ_FM_X_CID.Free;
    end;
end;

procedure TESP_FM_M_ACE.lboxForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f3 then
     begin
        PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
        PSQ_FM_X_FOR.ShowModal;
        if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
           begin
             if not dmGeral.ExisteRegNoListBox(lboxFor,6,PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsString) then
                begin
                  lboxFor.Items.Add(StrZero(PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsFloat,6,0) +
                                    ' - ' + PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString);
                end;
           end;
         PSQ_FM_X_FOR.Free;
     end;
end;

procedure TESP_FM_M_ACE.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if lboxFor.ItemIndex = -1 then
     begin
       showmessage('Nenhum registro foi selecionado.');
       exit;
     end;
  lboxFor.DeleteSelected;
end;

function TESP_FM_M_ACE.TestarCampos: boolean;
var
mens: String;
I,J,K:integer;
begin
  J := 0;
  K := 0;
  if ((de_Inicial.Text = '  /  /    ') or (de_Final.Text = '  /  /    ')) then
    begin
      mens := mens +  '.O período deve ser preenchido.' + #13;
    end
  else
    begin
      if (de_Inicial.Date > de_Final.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end;

  for I := 0 to clbEmpresa.Items.Count - 1 do
    begin
      if ClbEmpresa.Checked[I] then
        begin
          J := 1;
        end;
    end;

  for I := 0 to clbFamilia.Items.Count - 1 do
    begin
      if clbFamilia.Checked[I] then
        begin
          K := 1;
        end;
    end;

  if J = 0 then
    mens := mens +  '.Filial deve ser selecionada' + #13;

  if K = 0 then
    mens := mens +  '.Familia deve ser selecionada' + #13;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end
  else
    Result := True;
end;

end.
