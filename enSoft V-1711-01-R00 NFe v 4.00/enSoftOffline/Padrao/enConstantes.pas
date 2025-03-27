unit enConstantes;

interface


ResourceString
  //constantes comuns do Servidor e do Cliente
  MensErro    = 'Inconsistência nos campos: ';   //Será utilizado tanto no Servidor quanto no Cliente
  DescErro    = '.Descrição deve ser informada.';
  AtencaoErro = 'Atenção:';


const
  // Versão do sistema
  CFormatoData         = 'dd/mm/yyyy';
  CFormatoData_v2      = 'yyyy-mm-dd';

  CVersaoSistema       = 'V-1705-01-R00'; // Sem Scripts

  CVersaoSistemaLoja   = '2015-01 R01';
  CMascaraData         = '!99/99/0000;1;_';
  CMascaraHora         = 'HH:MM';
  CMascaraValor        = '###,###,##0.00';
  CMascaraPerc         = '##0.00';
  CMascaraVlrMerc      = '###,###,###,####0.0000';
  CMascaraVlrInt       = '#0';
  CCfoNFE_ENTRADA      = '''EA10'',''EA30'',''EA40'',''EA50'',''EA60'',''EA65'',''EA70'',''EA80'',''EA90'',''EA91'',''EA99''';
  CAssin_Enorth        = 'Desenvolvido por: e-North Software (87) 3861-2216';

implementation



end.
