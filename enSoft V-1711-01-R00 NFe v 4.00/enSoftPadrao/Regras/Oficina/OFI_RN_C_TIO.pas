unit OFI_RN_C_TIO;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure OfiNovaTio;



implementation
Uses uDmGeral,enConstantes, uProxy;


procedure OfiNovaTio;
var
  SMPrincipal : TSMClient;
begin
  //Busca sequencia no servidor
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    dmGeral.OFI_CD_C_TIO.FieldByName('ID_TIPO_OS').AsInteger :=
         SMPrincipal.enValorChave('OFI_TB_C_TIO');

  finally
    FreeAndNil(SMPrincipal);
  end;
end;

end.
