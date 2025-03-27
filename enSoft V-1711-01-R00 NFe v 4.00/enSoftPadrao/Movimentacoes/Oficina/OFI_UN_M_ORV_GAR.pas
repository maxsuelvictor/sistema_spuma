unit OFI_UN_M_ORV_GAR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PSQ, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, Vcl.ExtCtrls, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, cxButtons, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TOFI_FM_M_ORV_GAR = class(TPAD_FM_X_PSQ)
    dgItens: TwwDBGrid;
    btnSelecionar: TcxButton;
    dsoIte: TwwDataSource;
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure dgItensEnter(Sender: TObject);
    procedure dgItensExit(Sender: TObject);
    procedure dbGridFieldChanged(Sender: TObject; Field: TField);
    procedure dgItensFieldChanged(Sender: TObject; Field: TField);
    procedure btnSairClick(Sender: TObject);
    procedure cmbParametroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_ORV_GAR: TOFI_FM_M_ORV_GAR;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TOFI_FM_M_ORV_GAR.btnPesquisaClick(Sender: TObject);
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
        VarArrayOf([90+cmbParametro.ItemIndex,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString ,
                                          dmGeral.OFI_CD_M_ORV.FieldByName('ID_CLIENTE').AsString,'1',
                                          dmGeral.OFI_CD_M_ORV.FieldByName('TIPO_ORDEM').AsString,
                                          dmGeral.OFI_CD_M_ORV.FieldByName('ID_VEICULO').AsString,
                                          edtPesquisa.Text]));

   dmGeral.BUS_CD_M_ORV_ITE.Filtered := true;
   dmGeral.BUS_CD_M_ORV_ITE.Filter := 'INT_TIPO_ITEM<>''09'' ';
   dmGeral.BUS_CD_M_ORV_ITE.First;

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TOFI_FM_M_ORV_GAR.btnSairClick(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_M_ORV_ITE.Filtered := false;
end;

procedure TOFI_FM_M_ORV_GAR.btnSelecionarClick(Sender: TObject);
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
     inserirItens := true;



     dmGeral.BUS_CD_M_NFE.Close;
     dmGeral.BUS_CD_M_NFE.Data :=
     dmGeral.BUS_CD_M_NFE.DataRequest(VarArrayOf([12, dmgeral.OFI_CD_M_ORV.FieldByName('ID_FISCAL_REF_ENTRADA').AsString]));





     try
       dmGeral.BUS_CD_M_ORV_ITE.Filtered := true;
       dmGeral.BUS_CD_M_ORV_ITE.Filter := 'INT_TIPO_ITEM<>''09'' AND INT_SELECAO=TRUE';
       dmGeral.BUS_CD_M_ORV_ITE.First;
       dmgeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVper_desc_servicos.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVper_desc_terceiro.OnChange :=nil;
       dmgeral.OFI_CD_M_ORVper_desc_produtos.OnChange :=nil;
       dmgeral.OFI_CD_M_ORV.BeforePost := nil;
       dmgeral.OFI_CD_M_ORV_ITE.BeforePost := nil;
       dmgeral.OFI_CD_M_ORV_ITE.AfterPost := nil;



       if dmGeral.BUS_CD_M_ORV_ITE.IsEmpty then
         begin
           ShowMessage('Nenhum item foi selecionado.');
           inserirItens := false;
         end;

       if ((not dmGeral.BUS_CD_M_ORV_ITE.IsEmpty) and
          (dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM_ORIG_GAR').AsString <> '')) and
          (dmGeral.BUS_CD_M_ORV.FieldByName('ID_ORDEM').AsInteger <>
              dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM_ORIG_GAR').AsInteger) then
         begin
            if MessageDlg('Os itens selecionados da nota anterior serão deletados. Deseja Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                 while (dmgeral.OFI_CD_M_ORV_ITE.RecordCount>0) do
                   dmGeral.OFI_CD_M_ORV_ITE.Delete;
              end
            else
              begin
               inserirItens := false;
              end;
         end;


       codItens := '';


       while (inserirItens=true) and (NOT dmGeral.BUS_CD_M_ORV_ITE.EOF) do
         begin
           if (dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_QTDE_GAR').AsCurrency > 0 ) and
              (dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_QTDE_GAR').AsCurrency <=
                dmGeral.BUS_CD_M_ORV_ITE.FieldByName('QTDE').AsCurrency) and
                dmGeral.BUS_CD_M_NFE_ITE.locate('ID_ITEM',dmGeral.BUS_CD_M_ORV_ITE.FieldBYName('ID_ITEM').AsString,[])   then
             begin

               if  not dmGeral.OFI_CD_M_ORV_ITE.locate('ID_SEQUENCIA',dmGeral.BUS_CD_M_ORV_ITE.FieldBYName('ID_SEQUENCIA').AsString,[])  then
                 begin
                   dmGeral.OFI_CD_M_ORV_ITE.Insert;
                 end
               else
                 begin
                  dmGeral.OFI_CD_M_ORV_ITE.Edit;
                 end;

                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsInteger;


                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_BUSCA_ITEM').AsInteger;

                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEITE').AsString :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_NOMEITE').AsString;

                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_NOMEUND').AsString :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_NOMEUND').AsString;

                 dmGeral.OFI_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_TIPO_ITEM').AsString;

                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsInteger :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_MECANICO').AsInteger;

                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_SEQUENCIA').AsInteger;

                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency;

                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO_ORIG').AsCurrency;

                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsFloat :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('INT_QTDE_GAR').AsFloat;


                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency :=
                     dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_UNITARIO').AsCurrency*
                     dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsCurrency;

                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency :=
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('PER_DESCONTO').AsCurrency;


                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency :=
                     (dmGeral.BUS_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency/
                     dmGeral.BUS_CD_M_ORV_ITE.FieldByName('QTDE').AsCurrency)*
                     dmGeral.OFI_CD_M_ORV_ITE.FieldByName('QTDE').AsCurrency;


                dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_LIQUIDO').AsCurrency :=
                     dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_BRUTO').AsCurrency-
                     dmGeral.OFI_CD_M_ORV_ITE.FieldByName('VLR_DESCONTO').AsCurrency;


               dmGeral.OFI_CD_M_ORV_ITE.Post;
           end
          else
           begin
             if codItens='' then
                codItens := codItens +dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsString
             else
                codItens := codItens +', '+dmGeral.BUS_CD_M_ORV_ITE.FieldByName('ID_ITEM').AsString;
           end;

           dmGeral.BUS_CD_M_ORV_ITE.Next;
         end;




        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency := 0;

        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SERV_BRUTO').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_SERVICOS').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_SER_LIQUIDO').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERCEIRO').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_TERCEIRO').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TERC_LIQUIDO').AsCurrency := 0;

        dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_servicos').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_terceiro').AsCurrency := 0;
        dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_produtos').AsCurrency := 0;
        dmgeral.OFI_CD_M_ORV_ITE.First;
        while not dmGeral.OFI_CD_M_ORV_ITE.EOF do
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

             dmGeral.OFI_CD_M_ORV.FieldByName('VLR_TOTAL').AsCurrency :=
                                    dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PROD_LIQUIDO').AsCurrency;

            dmGeral.OFI_CD_M_ORV_ITE.Next;
          end;

        if (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency > 0) then
           dmGeral.OFI_CD_M_ORV.FieldByName('per_desc_produtos').AsCurrency :=
                                 (dmGeral.OFI_CD_M_ORV.FieldByName('VLR_DESC_PRODUTOS').AsCurrency/
                                      dmGeral.OFI_CD_M_ORV.FieldByName('VLR_PRODUTOS').AsCurrency)*100;



           if codItens <>'' then
             begin
               ShowMessage('Os seguintes itens selecionados não foram inseridos na ordem de serviço de garantia por apresentar qtde garantia igual a 0 ou maior que qtde do item da OS; ou '+
                           'ainda não constar na nota fiscal de entrada selecionado:'+
                            #13+#10+codItens);
             end;



     finally
        dmGeral.BUS_CD_M_ORV_ITE.Filter := 'INT_TIPO_ITEM<>''09'' ';
        dmgeral.OFI_CD_M_ORV.BeforePost := dmgeral.OFI_CD_M_ORVBeforePost;
        dmgeral.OFI_CD_M_ORVvlr_desc_produtos.OnChange := dmgeral.OFI_CD_M_ORVvlr_desc_produtosChange;
        dmgeral.OFI_CD_M_ORVvlr_desc_terceiro.OnChange :=dmgeral.OFI_CD_M_ORVvlr_desc_terceiroChange;
        dmgeral.OFI_CD_M_ORVvlr_desc_servicos.OnChange :=dmgeral.OFI_CD_M_ORVvlr_desc_servicosChange;
        dmgeral.OFI_CD_M_ORVper_desc_servicos.OnChange :=dmgeral.OFI_CD_M_ORVper_desc_servicosChange;
        dmgeral.OFI_CD_M_ORVper_desc_terceiro.OnChange :=dmgeral.OFI_CD_M_ORVper_desc_terceiroChange;
        dmgeral.OFI_CD_M_ORVper_desc_produtos.OnChange :=dmgeral.OFI_CD_M_ORVper_desc_produtosChange;
        dmgeral.OFI_CD_M_ORV_ITE.BeforePost := dmgeral.OFI_CD_M_ORV_ITEBeforePost;
        dmgeral.OFI_CD_M_ORV_ITE.AfterPost := dmgeral.OFI_CD_M_ORV_ITEAfterPost;
     end;


    if (inserirItens=true) and (dmGeral.OFI_CD_M_ORV_ITE.RecordCount >0) then
     begin
     dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM_ORIG_GAR').AsInteger :=
                          dmGeral.BUS_CD_M_ORV.FieldByName('ID_ORDEM').AsInteger;
     dmGeral.OFI_CD_M_ORV.FieldByName('ID_ANALISTA').AsInteger :=
                          dmGeral.BUS_CD_M_ORV.FieldByName('ID_ANALISTA').AsInteger;
     end
   else
     begin
       while (dmgeral.OFI_CD_M_ORV_ITE.RecordCount>0) do
                   dmGeral.OFI_CD_M_ORV_ITE.Delete;
       dmGeral.OFI_CD_M_ORV.FieldByName('ID_ORDEM_ORIG_GAR').AsString :=  '';
       dmGeral.OFI_CD_M_ORV.FieldByName('ID_ANALISTA').AsString := '';
     end;


end;

procedure TOFI_FM_M_ORV_GAR.cmbParametroChange(Sender: TObject);
begin
  inherited;
  edtPesquisa.Text := '';
  if cmbParametro.ItemIndex = 0 then
   begin
     edtPesquisa.NumbersOnly := true;
   end
  else
   begin
      edtPesquisa.NumbersOnly := false;
   end;
end;

procedure TOFI_FM_M_ORV_GAR.dbGridFieldChanged(Sender: TObject; Field: TField);
begin
  inherited;
  {


  }
end;

procedure TOFI_FM_M_ORV_GAR.dgItensEnter(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_M_ORV_ITE.Edit;
end;

procedure TOFI_FM_M_ORV_GAR.dgItensExit(Sender: TObject);
begin
  inherited;
  dmgeral.BUS_CD_M_ORV_ITE.Post;
end;

procedure TOFI_FM_M_ORV_GAR.dgItensFieldChanged(Sender: TObject; Field: TField);
begin
  inherited;

  IF (dmGeral.BUS_CD_M_ORV_ITE.FieldByname('INT_SELECAO').AsBoolean = true) and
     (dmGeral.BUS_CD_M_ORV_ITE.FieldByname('INT_TIPO_ITEM').AsString = '09') then
    begin
       ShowMessage('Só pode ser seleciondo itens do tipo produto.');
       dgItens.OnFieldChanged := nil;
       dmGeral.BUS_CD_M_ORV_ITE.FieldByname('INT_SELECAO').AsBoolean := false;
       dgItens.OnFieldChanged :=  dgItensFieldChanged;
    end;

  IF (dmGeral.BUS_CD_M_ORV_ITE.FieldByname('INT_QTDE_GAR').AsCurrency >
          dmGeral.BUS_CD_M_ORV_ITE.FieldByname('QTDE').AsCurrency ) then
    begin
       ShowMessage('A qtde máxima do item é '+dmGeral.BUS_CD_M_ORV_ITE.FieldByname('QTDE').AsString);
       dgItens.OnFieldChanged := nil;
       dmGeral.BUS_CD_M_ORV_ITE.FieldByname('INT_QTDE_GAR').AsCurrency := 0;
       dgItens.OnFieldChanged :=  dgItensFieldChanged;
    end;
end;

end.
