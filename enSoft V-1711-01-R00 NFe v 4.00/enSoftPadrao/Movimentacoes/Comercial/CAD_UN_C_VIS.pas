unit CAD_UN_C_VIS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, vcl.wwdblook, Vcl.Mask, Vcl.DBCtrls, vcl.Wwdbedit, JvExMask,
  JvToolEdit, JvDBControls, Vcl.Buttons, Datasnap.DBClient,System.DateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TCAD_FM_C_VIS = class(TPAD_FM_X_PAD)
    dsoCli: TwwDataSource;
    lblCodigo: TLabel;
    Label53: TLabel;
    lblVendedor: TLabel;
    lblCliente: TLabel;
    txtCodigo: TDBEdit;
    txtCodRev: TDBEdit;
    cbbVendedor: TwwDBLookupCombo;
    gbCli: TGroupBox;
    dgCli: TwwDBGrid;
    pnlCliente: TPanel;
    btnAddCli: TBitBtn;
    dgCliIButton: TwwIButton;
    txtcliente: TJvDBComboEdit;
    txtNomeCliente: TwwDBEdit;
    txtSemana: TDBEdit;
    jdbDataVis: TJvDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CAD_CD_C_VIS: TClientDataSet;
    CAD_CD_C_VISid_vis: TIntegerField;
    CAD_CD_C_VISsemana: TIntegerField;
    CAD_CD_C_VISid_vendedor: TIntegerField;
    CAD_CD_C_VISCAD_SQ_C_VIS_CLI: TDataSetField;
    CAD_CD_C_VISint_vendedor: TWideStringField;
    CAD_CD_C_VISid_empresa: TIntegerField;
    CAD_CD_C_VIS_CLI: TClientDataSet;
    CAD_CD_C_VIS_CLIid_vis: TIntegerField;
    CAD_CD_C_VIS_CLIid_vis_cli: TIntegerField;
    CAD_CD_C_VIS_CLIdoc_cnpj_cpf: TWideStringField;
    CAD_CD_C_VIS_CLInome: TWideStringField;
    CAD_CD_C_VIS_CLIdta_visita: TDateField;
    BUS_CD_C_VIS: TClientDataSet;
    CAD_CD_C_VISfechada: TBooleanField;
    pnCarteiraCliVend: TPanel;
    lblAliquotasTaxas: TLabel;
    grdBusCli: TwwDBGrid;
    wwIButton1: TwwIButton;
    cdsBusCli: TClientDataSet;
    dsBusCli: TwwDataSource;
    cdsBusCliid_cliente: TIntegerField;
    cdsBusClinome: TWideStringField;
    cdsBusClidoc_cnpj_cpf: TWideStringField;
    cdsBusCliint_selecao: TBooleanField;
    Label4: TLabel;
    Label5: TLabel;
    txtDtaEntrega: TJvDBDateEdit;
    Label6: TLabel;
    txtAno: TDBEdit;
    Label7: TLabel;
    CAD_CD_C_VISano: TIntegerField;
    CAD_CD_C_VISdta_criacao: TDateField;
    CAD_CD_C_VIS_CLIid_cliente: TIntegerField;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtclienteButtonClick(Sender: TObject);
    procedure txtclienteExit(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbVendedorEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClienteExit(Sender: TObject);
    procedure btnAddCliClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dgCliIButtonClick(Sender: TObject);
    procedure jdbDataVisExit(Sender: TObject);
    procedure CAD_CD_C_VISNewRecord(DataSet: TDataSet);
    procedure txtSemanaExit(Sender: TObject);
    procedure grdBusCliDblClick(Sender: TObject);
    procedure dgCliMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure CAD_CD_C_VISBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    xUltOpp : integer;
    procedure buscarCliVendedor;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_VIS: TCAD_FM_C_VIS;

implementation

{$R *.dfm}

uses uDmGeral, CAD_UN_C_CLI, PSQ_UN_X_CLI, uProxy;

procedure TCAD_FM_C_VIS.acAdicionaExecute(Sender: TObject);
var
  semana: integer;
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_VIS);

  BUS_CD_C_VIS.Close;
  BUS_CD_C_VIS.Data :=
       BUS_CD_C_VIS.DataRequest(
         VarArrayOf([5,dmgeral.CAD_CD_C_PARid_empresa.Text,CAD_CD_C_VIS.FieldBYName('ano').AsString,
                       CAD_CD_C_VIS.FieldBYName('semana').AsString,xFuncionario
                       ]));
  semana := CAD_CD_C_VIS.FieldBYName('semana').AsInteger;
  if not BUS_CD_C_VIS.IsEmpty then
     begin
       while not (BUS_CD_C_VIS.IsEmpty) do
          begin
            semana := semana + 1;

            BUS_CD_C_VIS.Close;
            BUS_CD_C_VIS.Data :=
            BUS_CD_C_VIS.DataRequest(
               VarArrayOf([5,dmgeral.CAD_CD_C_PARid_empresa.Text,CAD_CD_C_VIS.FieldBYName('ano').AsString,
                             semana,xFuncionario
                             ]));
          end;
       {ShowMessage('Já existe esta Semana: ' +CAD_CD_C_VIS.FieldBYName('semana').AsString+ ', informada para este vendedor neste ano!');
       CAD_CD_C_VIS.cancel;
       abort; }
     end;
  CAD_CD_C_VIS.FieldBYName('semana').AsInteger := semana;

  if not (cdsBusCli.IsEmpty) then
     begin
       cdsBusCli.EmptyDataSet;
       pnlCliente.Enabled := false;
     end;
  xUltOpp := 0;
  txtSemana.SetFocus;
end;

procedure TCAD_FM_C_VIS.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_VIS) then
    begin
       inherited;
       if not CAD_CD_C_VIS_CLI.IsEmpty then
           begin
             CAD_CD_C_VIS_CLI.IndexFieldNames := 'ID_VIS_CLI';

             CAD_CD_C_VIS_CLI.Last;

             xUltOpp := CAD_CD_C_VIS_CLI.FieldByName('ID_VIS_CLI').AsInteger;

             CAD_CD_C_VIS_CLI.IndexFieldNames := 'ID_VIS_CLI';
             CAD_CD_C_VIS_CLI.First;
           end;

      txtSemana.Enabled := false;
      //txtSemana.color   := $00DADADA;
      buscarCliVendedor;
      pnlCliente.Enabled := false;
      grdBusCli.SetFocus;
    end;
end;

procedure TCAD_FM_C_VIS.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_VIS) then
      begin
        inherited;
        txtSemana.Enabled := true;
        //txtSemana.color   := clWhite;
        if not (cdsBusCli.IsEmpty) then
           begin
             cdsBusCli.EmptyDataSet;
           end;
        dbGrid.SetFocus;
      end
   else
      begin
        grdBusCli.SetFocus;
      end;
end;

procedure TCAD_FM_C_VIS.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CAD_CD_C_VIS);
end;

procedure TCAD_FM_C_VIS.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      codigo := CAD_CD_C_VIS.FieldByName('ID_VIS').AsString;

      DmGeral.Grava(CAD_CD_C_VIS);

      CAD_CD_C_VIS.Close;
      CAD_CD_C_VIS.Data :=
      CAD_CD_C_VIS.DataRequest(
             VarArrayOf([0,dmgeral.CAD_CD_C_PARid_empresa.Text, codigo,xFuncionario]));

      txtSemana.Enabled := true;
      //txtSemana.color   := clWhite;

      if not (cdsBusCli.IsEmpty) then
         begin
            cdsBusCli.EmptyDataSet;
         end;
    end
  else
    begin
      grdBusCli.SetFocus;
    end;
end;

procedure TCAD_FM_C_VIS.btnAddCliClick(Sender: TObject);
begin
  inherited;
  pnlCliente.Enabled := True;

  CAD_CD_C_VIS_CLI.Insert;
  txtCliente.SetFocus;
end;

procedure TCAD_FM_C_VIS.btnFiltroClick(Sender: TObject);
begin
  inherited;
  inherited;
  Screen.Cursor := crHourGlass;
  try
    if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;

  if cbbPesquisa.ItemIndex <> 4 then
     begin
        CAD_CD_C_VIS.Close;
        CAD_CD_C_VIS.Data :=
        CAD_CD_C_VIS.DataRequest(
                VarArrayOf([cbbPesquisa.ItemIndex,dmgeral.CAD_CD_C_PARid_empresa.Text, txtPesquisa.Text,xFuncionario]));
     end
  else
     begin
        CAD_CD_C_VIS.Close;
        CAD_CD_C_VIS.Data :=
        CAD_CD_C_VIS.DataRequest(
                VarArrayOf([8,dmgeral.CAD_CD_C_PARid_empresa.Text, txtPesquisa.Text,xFuncionario]));
     end;

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_VIS.buscarCliVendedor;
begin
  cdsBusCli.Close;
    cdsBusCli.Data :=
      cdsBusCli.DataRequest(
          VarArrayOf([83, CAD_CD_C_VIS.FieldByName('ID_VENDEDOR').AsInteger]));
end;

procedure TCAD_FM_C_VIS.CAD_CD_C_VISBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if CAD_CD_C_VIS.FieldByName('fechada').AsBoolean then
     begin
       ShowMessage('Esta visita não pode ser excluída pois já foi fechada!');
       abort;
     end;

end;

procedure TCAD_FM_C_VIS.CAD_CD_C_VISNewRecord(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
  ano: String;
begin
  //Busca sequencia no servidor
  ano := copy( FormatDateTime('dd/mm/yyyy', xDataSis),7,4);
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    CAD_CD_C_VIS.FieldByName('ID_VIS').AsInteger :=
         SMPrincipal.enValorChave('CAD_TB_C_VIS');

    CAD_CD_C_VIS.FieldByName('ID_EMPRESA').AsInteger := dmgeral.CAD_CD_C_PARid_empresa.AsInteger;
    CAD_CD_C_VIS.FieldByName('ID_VENDEDOR').AsInteger := xFuncionario;
    CAD_CD_C_VIS.FieldByName('dta_criacao').AsDateTime := xDataSis;
    CAD_CD_C_VIS.FieldByName('semana').AsString := IntToStr(WeekOfTheYear(CAD_CD_C_VIS.FieldByName('dta_criacao').AsDateTime));
    CAD_CD_C_VIS.FieldByName('ano').AsString := ano;
    CAD_CD_C_VIS.FieldByName('fechada').AsBoolean := false;
  finally
    FreeAndNil(SMPrincipal);
  end;
  //dmGeral.BusCodigoRevListMestre(true,false,'CAD_FM_C_VIT',xCodLme,xRevLme,dmGeral.CAD_CD_C_VIT);
end;

procedure TCAD_FM_C_VIS.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';
  txtPesquisa.NumbersOnly := true;
  if cbbPesquisa.ItemIndex in [3,4] then
     txtPesquisa.NumbersOnly := false;

end;

procedure TCAD_FM_C_VIS.cbbVendedorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFunCargoGeral('''0'',''1''','true');
  cbbVendedor.DropDown;
end;

procedure TCAD_FM_C_VIS.dgCliIButtonClick(Sender: TObject);
begin
  inherited;
  try

     dgCliIButton.Enabled := False;
     if CAD_CD_C_VIS_CLI.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     CAD_CD_C_VIS_CLI.Delete;
     CAD_CD_C_VIS_CLI.Edit;
  finally
    dgCliIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_VIS.dgCliMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if pnlCliente.Enabled = false then
     pnlCliente.Enabled := true;

  CAD_CD_C_VIS_CLI.cancel;

  if CAD_CD_C_VIS_CLI.IsEmpty then
     begin
       CAD_CD_C_VIS_CLI.Append;
       pnlCliente.Enabled := true;
       txtcliente.SetFocus;
     end
  else
     begin
       CAD_CD_C_VIS_CLI.Edit;
       pnlCliente.Enabled := true;
       jdbDataVis.SetFocus;
     end;

  
end;

procedure TCAD_FM_C_VIS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CAD_CD_C_VIS.Close;
  FreeAndNil(CAD_FM_C_VIS);
end;

procedure TCAD_FM_C_VIS.FormCreate(Sender: TObject);
begin
  inherited;
  CAD_CD_C_VIS.Close;
  CAD_CD_C_VIS.Data := CAD_CD_C_VIS.DataRequest(VarArrayOf([0, '',xfuncionario,dmgeral.CAD_CD_C_PARid_empresa.Text]));

  dmGeral.BusFunCargoGeral('''0'',''1''','true');
  btnExcluir.Enabled := False;
end;

procedure TCAD_FM_C_VIS.FormShow(Sender: TObject);
begin
  inherited;

  dmGeral.BusFunCargoGeral('''0'',''1''','true');

  cbbPesquisaChange(self);

  txtPesquisa.SetFocus;
end;

procedure TCAD_FM_C_VIS.jdbDataVisExit(Sender: TObject);
var
  xDoc, xNome,data: String;
  id_vis_cli, dta_visita,id_cliente,doc_cnpj_cpf, nome: String;
  semana_dig: string;
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if txtcliente.Focused then
     exit;

 if CAD_CD_C_VIS_CLI.State in [dsInsert,dsEdit] then
     begin
        if CAD_CD_C_VIS_CLI.FieldBYName('doc_cnpj_cpf').AsString = '' then
           begin
             ShowMessage('O campo "Código do cliente" deve ser preenchido!');

             if txtcliente.CanFocus then
                txtcliente.SetFocus;
             exit;
           end;

        if CAD_CD_C_VIS_CLI.FieldBYName('dta_visita').AsString = '' then
           begin
             ShowMessage('O campo "Data da visita" deve ser preenchido!');
             if jdbDataVis.CanFocus then
                jdbDataVis.SetFocus;
             exit;
           end;

        semana_dig := IntToStr(WeekOfTheYear(CAD_CD_C_VIS_CLI.FieldByName('dta_visita').AsDateTime));

        if CAD_CD_C_VIS.FieldBYName('semana').AsString <>
           semana_dig then
           begin
             ShowMessage('A data informada não faz parte da Semana(' +
                    CAD_CD_C_VIS.FieldBYName('semana').AsString
                    +') digitada para esta programação!');
             if jdbDataVis.CanFocus then
                jdbDataVis.SetFocus;
             exit;
           end;


        if CAD_CD_C_VIS_CLI.FieldBYName('dta_visita').AsDateTime < xDataSis then
           begin
             ShowMessage('O campo "Data da visita" não pode ser menor que a data do sistema!');
             if jdbDataVis.CanFocus then
                jdbDataVis.SetFocus;
             exit;
           end;

        if CAD_CD_C_VIS_CLI.State in [dsInsert] then
           begin
             xUltOpp := xUltOpp + 1;

             CAD_CD_C_VIS_CLI.FieldBYName('id_vis_cli').AsInteger := xUltOpp;

             id_vis_cli   := CAD_CD_C_VIS_CLI.FieldBYName('id_vis_cli').AsString;
             dta_visita   := CAD_CD_C_VIS_CLI.FieldBYName('dta_visita').AsString;
             id_cliente   := CAD_CD_C_VIS_CLI.FieldBYName('id_cliente').AsString;
             nome         := CAD_CD_C_VIS_CLI.FieldByName('nome').Text;

             doc_cnpj_cpf := CAD_CD_C_VIS_CLI.FieldBYName('doc_cnpj_cpf').AsString;

             CAD_CD_C_VIS_CLI.cancel;

             if CAD_CD_C_VIS_CLI.Locate('id_cliente;dta_visita',VarArrayOf([id_cliente,dta_visita]),[]) then
                begin
                   ShowMessage('Cliente já foi informado para esta data!');
                   grdBusCli.SetFocus;
                   exit;
                end
             else
                begin
                  CAD_CD_C_VIS_CLI.Insert;
                  CAD_CD_C_VIS_CLI.FieldBYName('id_vis_cli').AsString := id_vis_cli;
                  CAD_CD_C_VIS_CLI.FieldBYName('dta_visita').AsString := dta_visita;
                  CAD_CD_C_VIS_CLI.FieldBYName('id_cliente').AsString := id_cliente;
                  CAD_CD_C_VIS_CLI.FieldBYName('doc_cnpj_cpf').AsString := doc_cnpj_cpf;
                  CAD_CD_C_VIS_CLI.FieldByName('nome').Text := nome;
                end;
           end;


        CAD_CD_C_VIS_CLI.Post;

        pnlCliente.OnExit := pnlClienteExit;

        //  btnAddCli.SetFocus;
        grdBusCli.SetFocus;
        pnlCliente.Enabled := False;
     end;
end;

procedure TCAD_FM_C_VIS.pnlClienteExit(Sender: TObject);
begin
  inherited;
  if (btnAddCli.Focused) or
     (dgCli.Focused)  or
     (not dgCliIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          if btnCancelar.Focused then
             begin
               acCancelarExecute(acCancelar);
               Exit;
             end;

          if btnGrava.Focused  then
             begin
                acGravarExecute(acGravar);
                Exit;
             end;

          CAD_CD_C_VIS_CLI.Cancel;
          if not CAD_CD_C_VIS_CLI.IsEmpty then
             CAD_CD_C_VIS_CLI.Edit;
          finally
             pnlCliente.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_VIS.txtclienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_ClI.IsEmpty then
         begin
           CAD_CD_C_VIS_CLI.FieldByName('doc_cnpj_cpf').AsString :=
                PSQ_FM_X_CLI.BUS_CD_C_ClI.FieldByName('doc_cnpj_cpf').AsString;

           CAD_CD_C_VIS_CLI.FieldByName('nome').AsString := PSQ_FM_X_CLI.BUS_CD_C_ClI.FieldByName('nome').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TCAD_FM_C_VIS.txtclienteExit(Sender: TObject);
var
  xdoc,xnome:string;
begin
  inherited;
  try
    pnlCliente.OnExit := nil;

  if btnCancelar.Focused or
     btnGrava.Focused or
     dgCli.Focused   then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CLI.Close;

  txtNomeCliente.Text := '';

  if txtcliente.Text = '' then
    begin
      exit;
    end;

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
  dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([2, txtCliente.Text]));

  if not dmGeral.BUS_CD_C_CLI.IsEmpty then
    begin
      if dmGeral.BUS_CD_C_CLI.FieldByName('id_vendedor').AsInteger <> CAD_CD_C_VIS.FieldByName('id_vendedor').AsInteger then
         begin
           Showmessage('Cliente não faz parte da carteira do vendedor!');
           abort;
         end;

      if (dmGeral.BUS_CD_C_CLI.FieldBYName('ativo').AsBoolean = false) then
           begin
             ShowMessage('Cliente está inativo!');
             abort;
           end;

      CAD_CD_C_VIS_CLI.FieldBYName('id_cliente').AsString :=
             dmGeral.BUS_CD_C_CLI.FieldByName('id_cliente').AsString;
      CAD_CD_C_VIS_CLI.FieldByName('nome').Text           :=
             dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
    end
  else
    begin
      ShowMessage('Cliente não cadastrado!');
      txtcliente.Text := '';
      txtcliente.SetFocus;
      exit;
    end;

  if (CAD_CD_C_VIS_CLI.FieldBYName('doc_cnpj_cpf').AsString = '') then
     begin
       ShowMessage('CPF/CNPJ deve ser preenchedor!');
       txtcliente.Text := '';
       txtcliente.SetFocus;
       exit;
     end;

 { xDoc  := CAD_CD_C_VIS_CLI.FieldBYName('doc_cnpj_cpf').AsString;
  xnome := CAD_CD_C_VIS_CLI.FieldBYName('nome').AsString;

  CAD_CD_C_VIS_CLI.Cancel;


      CAD_CD_C_VIS_CLI.Insert;
      CAD_CD_C_VIS_CLI.FieldBYName('doc_cnpj_cpf').AsString :=  xDoc;
      CAD_CD_C_VIS_CLI.FieldBYName('nome').AsString :=  xnome; }

      ActiveControl := nil;
      PostMessage(jdbDataVis.Handle, WM_SETFOCUS, 0, 0);
      jdbDataVis.SetFocus;



  finally

  end;
end;

procedure TCAD_FM_C_VIS.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TCAD_FM_C_VIS.txtSemanaExit(Sender: TObject);
begin
  inherited;

  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  if (CAD_CD_C_VIS.FieldBYName('semana').AsString <> '') then
      begin
        try
          BUS_CD_C_VIS.Close;
          BUS_CD_C_VIS.Data :=
               BUS_CD_C_VIS.DataRequest(
                 VarArrayOf([5,dmgeral.CAD_CD_C_PARid_empresa.Text,CAD_CD_C_VIS.FieldBYName('ano').AsString,
                               CAD_CD_C_VIS.FieldBYName('semana').AsString,xFuncionario
                               ]));
          if not BUS_CD_C_VIS.IsEmpty then
             begin
               ShowMessage('Já existe esta "Semana" informada para este vendedor!');
               CAD_CD_C_VIS.FieldBYName('semana').AsString := '';
               txtSemana.SetFocus;
               abort;
             end;

          if CAD_CD_C_VIS.FieldByName('ID_VENDEDOR').AsInteger > 0 then
             begin
               buscarCliVendedor;
             end;

          {BUS_CD_C_VIS.Close;
          BUS_CD_C_VIS.Data :=
               BUS_CD_C_VIS.DataRequest(
                 VarArrayOf([3, xFuncionario,'',
                                dmgeral.CAD_CD_C_PARid_empresa.Text]));
          if not BUS_CD_C_VIS.IsEmpty then
             begin
               ShowMessage('Existe semana em aberto!' + #13 +
                           'Semana: ' + BUS_CD_C_VIS.FieldBYName('semana').AsString);
               CAD_CD_C_VIS.FieldBYName('semana').AsString := '';
               txtSemana.SetFocus;
               abort;
             end; }


        finally
           BUS_CD_C_VIS.close;
        end;
      end;
end;

procedure TCAD_FM_C_VIS.grdBusCliDblClick(Sender: TObject);
var
  cdsTemp: TClientDataSet;
  Data,IdCliente: string;
begin
  inherited;
  try

  cdsTemp := TClientDataSet.Create(nil);

  if cdsBusCli.IsEmpty then
     begin
       ShowMessage('Não há cliente para ser selecionado!');
       abort;
     end;

  cdsTemp.Data := CAD_CD_C_VIS_CLI.Data;

//  if CAD_CD_C_VIS_CLI.Locate('doc_cnpj_cpf;id_cliente',
//         varArrayOf([cdsBusCli.FieldByName('doc_cnpj_cpf').AsString,IdCliente]),[]) then
 //    begin
   //     Data      := cdsBusCli.FieldByName('dta_visita').AsString;
        IdCliente := cdsBusCli.FieldByName('id_cliente').AsString;

        cdsTemp.Cancel;
//        if not (cdsTemp.Locate('id_vis;doc_cnpj_cpf;id_cliente;dta_visita',varArrayOf([CAD_CD_C_VIS.FieldByName('id_vis').AsString,
//                                                     cdsBusCli.FieldByName('doc_cnpj_cpf').AsString,IdCliente,Data]),[])) then
 //          begin
             CAD_CD_C_VIS_CLI.Insert;
             CAD_CD_C_VIS_CLI.FieldByName('doc_cnpj_cpf').AsString :=
                 cdsBusCli.FieldByName('doc_cnpj_cpf').AsString;
             CAD_CD_C_VIS_CLI.FieldByName('nome').AsString :=
                 cdsBusCli.FieldByName('nome').AsString;

             CAD_CD_C_VIS_CLI.FieldByName('id_cliente').AsString :=
                 cdsBusCli.FieldByName('id_cliente').AsString;

             pnlCliente.Enabled := True;
             txtcliente.Enabled := true;
             jdbDataVis.SetFocus;
   //        end
   //     else
    //       begin
     //        ShowMessage('Este cliente/data já foi inserido no grid abaixo!');
     //      end;
     //end;

  finally
     FreeAndNil(cdsTemp);
  end;
end;

end.
