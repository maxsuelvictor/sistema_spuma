unit FAT_UN_M_SIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.CheckLst, Vcl.Mask, ACBrBase, ACBrSintegra, Data.DB, Datasnap.DBClient,
  Vcl.ComCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, JvExMask, JvToolEdit;

type
  TFAT_FM_M_SIN = class(TForm)
    SaveDialog1: TSaveDialog;
    ACBrSintegra: TACBrSintegra;
    FAT_CD_R_SIN_050: TClientDataSet;
    FAT_CD_R_SIN_051: TClientDataSet;
    FAT_CD_R_SIN_053: TClientDataSet;
    FAT_CD_R_SIN_054: TClientDataSet;
    FAT_CD_R_SIN_60M: TClientDataSet;
    FAT_CD_R_SIN_60A: TClientDataSet;
    FAT_CD_R_SIN_60D: TClientDataSet;
    FAT_CD_R_SIN_60I: TClientDataSet;
    FAT_CD_R_SIN_075: TClientDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ts50: TTabSheet;
    ts54: TTabSheet;
    ts60M: TTabSheet;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    cbbEmpresas: TComboBox;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Edit1: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox4: TGroupBox;
    CheckListBox1: TCheckListBox;
    Panel1: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Button1: TButton;
    Button2: TButton;
    ts60A: TTabSheet;
    ts75: TTabSheet;
    ds50: TDataSource;
    ds54: TDataSource;
    ds60M: TDataSource;
    ds60A: TDataSource;
    ds75: TDataSource;
    grd50: TwwDBGrid;
    grd54: TwwDBGrid;
    grd60M: TwwDBGrid;
    grd60A: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    FAT_CD_R_SIN_60Mdata_movimento: TDateField;
    FAT_CD_R_SIN_60Mecf_fab: TWideStringField;
    FAT_CD_R_SIN_60Mecf_cx: TWideStringField;
    FAT_CD_R_SIN_60Mnum_doc_ini: TIntegerField;
    FAT_CD_R_SIN_60Mnum_doc_fin: TIntegerField;
    FAT_CD_R_SIN_60Mcro: TWideStringField;
    FAT_CD_R_SIN_60Mcrz: TWideStringField;
    FAT_CD_R_SIN_60Mgt_fin: TFMTBCDField;
    FAT_CD_R_SIN_60Mvlr_brt: TFMTBCDField;
    FAT_CD_R_SIN_050id_empresa: TIntegerField;
    FAT_CD_R_SIN_050id_cfo: TWideStringField;
    FAT_CD_R_SIN_050nfe_cod_sit: TWideStringField;
    FAT_CD_R_SIN_050id_emitente: TIntegerField;
    FAT_CD_R_SIN_050modelo: TWideStringField;
    FAT_CD_R_SIN_050serie: TWideStringField;
    FAT_CD_R_SIN_050numero: TIntegerField;
    FAT_CD_R_SIN_050dta_emissao: TDateField;
    FAT_CD_R_SIN_050ind_emitente: TIntegerField;
    FAT_CD_R_SIN_050int_cnpjcpf: TWideStringField;
    FAT_CD_R_SIN_050int_doc_ie: TWideStringField;
    FAT_CD_R_SIN_050vlr_contabil: TFMTBCDField;
    FAT_CD_R_SIN_050vlr_base_icm: TFMTBCDField;
    FAT_CD_R_SIN_050vlr_icm: TFMTBCDField;
    FAT_CD_R_SIN_050vlr_outras: TFMTBCDField;
    FAT_CD_R_SIN_050vlr_isenta: TFMTBCDField;
    FAT_CD_R_SIN_054int_cnpjcpf: TWideStringField;
    FAT_CD_R_SIN_054dta_emissao: TDateField;
    FAT_CD_R_SIN_054serie: TWideStringField;
    FAT_CD_R_SIN_054numero: TIntegerField;
    FAT_CD_R_SIN_054id_cfo: TWideStringField;
    FAT_CD_R_SIN_054modelo: TWideStringField;
    FAT_CD_R_SIN_054id_item: TIntegerField;
    FAT_CD_R_SIN_054int_nomeite: TWideStringField;
    FAT_CD_R_SIN_054nfe_cod_sit: TWideStringField;
    FAT_CD_R_SIN_054ind_emitente: TIntegerField;
    FAT_CD_R_SIN_054id_st_icm: TWideStringField;
    FAT_CD_R_SIN_054icm_n_aliquota: TFloatField;
    FAT_CD_R_SIN_054qtde: TFloatField;
    FAT_CD_R_SIN_054vlr_liquido: TFMTBCDField;
    FAT_CD_R_SIN_054vlr_desconto: TFMTBCDField;
    FAT_CD_R_SIN_054vlr_base_icm: TFMTBCDField;
    FAT_CD_R_SIN_054vlr_base_subst: TFMTBCDField;
    FAT_CD_R_SIN_054vlr_ipi: TFMTBCDField;
    FAT_CD_R_SIN_050int_estado: TWideStringField;
    dta_inicial: TJvDateEdit;
    Label2: TLabel;
    dta_final: TJvDateEdit;
    Label1: TLabel;
    txtLocalArquivo: TEdit;
    FAT_CD_R_SIN_054origem_mercadoria: TWideStringField;
    FAT_CD_R_SIN_050icm_n_aliquota: TFMTBCDField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbEmpresasChange(Sender: TObject);
  private
    { Private declarations }
    procedure GerarRegistro10;
    procedure GerarRegistro11;
    procedure GerarRegistro50;
    procedure GerarRegistro51;
    procedure GerarRegistro53;
    procedure GerarRegistro54;
    procedure GerarRegistro60M;
    procedure GerarRegistro60A;
    procedure GerarRegistro60D;
    procedure GerarRegistro60I;
    procedure GerarRegistro70;
    procedure GerarRegistro75;

  public
    { Public declarations }
  end;

var
  FAT_FM_M_SIN: TFAT_FM_M_SIN;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TFAT_FM_M_SIN.Button1Click(Sender: TObject);
var
  wPathCompleto,mes,ano: String;
  fano,fmes,fdia : word;
begin

  if cbbEmpresas.ItemIndex = -1 then
     begin
       showmessage('A empresa deve ser informada.');
       exit;
     end;

  {if Edit1.text = '' then
     begin
       messagebox(0,'Informe o nome do responsável','Informação',mb_iconinformation+mb_taskmodal);
       Edit1.setfocus;
       exit;
     end; }
  try

     if ((dta_inicial.Text = '  /  /    ') or (dta_final.Text = '  /  /    ')) then
        begin
          application.MessageBox('O período deve ser preenchido','Erro',mb_iconstop);
          dta_final.setfocus;
          exit;
        end;

     if StrToDate(dta_inicial.text)>StrToDate(dta_final.Text) then
        begin
          application.MessageBox('Data inicial não pode ser maior que a data final','Erro',mb_iconstop);
          dta_final.setfocus;
          exit;
        end
     else
        if StrToDate(dta_inicial.text)>date then
           begin
             application.MessageBox('Data Final não pode ser maior que a data atual','Erro',mb_iconstop);
             dta_final.setfocus;
             exit;
           end;
  except
    application.MessageBox('Intervalo de datas inválido.','Erro',mb_iconstop);
    dta_inicial.setfocus;
    exit;
  end;

  if not DirectoryExists(txtLocalArquivo.Text) then
         ForceDirectories(txtLocalArquivo.Text);

  wPathCompleto:= txtLocalArquivo.Text;
  DecodeDate(dta_Inicial.Date,fano,fmes,fdia);
  ACBrSintegra.FileName :=wPathCompleto + '\Sintegra_' + IntToStr(fmes) +'_'+ IntToStr(fano) + '.txt';

  {SaveDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  if ComboBox4.ItemIndex = 0 then
     SaveDialog1.FileName := 'ArquivoSintegraVCL'; }

        try

          Screen.Cursor := crHourGlass;
          try
            if ComboBox4.ItemIndex=0 then
               begin
                 //ACBrSintegra.FileName:=SaveDialog1.FileName;
                 ACBrSintegra.VersaoValidador:=TVersaoValidador(ComboBox5.ItemIndex);
                 GerarRegistro10;
                 GerarRegistro11;
                 if CheckListBox1.Checked[0] then
                    begin
                      FAT_CD_R_SIN_050.Close;
                      FAT_CD_R_SIN_050.Data :=
                            FAT_CD_R_SIN_050.DataRequest(VarArrayOf([copy(cbbEmpresas.Items[cbbEmpresas.ItemIndex],1,1),StrToDate(dta_inicial.text),
                                                  StrToDate(dta_final.Text)]));
                      GerarRegistro50;
                    end;
                // if CheckListBox1.Checked[1] then
                //    GerarRegistro51;

                // if CheckListBox1.Checked[2] then
                //    GerarRegistro53;

                 if CheckListBox1.Checked[1] then
                    begin
                      FAT_CD_R_SIN_054.Close;
                      FAT_CD_R_SIN_054.Data :=
                          FAT_CD_R_SIN_054.DataRequest(VarArrayOf([copy(cbbEmpresas.Items[cbbEmpresas.ItemIndex],1,1),StrToDate(dta_inicial.text),
                                                  StrToDate(dta_final.Text)]));
                      GerarRegistro54;
                    end;
                 if CheckListBox1.Checked[2] then
                    begin
                      FAT_CD_R_SIN_60M.Close;
                      FAT_CD_R_SIN_60M.Data :=
                             FAT_CD_R_SIN_60M.DataRequest(VarArrayOf([StrToDate(dta_inicial.text),
                                                                      StrToDate(dta_final.Text)]));

                      GerarRegistro60M;
                    end;
                 if CheckListBox1.Checked[3] then
                    begin
                      FAT_CD_R_SIN_60A.Close;
                      FAT_CD_R_SIN_60A.Data :=
                             FAT_CD_R_SIN_60A.DataRequest(VarArrayOf([StrToDate(dta_inicial.text),
                                                                      StrToDate(dta_final.Text)]));
                      GerarRegistro60A;
                    end;

                 //if CheckListBox1.Checked[6] then
                 //   GerarRegistro60D;

                 //if CheckListBox1.Checked[7] then
                 //   begin
                 //     GerarRegistro70;
                 //   end;

                 if CheckListBox1.Checked[4] then
                    begin
                      FAT_CD_R_SIN_075.Close;
                      FAT_CD_R_SIN_075.Data :=
                             FAT_CD_R_SIN_075.DataRequest(VarArrayOf([copy(cbbEmpresas.Items[cbbEmpresas.ItemIndex],1,1),StrToDate(dta_inicial.text),
                                                                      StrToDate(dta_final.Text)]));
                      GerarRegistro75;
                    end;

                 ACBrSintegra.GeraArquivo;

                 if CheckListBox1.Checked[0] then
                    FAT_CD_R_SIN_050.First;
                 if CheckListBox1.Checked[1] then
                    FAT_CD_R_SIN_054.First;
                 if CheckListBox1.Checked[2] then
                    FAT_CD_R_SIN_60M.First;
                 if CheckListBox1.Checked[3] then
                    FAT_CD_R_SIN_60A.First;
                 if CheckListBox1.Checked[4] then
                    FAT_CD_R_SIN_075.First;

               end;
            MessageBox(0,'Geração concluída','Informação',mb_iconinformation+mb_taskmodal);
          except
            on e:Exception do
               begin
                 Application.MessageBox(PChar('Erro ao gerar arquivo do sintegra!'+#13+
                   'Erro: '+e.Message),'Erro',MB_ICONSTOP+MB_TASKMODAL);
               end;
          end;

        finally
          Screen.Cursor := crDefault;
        end;

end;

procedure TFAT_FM_M_SIN.Button2Click(Sender: TObject);
begin
  if ComboBox4.ItemIndex=0 then
     begin
       ShowMessage(ACBrSintegra.Versao);
     end
end;

procedure TFAT_FM_M_SIN.cbbEmpresasChange(Sender: TObject);
begin
  if not (dmGeral.BUS_CD_C_PAR.IsEmpty) then
     begin
       edit1.Text := dmGeral.BUS_CD_C_PAR.FieldByName('res_nome').AsString;
     end;
end;

procedure TFAT_FM_M_SIN.FormShow(Sender: TObject);
begin
  dmGeral.BUS_CD_C_PAR.Close;
  dmGeral.BUS_CD_C_PAR.Data :=
     dmGeral.BUS_CD_C_PAR.DataRequest(VarArrayOf([1,'%']));

  dmGeral.BUS_CD_C_PAR.recordcount;

  dmGeral.BUS_CD_C_PAR.indexFieldNames := 'id_empresa';

  dmGeral.BUS_CD_C_PAR.First;
  while not dmGeral.BUS_CD_C_PAR.eof do
     begin
       cbbEmpresas.Items.add(dmGeral.BUS_CD_C_PAR.FieldByName('id_empresa').AsString + '-'+
                           dmGeral.BUS_CD_C_PAR.FieldByName('emp_fantasia').AsString);
       dmGeral.BUS_CD_C_PAR.Next;
     end;
  dmGeral.BUS_CD_C_PAR.First;

  txtLocalArquivo.Text :=
          ExtractFilePath(Application.ExeName)+'Sintegra';
end;

procedure TFAT_FM_M_SIN.GerarRegistro10;
begin
  with ACBrSintegra do
       begin
         Registro10.CNPJ        := dmGeral.BUS_CD_C_PAR.FieldByName('emp_cnpj').AsString;
         Registro10.Inscricao   := dmGeral.BUS_CD_C_PAR.FieldByName('emp_ie').AsString;
         Registro10.RazaoSocial := dmGeral.BUS_CD_C_PAR.FieldByName('emp_razao').AsString;
         Registro10.Cidade      := dmGeral.BUS_CD_C_PAR.FieldByName('INT_NOMECID').AsString;
         Registro10.Estado      := dmGeral.BUS_CD_C_PAR.FieldByName('INT_UF').AsString;
         Registro10.Telefone    := dmGeral.BUS_CD_C_PAR.FieldByName('EMP_TELEFONE').AsString;;
         Registro10.DataInicial := StrToDate(dta_inicial.Text);
         Registro10.DataFinal   := StrToDate(dta_final.Text);
         Registro10.CodigoConvenio      := IntToStr(ComboBox1.ItemIndex + 1);
         Registro10.NaturezaInformacoes := IntToStr(ComboBox2.ItemIndex + 1);
         Registro10.FinalidadeArquivo   := Copy(ComboBox3.Items[ComboBox3.ItemIndex], 1, 1);
       end;
end;

procedure TFAT_FM_M_SIN.GerarRegistro11;
begin
   with ACBrSintegra do
      begin
        Registro11.Endereco    := dmGeral.BUS_CD_C_PAR.FieldByName('emp_endereco').AsString;
        Registro11.Numero      := dmGeral.BUS_CD_C_PAR.FieldByName('emp_numero').AsString;
        Registro11.Bairro      := dmGeral.BUS_CD_C_PAR.FieldByName('emp_bairro').AsString;
        Registro11.Cep         := dmGeral.BUS_CD_C_PAR.FieldByName('emp_cep').AsString;
        Registro11.Responsavel := dmGeral.BUS_CD_C_PAR.FieldByName('res_nome').AsString;
        Registro11.Telefone    := dmGeral.BUS_CD_C_PAR.FieldByName('res_telefone').AsString;
      end;
end;

procedure TFAT_FM_M_SIN.GerarRegistro50;
var
  wregistro50: TRegistro50;
begin

  while not FAT_CD_R_SIN_050.eof do
     begin
        with ACBrSintegra do
            begin
              wregistro50 := TRegistro50.Create;
              wregistro50.CPFCNPJ       := FAT_CD_R_SIN_050.FieldByName('INT_CNPJCPF').AsString;
              wregistro50.Inscricao     := FAT_CD_R_SIN_050.FieldByName('INT_DOC_IE').AsString;
              wregistro50.DataDocumento := FAT_CD_R_SIN_050.FieldByName('dta_emissao').AsDateTime;
              wregistro50.UF            := FAT_CD_R_SIN_050.FieldByName('INT_ESTADO').AsString;
              wregistro50.Modelo        := FAT_CD_R_SIN_050.FieldByName('modelo').AsString;
              wregistro50.Serie         := FAT_CD_R_SIN_050.FieldByName('serie').AsString;
              //if FAT_CD_R_SIN_050.FieldByName('numero').Asinteger = 5364 then
              //   showmessage('oi');
              wregistro50.Numero        := FAT_CD_R_SIN_050.FieldByName('numero').AsString;
              wregistro50.Cfop          := FAT_CD_R_SIN_050.FieldByName('id_cfo').AsString;

              if FAT_CD_R_SIN_050.FieldByName('ind_emitente').AsString = '0' then
                 begin
                   wregistro50.EmissorDocumento := 'P';
                 end
              else
                 begin
                   wregistro50.EmissorDocumento := 'T';
                 end;

              wregistro50.ValorContabil    := FAT_CD_R_SIN_050.FieldByName('vlr_contabil').AsCurrency;
              wregistro50.BasedeCalculo    := FAT_CD_R_SIN_050.FieldByName('vlr_base_icm').AsCurrency;
              wregistro50.Icms             := FAT_CD_R_SIN_050.FieldByName('vlr_icm').AsCurrency;
              wregistro50.Isentas          := FAT_CD_R_SIN_050.FieldByName('vlr_isenta').AsCurrency;
              wregistro50.Outras           := FAT_CD_R_SIN_050.FieldByName('vlr_outras').AsCurrency;
              wregistro50.Aliquota         := FAT_CD_R_SIN_050.FieldByName('icm_n_aliquota').AsFloat;
              wregistro50.Situacao         := 'N';
              if FAT_CD_R_SIN_050.FieldByName('nfe_cod_sit').AsString = '02' then
                 begin
                  wregistro50.Situacao         := 'S';
                 end;
              ACBrSintegra.Registros50.Add(wregistro50);
            end;
        FAT_CD_R_SIN_050.Next;
     end;
end;

procedure TFAT_FM_M_SIN.GerarRegistro51;
//var
//  wregistro51: TRegistro51;
begin
  // No  momento não será necessário, pois no SAAD não está sendo feito

 { wregistro51 := TRegistro51.Create;

  with ACBrSintegra do
      begin
        wregistro51.CPFCNPJ          := FAT_CD_R_SIN_051.FieldByName('INT_CNPJCPF').AsString;
        wregistro51.Inscricao        := FAT_CD_R_SIN_051.FieldByName('INT_DOC_IE').AsString;
        wregistro51.DataDocumento    := FAT_CD_R_SIN_051.FieldByName('dta_emissao').AsDateTime;
        wregistro51.Estado           := FAT_CD_R_SIN_051.FieldByName('INT_ESTADO').AsString;
        wregistro51.Serie            := FAT_CD_R_SIN_051.FieldByName('serie').AsString;
        wregistro51.Numero           := FAT_CD_R_SIN_051.FieldByName('numero').AsString;
        wregistro51.Cfop             := FAT_CD_R_SIN_051.FieldByName('id_cfo').AsString;

        wregistro51.ValorContabil    := FAT_CD_R_SIN_051.FieldByName('vlr_contabil').AsCurrency;
        wregistro51.ValorIpi         := FAT_CD_R_SIN_051.FieldByName('vlr_ipi').AsCurrency;
        wregistro51.ValorIsentas     := 0;
        wregistro51.ValorOutras      := 0;
        wregistro51.Situacao         := 'N';
        if FAT_CD_R_SIN_051.FieldByName('nfe_cod_sit').AsString = '02' then
           begin
            wregistro51.Situacao         := 'S';
           end;
        ACBrSintegra.Registros51.Add(wregistro51);
      end; }
end;

procedure TFAT_FM_M_SIN.GerarRegistro53;
//var
//  wregistro53: TRegistro53;
begin
  {wregistro53 := TRegistro53.Create;

  // No  momento não será necessário, pois no SAAD não está sendo feito

  with ACBrSintegra do
      begin
        wregistro53.CPFCNPJ          := FAT_CD_R_SIN_053.FieldByName('INT_CNPJCPF').AsString;
        wregistro53.Inscricao        := FAT_CD_R_SIN_053.FieldByName('INT_DOC_IE').AsString;
        wregistro53.DataDocumento    := FAT_CD_R_SIN_053.FieldByName('dta_emissao').AsDateTime;
        wregistro53.estado           := FAT_CD_R_SIN_053.FieldByName('INT_ESTADO').AsString;
        wregistro53.Serie            := FAT_CD_R_SIN_053.FieldByName('serie').AsString;
        wregistro53.Numero           := FAT_CD_R_SIN_053.FieldByName('numero').AsString;
        wregistro53.Cfop             := FAT_CD_R_SIN_053.FieldByName('id_cfo').AsString;

        if FAT_CD_R_SIN_053.FieldByName('ind_emitente').AsString = '0' then
           begin
             wregistro53.Emitente := 'P';
           end
        else
           begin
             wregistro53.Emitente := 'T';
           end;

        wregistro53.BaseST           := FAT_CD_R_SIN_053.FieldByName('vlr_base_subst').AsCurrency;
        wregistro53.IcmsRetido       := FAT_CD_R_SIN_053.FieldByName('vlr_subst').AsCurrency;
        wregistro53.Despesas         := FAT_CD_R_SIN_053.FieldByName('vlr_fre_seg_outras').AsCurrency;
        wregistro53.Situacao         := 'N';
        if FAT_CD_R_SIN_053.FieldByName('nfe_cod_sit').AsString = '02' then
           begin
            wregistro53.Situacao         := 'S';
           end;
        ACBrSintegra.Registros53.Add(wregistro53);
      end;     }
end;


procedure TFAT_FM_M_SIN.GerarRegistro54;
var
  wregistro54: TRegistro54;
  num: integer;
  NumeroNF: String;
begin


  //Tenho que informar o registro 54 na aquisição de material para uso/consumo e ativo fixo?
  //Não, quando a nota fiscal for de aquisição de material para uso/consumo e ativo fixo, não precisa ser
  //gerado o registro 54 para esta nota.

  NumeroNF := '0';

  while not FAT_CD_R_SIN_054.eof do
     begin
        with ACBrSintegra do
            begin
              wregistro54 := TRegistro54.Create;
              if FAT_CD_R_SIN_054.FieldByName('numero').AsString <> NumeroNF then
                 begin
                   NumeroNF := FAT_CD_R_SIN_054.FieldByName('numero').AsString;
                   num := 0;
                 end;
              wregistro54.CPFCNPJ          := FAT_CD_R_SIN_054.FieldByName('INT_CNPJCPF').AsString;
              wregistro54.Modelo           := FAT_CD_R_SIN_054.FieldByName('modelo').AsString;
              wregistro54.Serie            := FAT_CD_R_SIN_054.FieldByName('serie').AsString;
              wregistro54.Numero           := FAT_CD_R_SIN_054.FieldByName('numero').AsString;
              wregistro54.Cfop             := FAT_CD_R_SIN_054.FieldByName('id_cfo').AsString;
              wregistro54.CST              := FAT_CD_R_SIN_054.FieldByName('origem_mercadoria').AsString +
                                              FAT_CD_R_SIN_054.FieldByName('id_st_icm').AsString;
              inc(num);
              wregistro54.NumeroItem := num;
              wregistro54.Codigo     := FAT_CD_R_SIN_054.FieldByName('id_item').AsString;
              wregistro54.Descricao  := FAT_CD_R_SIN_054.FieldByName('int_nomeite').AsString;
              wregistro54.Quantidade := FAT_CD_R_SIN_054.FieldByName('qtde').AsCurrency;
              wregistro54.Valor      := FAT_CD_R_SIN_054.FieldByName('vlr_liquido').AsCurrency;
              wregistro54.ValorDescontoDespesa := FAT_CD_R_SIN_054.FieldByName('vlr_desconto').AsCurrency;
              wregistro54.BasedeCalculo := FAT_CD_R_SIN_054.FieldByName('vlr_base_icm').AsCurrency;
              wregistro54.BaseST        := FAT_CD_R_SIN_054.FieldByName('vlr_base_subst').AsCurrency;;
              wregistro54.ValorIpi      := FAT_CD_R_SIN_054.FieldByName('vlr_ipi').AsCurrency;
              wregistro54.Aliquota      := FAT_CD_R_SIN_054.FieldByName('icm_n_aliquota').AsCurrency;
              ACBrSintegra.Registros54.Add(wregistro54);
              FAT_CD_R_SIN_054.Next;

            end;
        end;

end;

procedure TFAT_FM_M_SIN.GerarRegistro60A;
var
  wregistro60A: TRegistro60A;
begin


  while not FAT_CD_R_SIN_60A.eof do
     begin
        //if FAT_CD_R_SIN_60M.locate('data_movimento',FAT_CD_R_SIN_60A.FieldByName('data_movimento').AsString,[]) then
        //   begin
              wregistro60A:=TRegistro60A.Create;
              wregistro60A.Emissao    := FAT_CD_R_SIN_60A.FieldByName('data_movimento').AsDateTime;
              wregistro60A.NumSerie   := FAT_CD_R_SIN_60A.FieldByName('serial_impressora').AsString;
              wregistro60A.StAliquota := FAT_CD_R_SIN_60A.FieldByName('aliquota').AsString;
              wregistro60A.Valor      := FAT_CD_R_SIN_60A.FieldByName('valor_total').AsCurrency;
              ACBrSintegra.Registros60A.Add(wregistro60A);
        //   end;
        FAT_CD_R_SIN_60A.Next;
     end;
end;

procedure TFAT_FM_M_SIN.GerarRegistro60D;
//var
 // wregistro60D: TRegistro60D;
begin

 {  wregistro60D := TRegistro60D.Create;
   while not FAT_CD_R_SIN_60D.eof do
      begin
        wregistro60D.Emissao       := FAT_CD_R_SIN_60D.FieldByName('data_movimento').AsDateTime;
        wregistro60D.NumSerie      := FAT_CD_R_SIN_60D.FieldByName('serial').AsString;
        wregistro60D.Codigo        := FAT_CD_R_SIN_60D.FieldByName('cod_produto').AsString;
        wregistro60D.Quantidade    := FAT_CD_R_SIN_60D.FieldByName('qtde_tot').AsCurrency;
        wregistro60D.Valor         := FAT_CD_R_SIN_60D.FieldByName('vlr_tot_mercadoria').AsCurrency;
        wregistro60D.BaseDeCalculo := FAT_CD_R_SIN_60D.FieldByName('tot_base_icms').AsCurrency;
        wregistro60D.StAliquota    := FAT_CD_R_SIN_60D.FieldByName('aliquota').AsString;
        wregistro60D.ValorIcms     := FAT_CD_R_SIN_60D.FieldByName('tot_vlr_icms').AsCurrency;
        ACBrSintegra.Registros60D.Add(wregistro60D);
        FAT_CD_R_SIN_60D.Next;
      end;
               }
end;

procedure TFAT_FM_M_SIN.GerarRegistro60I;
//var
//  wregistro60I: TRegistro60I;
begin
 { wregistro60I := TRegistro60I.Create;

  while not FAT_CD_R_SIN_60I.eof do
     begin
       wregistro60I.Emissao       := FAT_CD_R_SIN_60I.FieldByName('data_movimento').AsDateTime;
       wregistro60I.NumSerie      := FAT_CD_R_SIN_60I.FieldByName('serial').AsString;
       wregistro60I.ModeloDoc     := '2D';
       wregistro60I.Cupom         := FAT_CD_R_SIN_60I.FieldByName('coo').AsString;
       wregistro60I.Item          := FAT_CD_R_SIN_60I.FieldByName('n_item').AsInteger;
       wregistro60I.codigo        := FAT_CD_R_SIN_60I.FieldByName('cod_produto').AsString;
       wregistro60I.Quantidade    := FAT_CD_R_SIN_60I.FieldByName('qtde').AsInteger;
       wregistro60I.Valor         := FAT_CD_R_SIN_60I.FieldByName('valor_unitario').AsInteger;
       wregistro60I.ValorIcms     := FAT_CD_R_SIN_60I.FieldByName('vlr_base_icms').AsCurrency;
       wregistro60I.BaseDeCalculo := FAT_CD_R_SIN_60I.FieldByName('vlr_icms').AsCurrency;
       ACBrSintegra.wregistro60I.Add(wregistro60I);

       FAT_CD_R_SIN_60I.Next;
     end;   }
end;

procedure TFAT_FM_M_SIN.GerarRegistro60M;
var
  wregistro60M: TRegistro60M;
begin


  while not FAT_CD_R_SIN_60M.eof do
     begin
       wregistro60M := TRegistro60M.Create;
       wregistro60M.Emissao    := FAT_CD_R_SIN_60M.FieldByName('data_movimento').AsDateTime;
       wregistro60M.NumSerie   := FAT_CD_R_SIN_60M.FieldByName('ecf_fab').AsString;
       wregistro60M.NumOrdem   := strtoint(trim(FAT_CD_R_SIN_60M.FieldByName('ECF_CX').AsString));
       wregistro60M.ModeloDoc  := '2D';
       wregistro60M.CooInicial := FAT_CD_R_SIN_60M.FieldByName('NUM_DOC_INI').AsInteger;
       wregistro60M.CooFinal   := FAT_CD_R_SIN_60M.FieldByName('NUM_DOC_FIN').AsInteger;
       wregistro60M.CRZ        := FAT_CD_R_SIN_60M.FieldByName('CRZ').AsInteger;
       wregistro60M.CRO        := FAT_CD_R_SIN_60M.FieldByName('CRO').AsInteger;
       wregistro60M.VendaBruta := FAT_CD_R_SIN_60M.FieldByName('VLR_BRT').AsCurrency;
       wregistro60M.ValorGT    := FAT_CD_R_SIN_60M.FieldByName('GT_FIN').AsCurrency;
       ACBrSintegra.Registros60M.Add(wregistro60M);

       FAT_CD_R_SIN_60M.Next;
     end;
end;

procedure TFAT_FM_M_SIN.GerarRegistro70;
begin

end;

procedure TFAT_FM_M_SIN.GerarRegistro75;
var
  wregistro75: TRegistro75;
begin

  while not FAT_CD_R_SIN_075.eof do
    begin
      wregistro75:=TRegistro75.Create;

      wregistro75.DataInicial   := StrToDate(dta_inicial.Text);
      wregistro75.DataFinal     := StrToDate(dta_final.Text);
      wregistro75.Codigo        := FAT_CD_R_SIN_075.FieldByName('ID_ITEM').AsString;
      wregistro75.NCM           := FAT_CD_R_SIN_075.FieldByName('ID_NCM').AsString;
      wregistro75.Descricao     := FAT_CD_R_SIN_075.FieldByName('DESCRICAO').AsString;
      wregistro75.Unidade       := FAT_CD_R_SIN_075.FieldByName('id_und_venda').AsString;
      wregistro75.AliquotaIpi   := FAT_CD_R_SIN_075.FieldByName('ipi_aliquota').AsCurrency;
      wregistro75.AliquotaICMS  := FAT_CD_R_SIN_075.FieldByName('icm_n_aliquota').AsCurrency;
      wregistro75.Reducao       := 0;
      wregistro75.BaseST        := FAT_CD_R_SIN_075.FieldByName('icm_n_base').AsCurrency;
      ACBrSintegra.Registros75.Add(wregistro75);
      FAT_CD_R_SIN_075.Next;
    end;
end;

end.
