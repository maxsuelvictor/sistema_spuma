unit FIN_RN_M_DCT;

interface
 uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient,enFunc;


procedure FinNovoDct(DataSet: TDataSet);
procedure FinMascaraDct(DataSet:TDataSet);
procedure FinMascaraDctTit(DataSet:TDataSet);
procedure FinValidaDct(DataSet:TDataSet);

procedure FinRatearVlrDesc;

implementation

uses uProxy, uDmGeral, enConstantes;


procedure FinRatearVlrDesc;
var
  vlrDescAcum,vlrDesc:Currency;
  i:integer;
begin
  vlrDescAcum :=0;
  i:=1;
  dmGeral.FIN_CD_M_DCT_TIT.First;
  while not dmgeral.FIN_CD_M_DCT_TIT.eof do
    begin
      dmGeral.FIN_CD_M_DCT_TIT.Edit;
      if i=dmGeral.FIN_CD_M_DCT_TIT.RecordCount then
        begin
          vlrDesc := dmGeral.FIN_CD_M_DCT.FieldByName('VLR_TAXA_DESC').AsCurrency - vlrDescAcum;
        end
      else if i<dmGeral.FIN_CD_M_DCT_TIT.RecordCount then
        begin
           vlrDesc :=
               RoundTo(dmGeral.FIN_CD_M_DCT.FieldByName('VLR_TAXA_DESC').AsCurrency*
                  (dmGeral.FIN_CD_M_DCT_TIT.FieldByName('INT_VLR_PARCELA').AsCurrency/
                  dmGeral.FIN_CD_M_DCT.FieldByName('VLR_TOTAL_TITULOS').AsCurrency),-2);
           vlrDescAcum := vlrDescAcum+vlrDesc;
        end;

      dmGeral.FIN_CD_M_DCT_TIT.FieldByName('VLR_TAXA_DESC').AsCurrency := vlrDesc;
      dmGeral.FIN_CD_M_DCT_TIT.Post;
      inc(i);
      dmGeral.FIN_CD_M_DCT_TIT.Next;
    end;

end;


procedure FinNovoDct(DataSet: TDataSet);
var
  SMPrincipal : TSMClient;
begin
  dmGeral.FIN_CD_M_DCT.FieldByName('ID_DCT').AsInteger :=
         dmGeral.BuscarSeq('FIN_TB_M_DCT');

  dmGeral.FIN_CD_M_DCT.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

  dmGeral.FIN_CD_M_DCT.FieldByName('ID_RESPONSAVEL').AsInteger := xFuncionario;

  dmGeral.FIN_CD_M_DCT.FieldByName('DATA_ORIGINAL').AsDateTime := xDataSis;

  dmGeral.FIN_CD_M_DCT.FieldByName('CANCELADO').AsBoolean := false;

  dmGeral.FIN_CD_M_DCT.FieldByName('VLR_TOTAL_TITULOS').AsCurrency := 0;
  dmGeral.FIN_CD_M_DCT.FieldByName('per_taxa_desc').AsCurrency := 0;
  dmGeral.FIN_CD_M_DCT.FieldByName('vlr_taxa_desc').AsCurrency := 0;

end;


procedure FinMascaraDct(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_DCTVLR_TOTAL_TITULOS.DisplayFormat   :=CMascaraValor;
  dmGeral.FIN_CD_M_DCTper_taxa_desc.DisplayFormat       :=CMascaraValor;
  dmGeral.FIN_CD_M_DCTvlr_taxa_desc.DisplayFormat       :=CMascaraValor;
end;

procedure FinMascaraDctTit(DataSet:TDataSet);
begin
  dmGeral.FIN_CD_M_DCT_TITINT_VLR_PARCELA.DisplayFormat             :=CMascaraValor;
  dmGeral.FIN_CD_M_DCT_TITVLR_COBRADO_CANC_DESC.DisplayFormat       :=CMascaraValor;
end;


procedure FinValidaDct(DataSet:TDataSet);
var
  mens: String;
begin

  mens := '';

  if dmGeral.FIN_CD_M_DCT.FieldByName('DATA_OPERACAO').AsString = '' then
     begin
       mens := mens + '.Data' + #13;
     end;

  if dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsString = '' then
     begin
       mens := mens + '.Operação' + #13;
     end;

  if dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsString <> '' then
     begin
       if dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 0 then
          begin
            if dmGeral.FIN_CD_M_DCT.FieldByName('ID_CONTA').AsString = '' then
              begin
                mens := mens + '.Conta'+#13;
              end;

            if dmGeral.FIN_CD_M_DCT.FieldByName('ID_LOCAL_TITULO').AsString = '' then
              begin
                mens := mens + '.Local título'+#13;
              end;
          end;

       if dmGeral.FIN_CD_M_DCT.FieldByName('TIPO_OPERACAO').AsInteger = 2 then
          begin
            if dmGeral.FIN_CD_M_DCT.FieldByName('ID_LOCAL_TITULO').AsString = '' then
              begin
                mens := mens + '.Local título'+#13;
              end;
          end;

     end;

    if (mens <> '') then
     begin
       raise Exception.Create(enConstantes.MensErro + #13 + mens);
        abort;
     end;

end;

end.
