unit OFI_RN_M_CVL;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure OfiNovaCvl(DataSet: TDataSet);
procedure OfiMascaraIPVA(DataSet: TDataSet);
procedure OfiMascaraMulta(DataSet: TDataSet);
procedure OfiMascaraSeguro(DataSet: TDataSet);
procedure OfiValidaCvl(DataSet: TDataSet);

implementation

uses uDmGeral, enConstantes;

procedure OfiNovaCvl(DataSet: TDataSet);
begin


    dmGeral.OFI_CD_M_CVL.FieldByName('ID_CONTROLE').AsInteger :=
         dmGeral.BuscarSeq('OFI_TB_M_CVL');

    dmGeral.OFI_CD_M_CVL.FieldByName('ID_EMPRESA').AsInteger :=
          dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsInteger;

    dmGeral.OFI_CD_M_CVL.FieldByName('dta_controle').AsDateTime := xDataSis;
    dmGeral.OFI_CD_M_CVL.FieldByName('TIPO_MOVIMENTO').AsInteger := 0;
end;

procedure OfiMascaraIPVA(DataSet: TDataSet);
begin
    dmGeral.OFI_CD_M_CVL_IPVvlr_ipva.DisplayFormat := CMascaraValor;
    dmGeral.OFI_CD_M_CVL_IPVvlr_seguro_obg.DisplayFormat := CMascaraValor;
    dmGeral.OFI_CD_M_CVL_IPVvalor_cta01.DisplayFormat := CMascaraValor;
    dmGeral.OFI_CD_M_CVL_IPVvalor_cta02.DisplayFormat := CMascaraValor;
    dmGeral.OFI_CD_M_CVL_IPVvalor_cta03.DisplayFormat := CMascaraValor;
end;

procedure OfiMascaraMulta(DataSet: TDataSet);
begin
   dmGeral.OFI_CD_M_CVL_MLTvlr_multa.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_CVL_MLTvlr_pago.DisplayFormat := CMascaraValor;
end;

procedure OfiMascaraSeguro(DataSet: TDataSet);
begin
   dmGeral.OFI_CD_M_CVL_SGRvlr_seguro.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_CVL_SGRvlr_franquia.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_CVL_SGRvlr_cobertura.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_CVL_SGRvlr_danos_materiais.DisplayFormat := CMascaraValor;
   dmGeral.OFI_CD_M_CVL_SGRvlr_danos_corporais.DisplayFormat := CMascaraValor;
end;

procedure OfiValidaCvl(DataSet: TDataSet);
var
  xMensErro:string;
begin
  xMensErro:='';

  if (dmGeral.OFI_CD_M_CVL.FieldByName('TIPO_MOVIMENTO').AsString='') then
   begin
     xMensErro:= xMensErro + '.Tipo movimento deve ser informada.'+ #13;
     dmGeral.OFI_CD_M_CVL.FieldByName('TIPO_MOVIMENTO').FocusControl;
   end;

  if (dmGeral.OFI_CD_M_CVL.FieldByName('id_meq').AsString='') then
   begin
     xMensErro:= xMensErro + '.Placa deve ser informada.'+ #13;
     dmGeral.OFI_CD_M_CVL.FieldByName('int_placa').FocusControl;
   end;

  if (dmGeral.OFI_CD_M_CVL.FieldByName('dta_controle').AsString='') then
   begin
     xMensErro:= xMensErro + '.Data deve ser informada.'+ #13;
     dmGeral.OFI_CD_M_CVL.FieldByName('dta_controle').FocusControl;
   end;

  if xMensErro<>'' then
     raise Exception.Create(enConstantes.MensErro + #13 + xMensErro);

end;

end.
