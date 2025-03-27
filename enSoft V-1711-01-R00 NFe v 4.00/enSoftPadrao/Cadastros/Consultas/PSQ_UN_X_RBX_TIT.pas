unit PSQ_UN_X_RBX_TIT;

interface

uses
  Winapi.Windows, Winapi.Messages,System.IniFiles, System.SysUtils, System.Variants,System.Math, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, Data.DB, vcl.wwdatsrc,
  Datasnap.DBClient;

type
  TPSQ_FM_X_RBX_TIT = class(TForm)
    pnlTop: TPanel;
    pnFiltro: TPanel;
    Label4: TLabel;
    lblEmpLogada: TLabel;
    lblEmpresaLog: TLabel;
    grdBxaNEmp: TwwDBGrid;
    pnDados: TPanel;
    lblAliquotasTaxas: TLabel;
    Panel4: TPanel;
    gbFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    btnFiltro: TcxButton;
    lblTitulo: TLabel;
    ImgPequenaVe: TImageList;
    ImgPequenaAz: TImageList;
    ImgPequena: TImageList;
    cdsTemp: TClientDataSet;
    cdsTempselecao: TBooleanField;
    cdsTempid_empresa: TIntegerField;
    cdsTempdescricao: TStringField;
    dsoTitulos: TwwDataSource;
    dsRecPag: TwwDataSource;
    dsTemp: TDataSource;
    Panel7: TPanel;
    Label3: TLabel;
    Panel5: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    lblAberto: TLabel;
    pnlAberto: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label7: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    Panel8: TPanel;
    dbGrid: TwwDBGrid;
    btnSelecionarTit: TcxButton;
    procedure lblTituloMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdBxaNEmpFieldChanged(Sender: TObject; Field: TField);
    procedure dbGridTitulosCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure dbGridKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btnSelecionarTitClick(Sender: TObject);
  private
    { Private declarations }
    procedure carregaCores;
    procedure ExibirDados;
    procedure CarregarTitulos;
    var
     xCorSistema, rEmpresa:string;
  public
    { Public declarations }
  end;

var
  PSQ_FM_X_RBX_TIT: TPSQ_FM_X_RBX_TIT;

implementation

{$R *.dfm}

uses uDmGeral, FIN_RN_M_RBX;


procedure TPSQ_FM_X_RBX_TIT.CarregarTitulos;
begin

      try
        dmGeral.FIN_CD_M_RBX_TIT.BeforePost := nil;

        dmGeral.BUS_CD_M_REC.Filtered := true;
        dmGeral.BUS_CD_M_REC.Filter := 'INT_SELECAO=TRUE';


      {  if not  dmGeral.BUS_CD_M_REC.IsEmpty then
          begin  }
        dmGeral.BUS_CD_M_REC.First;
        while not dmGeral.BUS_CD_M_REC.EOF do
          begin
           if not dmGeral.FIN_CD_M_RBX_TIT.Locate('id_titulo',dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsString,[]) then
              begin
                dmGeral.FIN_CD_M_RBX_TIT.Insert;
                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('ID_TITULO').AsString :=
                   dmGeral.BUS_CD_M_REC.FieldByName('ID_TITULO').AsString;

                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_historico').AsString :=
                   dmGeral.BUS_CD_M_REC.FieldByName('historico').AsString;

                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('dta_vencimento').AsDateTime :=
                         dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime;

                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('dta_novo_venc').AsDateTime :=
                         dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime;

                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_titulo').AsCurrency :=
                         dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency;

                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('num_parcela').AsString :=
                         dmGeral.BUS_CD_M_REC.FieldByName('num_parcela').AsString;

                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_fpg_sgq_presta_conta').AsBoolean :=
                         dmGeral.BUS_CD_M_REC.FieldByName('int_fpg_sgq_presta_conta').AsBoolean;

                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_id_pedido').AsInteger := 0;

                if trim(dmGeral.BUS_CD_M_REC.FieldByName('int_id_ors').AsString) <> '' then
                   begin
                      dmGeral.BUS_CD_M_ORS.close;
                      dmGeral.BUS_CD_M_ORS.Data :=
                              dmGeral.BUS_CD_M_ORS.DataRequest(VarArrayOf([0, dmGeral.BUS_CD_M_REC.FieldByName('int_id_ors').AsString]));
                      if not dmGeral.BUS_CD_M_ORS.IsEmpty then
                         begin
                           dmGeral.FIN_CD_M_RBX_TIT.FieldByName('int_id_pedido').AsInteger :=
                                 dmGeral.BUS_CD_M_ORS.FieldByName('id_pedido').AsInteger;
                         end;
                      dmGeral.BUS_CD_M_ORS.close;
                   end;


                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('atraso').AsInteger := 0;

                if  dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime<xDataSis then
                    begin
                      dmGeral.FIN_CD_M_RBX_TIT.FieldByName('atraso').AsFloat:=
                         (xDataSis - dmGeral.BUS_CD_M_REC.FieldByName('dta_vencimento').AsDateTime);
                    end;

                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_juros').asCurrency := 0;

                if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('tax_juros_mensal').AsCurrency > 0 then
                   begin
                     dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_juros').asCurrency:=
                        roundTo( (((dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_titulo').AsCurrency*
                           dmGeral.CAD_CD_C_PAR_CTR.FieldByName('tax_juros_mensal').AsCurrency)/100)/30)*
                             dmGeral.FIN_CD_M_RBX_TIT.FieldByName('atraso').AsFloat,-2);
                   end;


                if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('sgq_preenc_vlr_pago_bx_tit').AsBoolean then
                   begin
                     dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_pagamento').asCurrency :=
                        dmGeral.FIN_CD_M_RBX_TIT.FieldByName('vlr_a_pagar').asCurrency;
                   end;

               dmGeral.FIN_CD_M_RBX_TIT.Post;
             end;

           dmGeral.BUS_CD_M_REC.Next;
         end;
         { end
         else
           begin
              ShowMessage('Nenhum titulo foi selecionado');
           end; }

       finally
         dmGeral.BUS_CD_M_REC.Filtered := false;
         dmGeral.FIN_CD_M_RBX_TIT.BeforePost := dmGeral.FIN_CD_M_RBX_TITBeforePost;
       end;




end;


procedure TPSQ_FM_X_RBX_TIT.cbbPesquisaChange(Sender: TObject);
begin
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [3] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TPSQ_FM_X_RBX_TIT.dbGridCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin

  if (xDataSis = dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clBlack;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime > xDataSis ) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clGreen;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime < xDataSis ) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clRed;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency = 0) then
     begin
       aFont.Color := clNavy;
     end;



end;

procedure TPSQ_FM_X_RBX_TIT.dbGridDblClick(Sender: TObject);
begin

  if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_rec_n_tit').AsBoolean = true)) then
     begin
        if not dmGeral.FIN_CD_M_RBX_TIT.IsEmpty then
           begin
             if dmGeral.FIN_CD_M_RBX_TIT.State in [dsInsert, dsEdit] then
                dmGeral.FIN_CD_M_RBX_TIT.FieldByName('per_desconto').asFloat:= 0;
           end;


        PSQ_FM_X_RBX_TIT.Close;
     end;
end;

procedure TPSQ_FM_X_RBX_TIT.dbGridKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = chr(13) then
  begin
    dbGridDblClick(self);
  end;
end;

procedure TPSQ_FM_X_RBX_TIT.dbGridTitulosCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   if (xDataSis = dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clBlack;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime > xDataSis ) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clGreen;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('DTA_VENCIMENTO').AsDateTime < xDataSis ) and
     (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency>0) then
    begin
      aFont.Color := clRed;
    end;

  if (dmGeral.BUS_CD_M_REC.FieldByName('vlr_saldo').AsCurrency = 0) then
     begin
       aFont.Color := clNavy;
     end;
end;

procedure TPSQ_FM_X_RBX_TIT.FormCreate(Sender: TObject);
begin
 carregaCores;
end;

procedure TPSQ_FM_X_RBX_TIT.FormShow(Sender: TObject);
begin



  try

    grdBxaNEmp.OnFieldChanged := nil;


  if (not (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_rec_n_tit').AsBoolean = true)) then
     begin
       dbGrid.RemoveField('int_selecao');
       btnSelecionarTit.Visible := false;
     end;



  if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_rec_n_emp').AsBoolean then
     begin
        lblEmpresaLog.Caption := dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString;

        cdsTemp.Close;
        cdsTemp.CreateDataSet;

        dmGeral.CAD_CD_C_PAR_BXR.First;
        while not dmGeral.CAD_CD_C_PAR_BXR.eof do
           begin
             if dmGeral.CAD_CD_C_PAR_BXR.FieldByName('permite_baixar').AsBoolean then
                begin
                  cdsTemp.Insert;
                  cdsTemp.FieldByName('selecao').AsBoolean    := true;
                  cdsTemp.FieldByName('id_empresa').AsInteger := dmGeral.CAD_CD_C_PAR_BXR.FieldByName('id_empresa_bxr').AsInteger;
                  cdsTemp.FieldByName('descricao').AsString   := dmGeral.CAD_CD_C_PAR_BXR.FieldByName('int_fantasia').AsString;
                  cdsTemp.Post;
                end;
             dmGeral.CAD_CD_C_PAR_BXR.Next;
           end;
        dmGeral.CAD_CD_C_PAR_BXR.First;

     {  cdsTemp.First;
        while not (cdsTemp.Eof)  do
              begin
                if cdsTemp.FieldByName('selecao').AsBoolean then
                   begin
                      if rEmpresa <> '' then
                         begin
                           rEmpresa :=
                           rEmpresa + ',' +''''+ cdsTemp.FieldByName('id_empresa').AsString+'''';
                         end;

                   end;
                cdsTemp.Next;
              end;
        cdsTemp.First; }
     end
  else
     begin
       pnFiltro.Visible := false;
     end;

  ExibirDados;
  dbGrid.SetFocus;
  finally
     grdBxaNEmp.OnFieldChanged :=   grdBxaNEmpFieldChanged
  end;
end;


procedure TPSQ_FM_X_RBX_TIT.grdBxaNEmpFieldChanged(Sender: TObject;
  Field: TField);
var
  IdEmpresa: integer;
begin
  IdEmpresa :=  cdsTemp.FieldByName('id_empresa').AsInteger;
  if Field.FieldName = 'selecao' then
     begin
       {if not cdsTemp.IsEmpty then
         begin
           cdsTemp.Edit;
           cdsTemp.Post;
           cdsTemp.Edit; }

           ExibirDados;
       //  end;
     end;

  cdsTemp.Locate('ID_EMPRESA',IdEmpresa,[]);
end;


procedure TPSQ_FM_X_RBX_TIT.ExibirDados;
begin
   // Comentado por Maxsuel Victor, em 24/07/2016
   //rEmpresa := ''''+dmGeral.FIN_CD_M_PBX.FieldByName('ID_EMPRESA').AsString+'''';
   rEmpresa := ''''+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString+'''';

 { if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('perm_bxa_pag_n_emp').AsBoolean then
     begin
        lblEmpresaLog.Caption := dmGeral.CAD_CD_C_PAR.FieldByName('emp_fantasia').AsString;

        cdsTemp.Close;
        cdsTemp.CreateDataSet;

        dmGeral.CAD_CD_C_PAR_BXP.First;
        while not dmGeral.CAD_CD_C_PAR_BXP.eof do
           begin
             if dmGeral.CAD_CD_C_PAR_BXP.FieldByName('permite_baixar').AsBoolean then
                begin
                  cdsTemp.Insert;
                  cdsTemp.FieldByName('selecao').AsBoolean    := true;
                  cdsTemp.FieldByName('id_empresa').AsInteger := dmGeral.CAD_CD_C_PAR_BXP.FieldByName('id_empresa_bxp').AsInteger;
                  cdsTemp.FieldByName('descricao').AsString   := dmGeral.CAD_CD_C_PAR_BXP.FieldByName('int_fantasia').AsString;
                  cdsTemp.Post;
                end;
             dmGeral.CAD_CD_C_PAR_BXP.Next;
           end;
        dmGeral.CAD_CD_C_PAR_BXP.First;

        cdsTemp.First;
        while not (cdsTemp.Eof)  do
              begin
                if cdsTemp.FieldByName('selecao').AsBoolean then
                   begin
                      if rEmpresa <> '' then
                         begin
                           rEmpresa :=
                           rEmpresa + ',' +''''+ cdsTemp.FieldByName('id_empresa').AsString+'''';
                         end;

                   end;
                cdsTemp.Next;
              end;
        cdsTemp.First;
     end
  else
     begin
       pnFiltro.Visible := false;
     end; }


  if not cdsTemp.IsEmpty then
     begin
        cdsTemp.First;
        while not (cdsTemp.Eof)  do
              begin
                if cdsTemp.FieldByName('selecao').AsBoolean then
                   begin
                      if rEmpresa <> '' then
                         begin
                           rEmpresa :=
                           rEmpresa + ',' +''''+ cdsTemp.FieldByName('id_empresa').AsString+'''';
                         end;

                   end;
                cdsTemp.Next;
              end;
        cdsTemp.First;
     end;


   dmGeral.BUS_CD_M_REC.Close;
   dmGeral.BUS_CD_M_REC.Data :=
   dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([99,rEmpresa ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ']));

   dmGeral.BUS_CD_M_REC.IndexFieldNames := 'DTA_VENCIMENTO';

end;


procedure TPSQ_FM_X_RBX_TIT.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    case cbbPesquisa.ItemIndex of
       0: begin
            dmGeral.BUS_CD_M_REC.Close;
            dmGeral.BUS_CD_M_REC.Data :=
            dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([111,rEmpresa ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',txtPesquisa.Text]));
          end;
       1: begin
            dmGeral.BUS_CD_M_REC.Close;
            dmGeral.BUS_CD_M_REC.Data :=
            dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([112,rEmpresa ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',txtPesquisa.Text]));
          end;
       2: begin
            dmGeral.BUS_CD_M_REC.Close;
            dmGeral.BUS_CD_M_REC.Data :=
            dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([113,rEmpresa ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',txtPesquisa.Text]));
           end;
       3: begin
             dmGeral.BUS_CD_M_REC.Close;
             dmGeral.BUS_CD_M_REC.Data :=
             dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([114,rEmpresa ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',txtPesquisa.Text]));
           end;
       4: begin
             dmGeral.BUS_CD_M_REC.Close;
             dmGeral.BUS_CD_M_REC.Data :=
             dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([115,rEmpresa ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ',StringReplace(txtPesquisa.Text, ',', '.', [])]));
           end;
       5: begin
             dmGeral.BUS_CD_M_REC.Close;
             dmGeral.BUS_CD_M_REC.Data :=
             dmGeral.BUS_CD_M_REC.DataRequest(
                VarArrayOf([99,rEmpresa ,
                               dmGeral.FIN_CD_M_RBX.FieldByName('ID_CLIENTE').text,
                               ' ''1'', ''2'', ''4'' ']));
           end;
     end;

     dmGeral.BUS_CD_M_REC.IndexFieldNames := 'DTA_VENCIMENTO';

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TPSQ_FM_X_RBX_TIT.btnSelecionarTitClick(Sender: TObject);
begin
  CarregarTitulos;
  Close;
end;

procedure TPSQ_FM_X_RBX_TIT.carregaCores;
var
  Rede:TInifile;
  codCor:TColor;
begin
  codCor := $00333333;
  If not FileExists(ExtractFilePath(Application.ExeName)+'Cores.Ini') then
     begin
       Rede := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
       Rede.WriteString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');
     end;

  Rede        := TiniFile.Create(ExtractFilePath(Application.ExeName)+'Cores.Ini');
  xCorSistema := Rede.ReadString('DEFINICAO_DE_CORES','COR_SISTEMA','GRAFITE');

   if xCorSistema = 'GRAFITE' then
     begin
       codCor :=  $00333333;
     end;
   if xCorSistema = 'AZUL' then
     begin
       codCor :=  $00844D08;
     end;
   if xCorSistema = 'VERDE' then
     begin
       codCor :=  $00006305;
     end;

    pnlTop.Color := codCor;
end;

procedure TPSQ_FM_X_RBX_TIT.lblTituloMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  lblTitulo.Hint := Self.Name;
end;

procedure TPSQ_FM_X_RBX_TIT.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (dmGeral.BUS_CD_M_REC_PAG.FieldByName('com_substituicao').AsBoolean) then
      begin
        aFont.Color := $000065CA;
      end;
end;

end.
