unit OFI_UN_M_ORP_SUB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TOFI_FM_M_ORP_SUB = class(TPAD_FM_X_PSQ)
    wwDBGrid1: TwwDBGrid;
    dsoIte: TwwDataSource;
    btnImportar: TcxButton;
    Label1: TLabel;
    procedure btnImportarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_ORP_SUB: TOFI_FM_M_ORP_SUB;

implementation

{$R *.dfm}

uses uDmGeral, OFI_UN_M_ORP;

procedure TOFI_FM_M_ORP_SUB.btnImportarClick(Sender: TObject);
var
  inserirItens:Boolean;
  codItens:String;
begin
  inherited;

     if dmGeral.BUS_CD_M_ORV.IsEmpty then
       begin
         ShowMessage('Deve-se selecionar uma ordem de serviço.');
         exit;
       end;

     try
       dmGeral.BUS_CD_M_ORV.Filtered := true;
       dmGeral.BUS_CD_M_ORV.Filter := 'INT_SELECAO=TRUE';
       dmGeral.BUS_CD_M_ORV.First;

       dmgeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVper_desc_servicos.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVper_desc_terceiro.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVper_desc_produtos.OnChange :=nil;
       dmgeral.OFI_CD_M_ORV.BeforePost := nil;
       dmgeral.OFI_CD_M_ORV_ITE.BeforePost := nil;
       dmgeral.OFI_CD_M_ORV_ITE.AfterPost := nil;

       if (dmGeral.BUS_CD_M_ORV.RecordCount>0) then
         begin
           { dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency := 0;

            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0; }

            dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_servicos').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_terceiro').AsCurrency := 0;
            dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_produtos').AsCurrency := 0;
           {while (not dmGeral.OFI_CD_M_ORV_ITE.IsEmpty) do
             begin
               dmGeral.OFI_CD_M_ORV_ITE.Delete;
             end; }

           while (NOT dmGeral.BUS_CD_M_ORV.EOF) do
             begin
                 if not dmGeral.OFI_CD_M_ORV_ITE.Locate('ID_ORDEM_SUBST',dmGeral.BUS_CD_M_ORV.FieldByName('ID_ORDEM').AsString,[]) then
                    begin
                       dmGeral.BUS_CD_M_ORV_ITE.First;
                       while (NOT dmGeral.BUS_CD_M_ORV_ITE.EOF) do
                          begin
                            dmGeral.OFI_CD_M_ORV_ITE.Insert;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ORDEM_SUBST').AsInteger :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_ORDEM').AsInteger;


                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEITE').AsString :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_NOMEITE').AsString;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEUND').AsString :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_NOMEUND').AsString;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsInteger :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsInteger;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat;


                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency :=
                                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency*
                                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsCurrency;

                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency;


                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                                 dmGeral.BUS_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;


                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;

                            dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=
                                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency +
                                    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;

                           if  dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString<>'09' then
                             begin
                               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency :=
                                          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency +
                                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency :=
                                                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency +
                                                    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;


                               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency :=
                                                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency +
                                                    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                             end;

                           if  ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString='09') and
                               (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = true))  then
                             begin
                               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency :=
                                          dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency +
                                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency :=
                                                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency +
                                                    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;


                               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency :=
                                                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency +
                                                    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                             end;

                           if  ((dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString='09') and
                               (not (dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_SERTERCEIRO').AsBoolean = true)))  then
                             begin
                               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency :=
                                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency +
                                            dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency;

                               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency :=
                                                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency +
                                                    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;


                               dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency :=
                                                  dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency +
                                                    dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency;
                             end;
                            dmGeral.OFI_CD_M_ORV_ITE.Post;
                            dmGeral.BUS_CD_M_ORV_ITE.Next;
                         end;
                    end;
                 dmGeral.BUS_CD_M_ORV.Next;
             end;

             if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
                  dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_produtos').AsCurrency :=
                                 (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)*100;

             if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency > 0) then
                  dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_servicos').AsCurrency :=
                                 (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency/
                                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency)*100;

             if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency > 0) then
                  dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_terceiro').AsCurrency :=
                                 (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency/
                                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency)*100;

             OFI_FM_M_ORP.btnAddItens.Enabled := false;
             dmgeral.OFI_CD_M_ORV.FieldByName('ORDEM_SUBSTITUICAO').AsBoolean:=true;
         end
       else
         begin
           ShowMessage('Nenhuma ordem de serviço foi selecionado.');
         end;
     finally
        dmgeral.OFI_CD_M_ORV.BeforePost := dmgeral.OFI_CD_M_ORVBeforePost;
        dmgeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmgeral.OFI_CD_M_ORVvlr_desc_produtosChange;
        dmgeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange :=dmgeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
        dmgeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange :=dmgeral.OFI_CD_M_ORVvlr_desc_servicosChange;
        dmgeral.OFI_CD_M_ORVper_desc_servicos.OnChange :=dmgeral.OFI_CD_M_ORVper_desc_servicosChange;
        dmgeral.OFI_CD_M_ORVper_desc_terceiro.OnChange :=dmgeral.OFI_CD_M_ORVper_desc_terceiroChange;
        dmgeral.OFI_CD_M_ORVper_desc_produtos.OnChange :=dmgeral.OFI_CD_M_ORVper_desc_produtosChange;
        dmgeral.OFI_CD_M_ORV_ITE.BeforePost := dmgeral.OFI_CD_M_ORV_ITEBeforePost;
        dmgeral.OFI_CD_M_ORV_ITE.AfterPost := dmgeral.OFI_CD_M_ORV_ITEAfterPost;
        dmGeral.BUS_CD_M_ORV.Filtered := false;
     end;
    Close;
end;

procedure TOFI_FM_M_ORP_SUB.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  if trim(edtPesquisa.Text) = '' then
    begin
      ShowMessage('Deve preencher o filtro.');
      exit;
    end;

  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.BUS_CD_M_ORV.Close;
    dmGeral.BUS_CD_M_ORV.Data :=
    dmGeral.BUS_CD_M_ORV.DataRequest(
        VarArrayOf([92,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,
                                          dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').AsString,'1',
                                          dmGeral.OFI_CD_M_ORV.FieldByName('TIPO_ORDEM').AsString,
                                          edtPesquisa.Text]));


    dmGeral.BUS_CD_M_ORV_ITE.Filtered := true;
    dmGeral.BUS_CD_M_ORV_ITE.Filter := 'CANCELADA=FALSE';

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TOFI_FM_M_ORP_SUB.dbGridDblClick(Sender: TObject);
begin
 // inherited;

end;

procedure TOFI_FM_M_ORP_SUB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmGeral.BUS_CD_M_ORV_ITE.Filtered := FALSE;
  dmGeral.BUS_CD_M_ORV.Filtered := FALSE;
  dmGeral.BUS_CD_M_ORV.Close;
end;

end.
