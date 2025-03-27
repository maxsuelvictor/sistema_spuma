unit EST_UN_M_NFS_CPM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, JvExMask,
  JvToolEdit;

type
  TEST_FM_M_NFS_CPM = class(TPAD_FM_X_PSQ)
    wwDBGrid1: TwwDBGrid;
    Label2: TLabel;
    dsoIte: TwwDataSource;
    btnSelecionar: TcxButton;
    Panel1: TPanel;
    lblCliente: TLabel;
    pnlPeriodo: TPanel;
    txtDtaInicial: TJvDateEdit;
    txtDtaFinal: TJvDateEdit;
    Label1: TLabel;
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbParametroClick(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
    procedure cmbParametroSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VAR
      xFormCall:String;
  end;

var
  EST_FM_M_NFS_CPM: TEST_FM_M_NFS_CPM;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TEST_FM_M_NFS_CPM.btnPesquisaClick(Sender: TObject);
begin
  inherited;

  if xFormCall = 'EST_FM_M_NFS' then
    begin
      if cmbParametro.ItemIndex in [0,1,2,3] then
        begin
          dmGeral.BUS_CD_M_NFE.Close;
          dmGeral.BUS_CD_M_NFE.Data :=
          dmGeral.BUS_CD_M_NFE.DataRequest(
            VarArrayOf([cmbParametro.ItemIndex+111,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString, edtPesquisa.Text]));
       end;
      if cmbParametro.ItemIndex = 4 then
       begin
         dmGeral.BUS_CD_M_NFE.Close;
         dmGeral.BUS_CD_M_NFE.Data :=
         dmGeral.BUS_CD_M_NFE.DataRequest(
          VarArrayOf([118,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'S',dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString,txtDtaInicial.Text,txtDtaFinal.Text]));
       end;
    end
  else
    begin
      if cmbParametro.ItemIndex in [0,1,2,3] then
        begin
         dmGeral.BUS_CD_M_NFE.Close;
         dmGeral.BUS_CD_M_NFE.Data :=
         dmGeral.BUS_CD_M_NFE.DataRequest(
           VarArrayOf([cmbParametro.ItemIndex+111,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'E',dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString, edtPesquisa.Text]));
        end;
      if cmbParametro.ItemIndex = 4 then
        begin
         dmGeral.BUS_CD_M_NFE.Close;
         dmGeral.BUS_CD_M_NFE.Data :=
         dmGeral.BUS_CD_M_NFE.DataRequest(
          VarArrayOf([118,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,'E',dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString,txtDtaInicial.Text,txtDtaFinal.Text]));
        end;
    end;
end;

procedure TEST_FM_M_NFS_CPM.btnSelecionarClick(Sender: TObject);
var
  inserirItens:Boolean;
begin
  inherited;

     if dmGeral.BUS_CD_M_NFE.IsEmpty then
         begin
           ShowMessage('Deve-se selecionar uma nota fiscal.');
           exit;
         end;


     inserirItens := true;

     try
       dmGeral.BUS_CD_M_NFE_ITE.Filtered := true;
       dmGeral.BUS_CD_M_NFE_ITE.Filter := 'INT_SELECAO=TRUE';
       dmGeral.BUS_CD_M_NFE_ITE.First;

       dmgeral.FAT_CD_M_NFE_ITEqtde.OnChange := nil;
       dmGeral.FAT_CD_M_NFE_ITEvlr_unitario.OnChange := nil;
       dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange := nil;
       dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange := nil;
       dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange := nil;
       dmgeral.FAT_CD_M_NFE_ITE.BeforePost := nil;
       dmgeral.FAT_CD_M_NFE_ITE.AfterPost := nil;


       if dmGeral.BUS_CD_M_NFE_ITE.IsEmpty then
         begin
           ShowMessage('Nenhum item foi selecionado.');
           inserirItens := false;
         end;

       if ((not dmGeral.BUS_CD_M_NFE_ITE.IsEmpty) and
          (dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsString <> '')) and
          (dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger <>
              dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsInteger) then
         begin
            if MessageDlg('Os itens selecionados da nota anterior serão deletados. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                 while (dmgeral.FAT_CD_M_NFE_ITE.RecordCount>0) do
                   dmGeral.FAT_CD_M_NFE_ITE.Delete;
              end
            else
              begin
               inserirItens := false;
              end;
         end;

       while (inserirItens=true) and (NOT dmGeral.BUS_CD_M_NFE_ITE.EOF) do
         begin
           if  not dmGeral.FAT_CD_M_NFE_ITE.locate('ID_SEQUENCIA',dmGeral.BUS_CD_M_NFE_ITE.FieldBYName('ID_SEQUENCIA').AsString,[])  then
             begin
               dmGeral.FAT_CD_M_NFE_ITE.Insert;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsInteger :=
                     dmGeral.BUS_CD_M_NFE_ITE.FieldByName('ID_ITEM').AsInteger;

                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger :=
                     dmGeral.BUS_CD_M_NFE_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString :=
                     dmGeral.BUS_CD_M_NFE_ITE.FieldByName('INT_DESC_ITEM').AsString;

                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString :=
                     dmGeral.BUS_CD_M_NFE_ITE.FieldByName('INT_UND_VENDA').AsString;

                 dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
                     dmGeral.BUS_CD_M_NFE_ITE.FieldByName('INT_TIPO_ITEM').AsString;


                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=
                     dmGeral.BUS_CD_M_NFE_ITE.FieldByName('ID_SEQUENCIA').AsInteger;

                if xFormCall = 'EST_FM_M_NFS' then
                  dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                      dmGeral.BUS_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency
                else
                   dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency := 0;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency :=
                     dmGeral.BUS_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsFloat := 0;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency :=
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_UNITARIO').AsCurrency*
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('QTDE').AsCurrency;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('PER_DESCONTO').AsCurrency := 0;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency := 0;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_MERCADORIA').AsCurrency-
                     dmGeral.FAT_CD_M_NFE_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_BASE').AsCurrency := 0;
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_ALIQUOTA').AsCurrency := 0;
                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ICM_N_VALOR').AsCurrency := 0;

                dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString :=
                             dmGeral.BUS_CD_M_NFE_ITE.FieldByName('ID_ST_ICM').AsString;

                if xFormCall = 'EST_FM_M_NFE' then
                  begin
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_IPI').AsString := '49';
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_PIS').AsString := '99';
                    dmGeral.FAT_CD_M_NFE_ITE.FieldByName('ID_ST_COF').AsString := '99';

                  end;
               //Esse campo está sendo utilizado apenas para permitir a edição de um item no EST_FM_M_NFE
               dmGeral.FAT_CD_M_NFE_ITE.FieldByName('INT_SELECAO').AsBoolean := true;

               dmGeral.FAT_CD_M_NFE_ITE.Post;

             end;

           dmGeral.BUS_CD_M_NFE_ITE.Next;
         end;

     finally
        dmGeral.BUS_CD_M_NFE_ITE.Filtered := false;

        dmgeral.FAT_CD_M_NFE_ITEqtde.OnChange :=  dmgeral.FAT_CD_M_NFE_ITEqtdeChange;
        dmGeral.FAT_CD_M_NFE_ITEvlr_unitario.OnChange := dmgeral.FAT_CD_M_NFE_ITEvlr_unitarioChange;
        dmGeral.FAT_CD_M_NFE_ITEvlr_mercadoria.OnChange :=  dmgeral.FAT_CD_M_NFE_ITEvlr_mercadoriaChange;
        dmGeral.FAT_CD_M_NFE_ITEvlr_desconto.OnChange :=  dmgeral.FAT_CD_M_NFE_ITEvlr_descontoChange;
        dmGeral.FAT_CD_M_NFE_ITEper_desconto.OnChange :=  dmgeral.FAT_CD_M_NFE_ITEper_descontoChange;
        dmgeral.FAT_CD_M_NFE_ITE.BeforePost := dmgeral.FAT_CD_M_NFE_ITEBeforePost;
        dmgeral.FAT_CD_M_NFE_ITE.AfterPost := dmgeral.FAT_CD_M_NFE_ITEAfterPost;
     end;


   if (inserirItens=true) and (dmGeral.FAT_CD_M_NFE_ITE.RecordCount >0) then
     begin
     dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsInteger :=
                          dmGeral.BUS_CD_M_NFE.FieldByName('ID_FISCAL').AsInteger;
     end
   else
     begin
       while (dmgeral.FAT_CD_M_NFE_ITE.RecordCount>0) do
                   dmGeral.FAT_CD_M_NFE_ITE.Delete;
       dmGeral.FAT_CD_M_NFE.FieldByName('ID_FISCAL_REF_COMP').AsString :=  '';
     end;
   Close;
end;

procedure TEST_FM_M_NFS_CPM.cmbParametroChange(Sender: TObject);
begin
 // inherited;

end;

procedure TEST_FM_M_NFS_CPM.cmbParametroClick(Sender: TObject);
begin
  inherited;

   if (cmbParametro.ItemIndex = 4) then
    begin
      pnlPeriodo.Visible := true;
      edtPesquisa.Visible := false;
    end
  else
    begin
      pnlPeriodo.Visible := false;
      edtPesquisa.Visible := true;
    end;
end;

procedure TEST_FM_M_NFS_CPM.cmbParametroSelect(Sender: TObject);
begin
  //inherited;

end;

procedure TEST_FM_M_NFS_CPM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_M_NFE.Close;
end;

procedure TEST_FM_M_NFS_CPM.FormShow(Sender: TObject);
begin
  inherited;
  lblCliente.Caption := dmGeral.FAT_CD_M_NFE.FieldByName('ID_EMITENTE').AsString +' - '+
       dmGeral.FAT_CD_M_NFE.FieldByName('INT_NOMEEMI').AsString;
end;

procedure TEST_FM_M_NFS_CPM.wwDBGrid1Enter(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_NFE_ITE.Edit;
end;

procedure TEST_FM_M_NFS_CPM.wwDBGrid1Exit(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_NFE_ITE.Post;
end;

end.
