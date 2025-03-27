unit CAD_RN_C_FPG;

interface

uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,DBClient;

procedure CadValidaFpgTap;

implementation

uses uDmGeral;


procedure CadValidaFpgTap;
begin
  if dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger = 0  then
      begin
        ShowMessage('O campo "De" deve ser preenchido.');
        dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').FocusControl;
        abort;
      end;

  if  dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger = 0 then
      begin
        ShowMessage('O campo "Até" deve ser preenchido.');
        dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').FocusControl;
        abort;
      end;

  if dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').AsInteger >
     dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_FIN').AsInteger  then
     begin
       ShowMessage('O início das parcelas não pode ser maior que o final das parcelas.');
       dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').FocusControl;
       abort;
     end;

  if dmGeral.CAD_CD_C_FPG_TAP.FieldByName('TAXA').AsFloat = 0 then
     begin
       ShowMessage('O campo "Taxa" deve ser preenchido.');
       dmGeral.CAD_CD_C_FPG_TAP.FieldByName('TAXA').FocusControl;
       abort;
     end;

  if dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_TOT').AsInteger = 0 then
     begin
       ShowMessage('O campo "Total de parcelas" não pode ser igual a 0.');
       dmGeral.CAD_CD_C_FPG_TAP.FieldByName('QTDE_PARC_INI').FocusControl;
       abort;
     end;

  if trim(dmGeral.CAD_CD_C_FPG_TAP.FieldByName('dias_acres_vencto').AsString) = '' then
     begin
       ShowMessage('O campo "Dias a + no vencimento" não pode ser vazio.');
       dmGeral.CAD_CD_C_FPG_TAP.FieldByName('dias_acres_vencto').FocusControl;
       abort;
     end;


end;

end.
