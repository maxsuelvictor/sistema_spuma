unit FAT_RN_M_MKT;

interface

uses Classes,
  DBXCommon,
  SysUtils,
  Dialogs,
  enSM,DBClient, Data.DB, Datasnap.Provider,System.Variants,Data.SqlExpr;

procedure FAT_DP_M_MKTUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet; Conn: TSQLConnection);


implementation

procedure FAT_DP_M_MKTUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet; Conn: TSQLConnection);
var
  cdsMktCli: TDataSet;
  CAD_SQ_C_CLI_BCO: TSQLDataSet;
  CAD_CD_C_CLI_BCO: TClientDataSet;
  CAD_DP_C_CLI_BCO: TDataSetProvider;
  IdBancoInfo: Integer;
  IdCliente: Integer;
  IdMkt: Integer;
  qry,qryNova: TSqlQuery;
  xSeq,result: Integer;

  Vtran: TDBXTransaction;
begin
   try
     cdsMktCli := TDataSetField(dataset.FieldByName('FAT_SQ_M_MKT_CLI')).NestedDataSet;

     CAD_SQ_C_CLI_BCO := TSQLDataSet.Create(nil);
     CAD_SQ_C_CLI_BCO.SQLConnection := conn;
     CAD_SQ_C_CLI_BCO.CommandType   := ctQuery;
     CAD_SQ_C_CLI_BCO.CommandText   := 'SELECT * FROM CAD_TB_C_CLI_BCO WHERE ID_MKT = ' +
                                       dataset.FieldByName('ID_MKT').AsString;

     CAD_DP_C_CLI_BCO := TDataSetProvider.Create(nil);
     CAD_DP_C_CLI_BCO.DataSet := CAD_SQ_C_CLI_BCO;

     CAD_CD_C_CLI_BCO := TClientDataSet.Create(nil);
     CAD_CD_C_CLI_BCO.SetProvider(CAD_DP_C_CLI_BCO);
     CAD_CD_C_CLI_BCO.Open;


     if dataset.UpdateStatus in [usInserted] then
        begin
          while not cdsMktCli.Eof do
             begin
               if trim(cdsMktCli.FieldByName('obs').AsString) <> '' then
                  begin
                    CAD_CD_C_CLI_BCO.Insert;

                    CAD_CD_C_CLI_BCO.FieldByName('id_banco_info').AsInteger :=
                        cdsMktCli.FieldByName('id_banco_info').AsInteger;

                    CAD_CD_C_CLI_BCO.FieldByName('ID_MKT').AsInteger :=
                        cdsMktCli.FieldByName('id_mkt').AsInteger;

                    CAD_CD_C_CLI_BCO.FieldByName('ID_CLIENTE').AsInteger :=
                        cdsMktCli.FieldByName('id_cliente').AsInteger;

                    CAD_CD_C_CLI_BCO.FieldByName('dta_informacao').AsDateTime := date;
                    CAD_CD_C_CLI_BCO.FieldByName('obs').AsString := cdsMktCli.FieldByName('obs').AsString;
                    CAD_CD_C_CLI_BCO.Post;
                  end;
               cdsMktCli.Next;
             end;
        end;

     if dataset.UpdateStatus in [usUnmodified] then
        begin
          while not cdsMktCli.Eof do
             begin

               IdCliente   := cdsMktCli.FieldByName('id_cliente').AsInteger;
               IdMkt       := cdsMktCli.FieldByName('id_mkt').AsInteger;
               IdBancoInfo := cdsMktCli.FieldByName('id_banco_info').AsInteger;

               if cdsMktCli.UpdateStatus in [usUnmodified] then
                  begin
                    cdsMktCli.Next;
                    if cdsMktCli.UpdateStatus in [usModified] then
                       begin
                         if trim(cdsMktCli.FieldByName('obs').AsString) <> '' then
                            begin
                              if CAD_CD_C_CLI_BCO.Locate('ID_MKT;ID_CLIENTE',
                                 VarArrayOf([IdMkt,IdCliente]),[]) then
                                 begin
                                   CAD_CD_C_CLI_BCO.Edit;
                                   CAD_CD_C_CLI_BCO.FieldByName('id_banco_info').AsInteger   := IdBancoInfo;
                                   CAD_CD_C_CLI_BCO.FieldByName('dta_informacao').AsDateTime := date;
                                   CAD_CD_C_CLI_BCO.FieldByName('obs').AsString              :=
                                          cdsMktCli.FieldByName('obs').AsString;
                                   CAD_CD_C_CLI_BCO.Post;
                                 end
                              else
                                 begin
                                   CAD_CD_C_CLI_BCO.Insert;

                                   CAD_CD_C_CLI_BCO.FieldByName('id_banco_info').AsInteger :=  IdBancoInfo;

                                   CAD_CD_C_CLI_BCO.FieldByName('ID_MKT').AsInteger :=
                                        IdMkt;

                                   CAD_CD_C_CLI_BCO.FieldByName('ID_CLIENTE').AsInteger :=
                                        IdCliente;

                                   CAD_CD_C_CLI_BCO.FieldByName('dta_informacao').AsDateTime := date;
                                   CAD_CD_C_CLI_BCO.FieldByName('obs').AsString := cdsMktCli.FieldByName('obs').AsString;
                                   CAD_CD_C_CLI_BCO.Post;
                                 end;
                            end
                         else
                            begin
                              if CAD_CD_C_CLI_BCO.Locate('ID_MKT;ID_CLIENTE',
                                 VarArrayOf([IdMkt,IdCliente]),[]) then
                                 begin
                                   CAD_CD_C_CLI_BCO.Delete;
                                 end;
                            end;
                       end;
                  end;
                cdsMktCli.Next;
             end;
        end;


        try
           if CAD_CD_C_CLI_BCO <> nil then
              if CAD_CD_C_CLI_BCO.ChangeCount > 0 then
                   CAD_CD_C_CLI_BCO.ApplyUpdates(0);
        except
           on e: exception do
              begin
                 raise Exception.Create('Erro ao tentar atualizar a tabela de banco de informações do cliente: ' + #13 + e.Message);
              end;
        end;
    finally
      FreeAndNil(CAD_SQ_C_CLI_BCO);
      FreeAndNil(CAD_CD_C_CLI_BCO);
      FreeAndNil(CAD_DP_C_CLI_BCO);
    end;
end;
end.
