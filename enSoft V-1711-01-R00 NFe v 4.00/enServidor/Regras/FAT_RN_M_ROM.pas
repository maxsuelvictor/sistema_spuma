unit FAT_RN_M_ROM;

interface

uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,
     Datasnap.DBClient,Datasnap.Provider,enSM,Data.DBXCommon,Data.SqlExpr, uServer;

procedure FAT_DP_M_ROMUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet;
                                 FAT_DP_M_PCA,BUS_DP_M_PCA:TDataSetProvider);

implementation

procedure FAT_DP_M_ROMUpdateData(Sender: TObject;  DataSet: TCustomClientDataSet;
                                 FAT_DP_M_PCA,BUS_DP_M_PCA:TDataSetProvider);
var
  FAT_CD_M_PCA_ANT, FAT_CD_M_PCA_ATU : TClientDataSet;
  IdCarrAnt,IdCarrAtual: Integer;
begin

  FAT_CD_M_PCA_ANT := TClientDataSet.Create(nil);
  FAT_CD_M_PCA_ANT.SetProvider(FAT_DP_M_PCA);
  FAT_CD_M_PCA_ATU := TClientDataSet.Create(nil);
  FAT_CD_M_PCA_ATU.SetProvider(BUS_DP_M_PCA);

  IdCarrAnt   := dataset.FieldByName('id_pca').AsInteger;
  IdCarrAtual := dataset.FieldByName('id_pca').AsInteger;

  if not (dataset.UpdateStatus in [usDeleted]) then
     begin
       if (dataset.UpdateStatus in [usInserted]) then
           begin
             if IdCarrAtual > 0 then
                 begin
                   FAT_CD_M_PCA_ATU.Close;
                   FAT_CD_M_PCA_ATU.Data :=
                       FAT_CD_M_PCA_ATU.DataRequest(VarArrayOf([0, IdCarrAtual]));
                   if not FAT_CD_M_PCA_ATU.IsEmpty then
                      begin
                        FAT_CD_M_PCA_ATU.Edit;
                        FAT_CD_M_PCA_ATU.FieldByName('status').AsInteger := 1;
                        FAT_CD_M_PCA_ATU.Post;
                      end;
                 end;
           end;

       if (dataset.UpdateStatus in [usUnmodified]) then
           begin
             if (dataset.UpdateStatus in [usModified]) then
                begin
                  dataset.Next;
                  IdCarrAtual := dataset.FieldByName('id_pca').AsInteger;
                end;
             dataset.Prior;

             if IdCarrAnt <> IdCarrAtual then
                begin
                  if IdCarrAnt > 0 then
                     begin
                       FAT_CD_M_PCA_ANT.Close;
                       FAT_CD_M_PCA_ANT.Data :=
                           FAT_CD_M_PCA_ANT.DataRequest(VarArrayOf([0, IdCarrAnt]));
                       if not FAT_CD_M_PCA_ANT.IsEmpty then
                          begin
                            FAT_CD_M_PCA_ANT.Edit;
                            FAT_CD_M_PCA_ANT.FieldByName('status').AsInteger := 0;
                            FAT_CD_M_PCA_ANT.Post;
                          end;
                     end;

                  if IdCarrAtual > 0 then
                     begin
                       FAT_CD_M_PCA_ATU.Close;
                       FAT_CD_M_PCA_ATU.Data :=
                           FAT_CD_M_PCA_ATU.DataRequest(VarArrayOf([0, IdCarrAtual]));
                       if not FAT_CD_M_PCA_ATU.IsEmpty then
                          begin
                            FAT_CD_M_PCA_ATU.Edit;
                            FAT_CD_M_PCA_ATU.FieldByName('status').AsInteger := 1;
                            FAT_CD_M_PCA_ATU.Post;
                          end;
                     end;
                end;
           end;
     end
  else
     begin
        if IdCarrAtual > 0 then
           begin
             FAT_CD_M_PCA_ATU.Close;
             FAT_CD_M_PCA_ATU.Data :=
                 FAT_CD_M_PCA_ATU.DataRequest(VarArrayOf([0, IdCarrAtual]));
             if not FAT_CD_M_PCA_ATU.IsEmpty then
                begin
                  FAT_CD_M_PCA_ATU.Edit;
                  FAT_CD_M_PCA_ATU.FieldByName('status').AsInteger := 0;
                  FAT_CD_M_PCA_ATU.Post;
                end;
           end;
     end;


  if FAT_CD_M_PCA_ANT <> nil then
     if FAT_CD_M_PCA_ANT.ChangeCount > 0 then
        if not (FAT_CD_M_PCA_ANT.ApplyUpdates(0) = 0) then
           begin
             raise Exception.Create('Erro ao tentar atualizar o carregamento.');
           end;

  if FAT_CD_M_PCA_ATU <> nil then
     if FAT_CD_M_PCA_ATU.ChangeCount > 0 then
        if not (FAT_CD_M_PCA_ATU.ApplyUpdates(0) = 0) then
           begin
             raise Exception.Create('Erro ao tentar atualizar o orçamento.');
           end;
end;

end.
