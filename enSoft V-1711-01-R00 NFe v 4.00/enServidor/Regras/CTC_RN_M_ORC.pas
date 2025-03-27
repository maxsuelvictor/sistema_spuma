unit CTC_RN_M_ORC;

interface
uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr;

  procedure ctc_ud_m_orc(Sender: TObject; DataSet: TCustomClientDataSet);
  function ctc_dr_m_orc(Sender: TObject; Input: OleVariant;
           ctc_sq_m_orc:Tsqldataset;
           ctc_dp_m_orc:TDataSetProvider): OleVariant;


{ TODO -oMariel -cRotina :Regra de Contas a Pagar 02/11/2014 : 08:11 }

implementation

uses enConstantes;

procedure ctc_ud_m_orc(Sender: TObject; DataSet: TCustomClientDataSet);
begin

end;


function ctc_dr_m_orc(Sender: TObject; Input: OleVariant;
                                ctc_sq_m_orc:Tsqldataset;
                                ctc_dp_m_orc:TDataSetProvider):OleVariant;
  function enSqlCtcOrc: String;
  begin
    Result := 'select orc.* , obr.descricao as int_nomeobr '+
              'from ctc_tb_m_orc orc '+
              'left outer join ctc_tb_c_obr obr on obr.id_obra=orc.id_obra ';

  end;
begin
   ctc_sq_m_orc.Close;
   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           ctc_sq_m_orc.CommandText := enSqlCtcOrc + ' WHERE 1=2 '
        else
           ctc_sq_m_orc.CommandText := enSqlCtcOrc +
             ' WHERE orc.id_orc = ''' + VarToStr(Input[1]) +''' ';
      end
   else if Input[0] = 1 then
      begin
        ctc_sq_m_orc.CommandText := enSqlCtcOrc +
          Format('WHERE upper(obr.descricao) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]);
      end
   else if Input[0] = 2 then
      begin
        ctc_sq_m_orc.CommandText := enSqlCtcOrc +
          Format('WHERE upper(orc.obs) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[1]))]);
      end
   else if Input[0] = 3 then
      begin
        ctc_sq_m_orc.CommandText := enSqlCtcOrc +
             ' WHERE orc.dta_orc = ''' + FormatDateTime(CFormatoData, StrToDate(VarToStr(Input[1])) ) +''' ';
      end;


   Result := ctc_dp_m_orc.Data;

end;


end.
