unit CAD_UN_R_E01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_REL, Vcl.ImgList, Vcl.StdCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.DBCtrls,
  JvMaskEdit, JvDBControls, JvExMask, JvToolEdit, Vcl.Mask, frxClass, frxDBSet,
  Data.DB, vcl.wwdatsrc, Datasnap.DBClient, vcl.Wwdbedit, vcl.Wwdotdot,
  vcl.Wwdbcomb;

type
  TCAD_FM_R_E01 = class(TPAD_FM_X_REL)
    Label3: TLabel;
    txtEmpresa: TDBEdit;
    Label4: TLabel;
    txtData: TJvDBDateEdit;
    Label5: TLabel;
    txtNotaFiscal: TDBEdit;
    Label6: TLabel;
    txtNroPedido: TDBEdit;
    Label7: TLabel;
    txtCnpfCpf: TDBEdit;
    Label8: TLabel;
    txtCliente: TDBEdit;
    Label9: TLabel;
    txtVolume: TDBEdit;
    Label10: TLabel;
    txtCidade: TJvDBMaskEdit;
    Label11: TLabel;
    cdsEtiquetas: TClientDataSet;
    cdsEtiquetasNOME_ETQ: TStringField;
    cdsEtiquetasALTURA_ETQ: TFloatField;
    cdsEtiquetasLARGURA_ETQ: TFloatField;
    cdsEtiquetasTOP_DADOS_NF: TFloatField;
    cdsEtiquetasESQ_DADOS_NF: TFloatField;
    cdsEtiquetasTOP_VOLUME_ETQ: TFloatField;
    cdsEtiquetasESQ_VOLUME_ETQ: TFloatField;
    cdsEtiquetasTOP_EMPRESA_ETQ: TFloatField;
    cdsEtiquetasESQ_EMPRESA_ETQ: TFloatField;
    cdsEtiquetasTAM_FON_DADOS_NF: TFloatField;
    cdsEtiquetasTAM_FON_VOLUME: TFloatField;
    cdsEtiquetasTAM_FON_EMPRESA: TFloatField;
    cdsCliente: TClientDataSet;
    cdsClienteNRO_PED: TIntegerField;
    cdsClienteDATA: TDateField;
    cdsClienteNF: TIntegerField;
    cdsClienteNOME_CLIENTE: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsClienteVOLUME: TStringField;
    cdsClientePESSOA: TStringField;
    cdsClienteNOME_EMPRESA: TStringField;
    cdsClienteCIDADE: TStringField;
    cdsClienteUF: TStringField;
    dsEtiquetas: TwwDataSource;
    dsCliente: TwwDataSource;
    frdbCliente: TfrxDBDataset;
    frdbEtiqueta: TfrxDBDataset;
    frPadrao: TfrxReport;
    frEtiquetasPerson: TfrxReport;
    txtUF: TDBEdit;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gbFiltrosEnter(Sender: TObject);
    procedure gbFiltrosExit(Sender: TObject);
  private
    { Private declarations }
    procedure carregarListaArquivos;
    var
      xDiretorio:string;
  public
    { Public declarations }
    var
      xFormCall:String;
  end;

var
  CAD_FM_R_E01: TCAD_FM_R_E01;

implementation

{$R *.dfm}

uses uDmGeral;



procedure TCAD_FM_R_E01.btnImprimirClick(Sender: TObject);
  var
  txt: TMaskEdit;
  cnpj_cpf_mask: String;
begin
   inherited;
   if lbxRelatorios.ItemIndex = 0 then
      begin
        frPadrao.Variables['ft_cnpj_cpf'] :=QuotedStr('');

        txt := TMaskEdit.Create(self);
        cnpj_cpf_mask := cdsClienteCNPJ_CPF.text;

        if trim(cdsClienteCNPJ_CPF.text) <> '' then
           begin
             if Length(cdsClienteCNPJ_CPF.text) = 11 then
                begin
                  txt.EditMask := '999.999.999-99;0;_';
                  txt.Text := cdsClienteCNPJ_CPF.text;
                  frPadrao.Variables['ft_cnpj_cpf'] := QuotedStr(txt.EditText);
                end;
             if Length(cdsClienteCNPJ_CPF.text) = 14 then
                begin
                  txt.EditMask := '99.999.999/9999-99;0;_';
                  txt.Text := cdsClienteCNPJ_CPF.text;
                  frPadrao.Variables['ft_cnpj_cpf'] :=  QuotedStr(txt.EditText);
                end;
           end;
        txt.Free;

        frPadrao.PrepareReport();
        frPadrao.ShowReport();
     end;

   if lbxRelatorios.ItemIndex > 0 then
      begin
        cdsEtiquetas.LoadFromFile(xDiretorio+trim(lbxRelatorios.Items[(lbxRelatorios.itemindex)])+'.xml');
        if  (trim(cdsEtiquetas.FieldByName('NOME_ETQ').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('ALTURA_ETQ').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('LARGURA_ETQ').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('TOP_DADOS_NF').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('TOP_VOLUME_ETQ').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('TOP_EMPRESA_ETQ').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('ESQ_DADOS_NF').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('ESQ_VOLUME_ETQ').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('ESQ_EMPRESA_ETQ').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('TAM_FON_DADOS_NF').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('TAM_FON_VOLUME').AsString) = '') or
            (trim(cdsEtiquetas.FieldByName('TAM_FON_EMPRESA').AsString) = '') then
            begin
              ShowMessage('Todos os dados do modelo da etiqueta devem estar preenchidos.');
              exit;
            end;

        frEtiquetasPerson.Variables['ft_cnpj_cpf'] := QuotedStr('');

        txt := TMaskEdit.Create(self);
        cnpj_cpf_mask := cdsClienteCNPJ_CPF.text;

        if trim(cdsClienteCNPJ_CPF.text) <> '' then
           begin
             if Length(cdsClienteCNPJ_CPF.text) = 11 then
                begin
                  txt.EditMask := '999.999.999-99;0;_';
                  txt.Text := cdsClienteCNPJ_CPF.text;
                  frEtiquetasPerson.Variables['ft_cnpj_cpf'] := QuotedStr(txt.EditText);
                end;
             if Length(cdsClienteCNPJ_CPF.text) = 14 then
                begin
                  txt.EditMask := '99.999.999/9999-99;0;_';
                  txt.Text := cdsClienteCNPJ_CPF.text;
                  frEtiquetasPerson.Variables['ft_cnpj_cpf'] := QuotedStr(txt.EditText);
                end;
           end;
        txt.Free;

        frEtiquetasPerson.PrepareReport();
        frEtiquetasPerson.ShowReport();
     end;
end;



procedure TCAD_FM_R_E01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_R_E01);
end;

procedure TCAD_FM_R_E01.FormCreate(Sender: TObject);
begin
 // inherited;
 { xDiretorio := ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString+'\';
  carregarListaArquivos;

  cdsCliente.CreateDataSet;
  cdsCliente.EmptyDataSet;

  cdsCliente.Insert;
  if xFormCall<>'frmSoftMenu' then
    begin

      cdsCliente.FieldByName('NRO_PED').AsInteger := dmgeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger;
      cdsCliente.FieldByName('DATA').AsDateTime := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime;
      cdsCliente.FieldByName('NF').AsInteger := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger;
      cdsCliente.FieldByName('NOME_CLIENTE').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOMEEMI').AsString;
      cdsCliente.FieldByName('CNPJ_CPF').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString;
     // cdsCliente.FieldByName('PESSOA').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_PESSOA').AsString;
      cdsCliente.FieldByName('NOME_EMPRESA').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOMEEMP').AsString;
      cdsCliente.FieldByName('CIDADE').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOM_CIDADE').AsString;
      cdsCliente.FieldByName('UF').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_ESTADO').AsString;
      cdsCliente.FieldByName('VOLUME').AsString := '';

    end;

  if xFormCall='frmSoftMenu' then
    begin
       txtEmpresa.ReadOnly := false;
       txtEmpresa.Color := clWhite;
       txtData.ReadOnly := false;
       txtData.Color := clWhite;
       txtNotaFiscal.ReadOnly := false;
       txtNotaFiscal.Color := clWhite;
       txtNroPedido.ReadOnly := false;
       txtNroPedido.Color := clWhite;
       txtCnpfCpf.ReadOnly := false;
       txtCnpfCpf.Color := clWhite;
       txtCidade.ReadOnly := false;
       txtCidade.Color := clWhite;
       txtUF.ReadOnly := false;
       txtUF.Color := clWhite;
       txtCliente.ReadOnly := false;
       txtCliente.Color := clWhite;
    end;
   cdsCliente.Post; }

end;

procedure TCAD_FM_R_E01.FormShow(Sender: TObject);
begin
//  inherited;
   xDiretorio := ExtractFilePath(Application.ExeName)+'Emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString+'\';
  carregarListaArquivos;

  cdsCliente.CreateDataSet;
  cdsCliente.EmptyDataSet;

  cdsCliente.Insert;
  if xFormCall<>'frmSoftMenu' then
    begin

      cdsCliente.FieldByName('NRO_PED').AsInteger := dmgeral.BUS_CD_M_NFE_CXA.FieldByName('ID_PEDIDO_VENDA').AsInteger;
      cdsCliente.FieldByName('DATA').AsDateTime := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('DTA_EMISSAO').AsDateTime;
      cdsCliente.FieldByName('NF').AsInteger := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('NUMERO').AsInteger;
      cdsCliente.FieldByName('NOME_CLIENTE').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOMEEMI').AsString;
      cdsCliente.FieldByName('CNPJ_CPF').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_CNPJCPF').AsString;
     // cdsCliente.FieldByName('PESSOA').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_PESSOA').AsString;
      cdsCliente.FieldByName('NOME_EMPRESA').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOMEEMP').AsString;
      cdsCliente.FieldByName('CIDADE').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOM_CIDADE').AsString;
      cdsCliente.FieldByName('UF').AsString := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_ESTADO').AsString;
      cdsCliente.FieldByName('VOLUME').AsString := '';

    end;

  if xFormCall='frmSoftMenu' then
    begin
       txtEmpresa.ReadOnly := false;
       txtEmpresa.Color := clWhite;
       txtData.ReadOnly := false;
       txtData.Color := clWhite;
       txtNotaFiscal.ReadOnly := false;
       txtNotaFiscal.Color := clWhite;
       txtNroPedido.ReadOnly := false;
       txtNroPedido.Color := clWhite;
       txtCnpfCpf.ReadOnly := false;
       txtCnpfCpf.Color := clWhite;
       txtCidade.ReadOnly := false;
       txtCidade.Color := clWhite;
       txtUF.ReadOnly := false;
       txtUF.Color := clWhite;
       txtCliente.ReadOnly := false;
       txtCliente.Color := clWhite;
    end;
   cdsCliente.Post;




  lbxRelatorios.ItemIndex := 0;
end;

procedure TCAD_FM_R_E01.gbFiltrosEnter(Sender: TObject);
begin
  inherited;
   cdsCliente.edit;
end;

procedure TCAD_FM_R_E01.gbFiltrosExit(Sender: TObject);
begin
  inherited;
   cdsCliente.Post;
end;

procedure TCAD_FM_R_E01.carregarListaArquivos;
var
  Procurar : TSearchRec;
  Arquivos: Integer;
begin
   lbxRelatorios.Items.Add('Padrão (100 mm x 100 mm)');
   if DirectoryExists(xDiretorio) then
     begin
       Arquivos := 0;
       Arquivos := Arquivos + faDirectory;
       Arquivos := Arquivos + faArchive;
       Arquivos := Arquivos + faAnyFile;
       if FindFirst(xDiretorio+'*.xml', Arquivos, Procurar) = 0 then
         begin
          repeat
            if (Procurar.Attr and Arquivos) = Procurar.Attr then
             begin
              lbxRelatorios.Items.Add(copy(Procurar.Name,1,length(Procurar.Name)-4));
             end;
          until FindNext(Procurar) <> 0;
            lbxRelatorios.ItemIndex := 0;
          FindClose(Procurar);
         end;
     end;
end;

end.
