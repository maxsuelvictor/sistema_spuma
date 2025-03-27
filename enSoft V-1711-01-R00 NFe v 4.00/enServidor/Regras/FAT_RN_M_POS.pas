unit FAT_RN_M_POS;

interface
uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr;

  function fat_dr_m_pos(Sender: TObject; Input: OleVariant;
                                FAT_SQ_M_POS:Tsqldataset;
                                FAT_DP_M_POS:TDataSetProvider ): OleVariant;

  function bus_dr_m_pos_ite(Sender: TObject; Input: OleVariant;
                                BUS_SQ_M_POS_ITE:Tsqldataset;
                                BUS_DP_M_POS_ITE:TDataSetProvider ): OleVariant;



implementation
uses enConstantes, uServer;

function fat_dr_m_pos(Sender: TObject; Input: OleVariant;
                                FAT_SQ_M_POS:Tsqldataset;
                                FAT_DP_M_POS:TDataSetProvider ): OleVariant;
  function enSqlFatPos: String;
  begin
    Result := ' SELECT POV.*, cli.nome as int_nomecli '+
              ' FROM FAT_TB_M_POS POV '+
              ' LEFT OUTER JOIN CAD_TB_C_CLI CLI ON CLI.ID_CLIENTE=POV.ID_CLIENTE ';
  end;
begin
   FAT_SQ_M_POS.Close;

   if Input[0] = 0 then
      begin
        if Trim(VarToStr(Input[1])) = '' then
           FAT_SQ_M_POS.CommandText := enSqlFatPos + ' WHERE 1=2 '
        else
           FAT_SQ_M_POS.CommandText := enSqlFatPos +
               ' WHERE POV.ID_EMPRESA =       ''' + VarToStr(Input[1]) +''' AND ' +
               '    POV.ID_POSVENDA = ''' + VarToStr(Input[2]) + ''' ' ;
      end;

   if Input[0] = 1 then
      begin

        FAT_SQ_M_POS.CommandText := enSqlFatPos +
          ' WHERE POV.ID_EMPRESA =       ''' + VarToStr(Input[1]) +''' AND ' +
          Format(' upper(CLI.NOME) LIKE ''%s%%'' ', [uppercase(VarToStr(Input[2]))]);

        FAT_SQ_M_POS.CommandText := FAT_SQ_M_POS.CommandText + ' ORDER BY CLI.NOME ';
      end;

   if Input[0] = 2 then
      begin
        FAT_SQ_M_POS.CommandText := enSqlFatPos +
          ' WHERE POV.ID_EMPRESA = ''' + VarToStr(Input[1]) + ''' AND ' +
          '   POV.DTA_POSVENDA = ''' + FormatDateTime(CFormatoData, strToDate( VarToStr(Input[2])) )  +''' ';

        FAT_SQ_M_POS.CommandText := FAT_SQ_M_POS.CommandText + ' ORDER BY POV.DTA_POSVENDA ';
      end;


   Result := FAT_DP_M_POS.Data;
   FAT_SQ_M_POS.Close;
end;

function bus_dr_m_pos_ite(Sender: TObject; Input: OleVariant;
                                BUS_SQ_M_POS_ITE:Tsqldataset;
                                BUS_DP_M_POS_ITE:TDataSetProvider ): OleVariant;
  function enSqlBusPos: String;
    begin
      Result := ' SELECT ite.*, pos.dta_posvenda, ' +
                ' cast( case ite.avaliacao         ' +
                '     when 1 then ''Ótimo''   ' +
                '     when 2 then ''Bom''     ' +
                '     when 3 then ''Regular'' ' +
                '     when 4 then ''Ruim''   ' +
                '  end as varchar(10) ) as int_avaliacao       ' +
                '  FROM FAT_TB_M_POS_ITE ite  ' +
                '       left outer join FAT_TB_M_POS pos on (pos.id_posvenda = ' +
                '       ite.id_posvenda) ';

    end;
begin

  { TODO -oMaxsuel -cCriação : Método criado por Maxsuel Victor, em 24/02/2015 }

  BUS_SQ_M_POS_ITE.Close;
  BUS_SQ_M_POS_ITE.CommandText := enSqlBusPos +
       ' WHERE id_empresa = '''+VarToStr(Input[0])+''' ' +
       '   AND id_cliente = '''+VarToStr(Input[1])+''' ' +
       '   AND (pos.dta_posvenda < ''' + FormatDateTime(CFormatoData, strToDate( VarToStr(Input[2])) )  +''') OR ' +
       '       (pos.dta_posvenda = ''' + FormatDateTime(CFormatoData, strToDate( VarToStr(Input[2])) )  +''' ' +
       '        AND  pos.id_posvenda < '''+VarToStr(Input[3])+''')' +
       ' ORDER BY dta_posvenda desc limit 10 ';
  result := BUS_DP_M_POS_ITE.Data;

end;
end.
