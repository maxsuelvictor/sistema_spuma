unit PCP_RN_C_FPI;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math;

procedure PcpNovaFPI;
procedure PcpValidaFPI;

procedure PcpNovaFTI;
procedure PcpValidaFTI;

procedure PcpNovaITE;
procedure PcpValidaITE;

implementation
Uses uDmGeral,enConstantes, uProxy;

procedure PcpNovaFPI;
var
  SMPrincipal : TSMClient;
  begin
    SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
    try
      dmGeral.PCP_CD_C_FPI.FieldByName('ID_FPI').AsInteger :=
        SMPrincipal.enValorChave('PCP_TB_C_FPI');
    finally
      FreeAndNil(SMPrincipal);
    end;

    dmGeral.PCP_CD_C_FPI.FieldByName('ID_COR').AsInteger := 0;
    dmGeral.PCP_CD_C_FPI.FieldByName('ID_TAMANHO').AsInteger := 0;
  end;

procedure PcpNovaFTI;
  begin
    dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_FPI').AsInteger :=
      dmGeral.PCP_CD_C_FPI.FieldByName('ID_FPI').AsInteger;

    dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_COR').AsInteger := 0;
    dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_TAMANHO').AsInteger := 0;
  end;

procedure PcpNovaITE;
  begin
    dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_FPI').AsInteger :=
      dmGeral.PCP_CD_C_FPI.FieldByName('ID_FPI').AsInteger;

    dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_FPI_FTI').AsInteger :=
      dmGeral.PCP_CD_C_FPI_FTI.FieldByName('ID_FPI_FTI').AsInteger;

    dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_COR').AsInteger := 0;
    dmGeral.PCP_CD_C_FPI_FTI_ITE.FieldByName('ID_TAMANHO').AsInteger := 0;
  end;

procedure PcpValidaFPI;
  begin
    //
  end;

procedure PcpValidaFTI;
  begin
    //
  end;

procedure PcpValidaITE;
  begin
    //
  end;
end.
