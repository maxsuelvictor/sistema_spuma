unit CAD_UN_C_PES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, cxControls, cxCustomData, cxStyles, cxTL, cxCheckBox, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, dxtree, dxdbtree,
  Vcl.ComCtrls, JvExComCtrls, JvDBTreeView,Datasnap.DBClient, JvExExtCtrls,
  JvExtComponent, JvPanel;

type
  TCAD_FM_C_PES = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    txtCodigo: TDBEdit;
    txtDescricao: TDBEdit;
    dsoMod: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    mpOpcoes: TPopupMenu;
    miAtivaTodos: TMenuItem;
    txtCodRev: TDBEdit;
    Label53: TLabel;
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure miAtivaTodosClick(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure CadPesAtualizaModulos(DataSet: TDataSet);
    procedure CadPesCorrigiModulos;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_PES: TCAD_FM_C_PES;

implementation

{$R *.dfm}

uses uDmGeral, CAD_RN_C_PES, enSoftMenu;

procedure TCAD_FM_C_PES.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PES);
  CadPesAtualizaModulos(dmGeral.CAD_CD_C_PES);
  txtDescricao.SetFocus;
end;

procedure TCAD_FM_C_PES.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PES) then
      begin
        inherited;
        CadPesCorrigiModulos;
        CadPesAtualizaModulos(dmGeral.CAD_CD_C_PES);
        dmGeral.CAD_CD_C_PES_MOD.First;
        txtDescricao.SetFocus;
      end;
end;

procedure TCAD_FM_C_PES.acCancelarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PES) then
     begin
       inherited;
       dbGrid.SetFocus;
     end
  else
     begin
       txtDescricao.SetFocus;
     end;
end;

procedure TCAD_FM_C_PES.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_PES);
end;

procedure TCAD_FM_C_PES.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := dmGeral.CAD_CD_C_PES.FieldByName('ID_PERFIL_SEG').AsString;



   try
    DmGeral.Grava(dmGeral.CAD_CD_C_PES);
   finally
    inherited;
    dmGeral.CAD_CD_C_PES.Close;
    dmGeral.CAD_CD_C_PES.Data :=
    dmGeral.CAD_CD_C_PES.DataRequest(
            VarArrayOf([0, codigo]));
   end;



end;

procedure TCAD_FM_C_PES.btnFiltroClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    inherited;
    dmGeral.CAD_CD_C_PES.Close;
    dmGeral.CAD_CD_C_PES.Data :=
    dmGeral.CAD_CD_C_PES.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_PES.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0,1] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCAD_FM_C_PES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_PES.Close;
  FreeAndNil(CAD_FM_C_PES);
end;

procedure TCAD_FM_C_PES.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_PES.Close;
  dmGeral.CAD_CD_C_PES.Data := dmGeral.CAD_CD_C_PES.DataRequest(VarArrayOf([0, '']));


  dmGeral.BUS_CD_X_PMO.close;
  dmGeral.BUS_CD_X_PMO.CreateDataSet;

end;

procedure TCAD_FM_C_PES.miAtivaTodosClick(Sender: TObject);
var
  estado: Boolean;
begin
  inherited;

  if miAtivaTodos.Checked then
     begin
       miAtivaTodos.Checked := false;
       estado := false;
     end
  else
     begin
        miAtivaTodos.Checked := true;
       estado := true;
     end;

  if not dmGeral.CAD_CD_C_PES_MOD.IsEmpty then
     begin
       dmGeral.CAD_CD_C_PES_MOD.First;
       while not dmGeral.CAD_CD_C_PES_MOD.eof do
          begin
            dmGeral.CAD_CD_C_PES_MOD.Edit;
            dmGeral.CAD_CD_C_PES_MODativo.AsBoolean := estado;
            dmGeral.CAD_CD_C_PES_MOD.Post;
            dmGeral.CAD_CD_C_PES_MOD.Next;
          end;
       dmGeral.CAD_CD_C_PES_MOD.First;
     end;

end;

procedure TCAD_FM_C_PES.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TCAD_FM_C_PES.CadPesAtualizaModulos(DataSet: TDataSet);
Var i:integer;
    xMenu:String;
    xTitulo:string;
    cont: integer;
begin
  For i:=0 to frmSoftMenu.MenuManager.ItemCount -1 do
    begin
      cont := 0; // para inpedir que seja ativado mais de um evendo de exclusão;
      xMenu:=frmSoftMenu.MenuManager.Items[i].Name;
      if copy(xMenu,5,2)='MN' then
         begin
           if (dmGeral.CAD_CD_C_PES_MOD.Locate('id_perfil_seg;formulario',VarArrayOf([DataSet.FieldByName('id_perfil_seg').AsInteger,
                 xMenu]),[loCaseInsensitive]))=false then
              begin
                dmGeral.CAD_CD_C_PES_MOD.Insert;
                dmGeral.CAD_CD_C_PES_MOD.FieldByName('id_perfil_seg').AsInteger:= DataSet.FieldByName('id_perfil_seg').AsInteger;
                dmGeral.CAD_CD_C_PES_MOD.FieldByName('formulario').AsString    := xMenu;
                dmGeral.CAD_CD_C_PES_MOD.FieldByName('Ativo').AsBoolean        := False;
                dmGeral.CAD_CD_C_PES_MOD.FieldByName('Chave').AsString         := '';
                dmGeral.CAD_CD_C_PES_MOD.FieldByName('descricao').AsString     := frmSoftMenu.MenuManager.Items[i].Caption;
                dmGeral.CAD_CD_C_PES_MOD.FieldByName('menu').AsString          := copy(frmSoftMenu.MenuManager.Items[i].Description,5,90);
                dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString        := copy(frmSoftMenu.MenuManager.Items[i].Description,1,3);;
                dmGeral.CAD_CD_C_PES_MOD.Post;

                if ( ((xMenu = 'OFI_MN_M_AGE') or (xMenu = 'OFI_MN_M_POS') ) and
                   (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = true)) and (cont = 0) then
                   begin
                     dmGeral.CAD_CD_C_PES_MOD.Delete;
                     cont := 1;
                   end;
              end;

            if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = false) and
                (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean = false) and
                (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = false) and
                (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TOR').AsBoolean = false) and
                (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OMP').AsBoolean = false) and
                (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='OFI') and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end
            else if (((xMenu = 'OFI_MN_M_AGE') or (xMenu = 'OFI_MN_M_POS') ) and
               ((dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean = true) or
               (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = true))) and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end
            else if ((xMenu = 'OFI_MN_M_MTC')  and
               (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean = true)) and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end;


            if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CAD').AsBoolean = false) and
               (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='CAD') and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end
            ELSE if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CAD').AsBoolean = true) and
                    (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='CAD')  then
               begin
                 if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = false)  then
                   begin
                     if (xMenu = 'CAD_MN_C_MTV') and (cont = 0) then
                      begin
                        dmGeral.CAD_CD_C_PES_MOD.Delete;
                        cont := 1;
                      end;
                   end;
               end;

            if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('EST').AsBoolean = false) and
               (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='EST') and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end;

            if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('FIN').AsBoolean = false) and
               (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='FIN') and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end
            else if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('FIN').AsBoolean = true) then
               begin
                 if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('ADF').AsBoolean=false) and (cont = 0) then
                   begin
                     if (xMenu = 'FIN_MN_M_LMF') or (xMenu = 'FIN_MN_M_PRC') or
                        (xMenu = 'FIN_MN_R_LMF') or (xMenu = 'FIN_MN_R_PRC')  then
                        begin
                          dmGeral.CAD_CD_C_PES_MOD.Delete;
                          cont := 1;
                        end;
                   end;
               end;


            if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TAB').AsBoolean = false) and
               (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='TAB') and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end
            ELSE if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('TAB').AsBoolean = true) and
                    (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='TAB')  then
               begin
                 if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = false) then
                   begin
                     if (xMenu = 'CAD_MN_C_GRP') and (cont = 0) then
                      begin
                        dmGeral.CAD_CD_C_PES_MOD.Delete;
                        cont := 1;
                      end;
                   end;
               end;

            if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CSU').AsBoolean = false) and
               (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='CSU') and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end
            else if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CSU').AsBoolean = true) and
                    (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='CSU')  then
               begin
                 if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean = false) then
                   begin
                     if (xMenu = 'CSU_MN_C_MTV') and (cont = 0) then
                      begin
                        dmGeral.CAD_CD_C_PES_MOD.Delete;
                        cont := 1;
                      end;
                   end;
               end;

            if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('CMP').AsBoolean = false) and
               (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='CMP') and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end;

            if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('FAT').AsBoolean = false) and
               (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='FAT') and (cont = 0) then
               begin
                 dmGeral.CAD_CD_C_PES_MOD.Delete;
                 cont := 1;
               end;

            if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean = false) and
               (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString='SGQ') then
               begin
                 if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('REV').AsBoolean <> true) and
                    (xMenu <> 'PCP_MN_C_ROT') and (cont = 0) then
                    begin
                      dmGeral.CAD_CD_C_PES_MOD.Delete;
                      cont := 1;
                    end;
               end;
         end;
    end;
end;



procedure TCAD_FM_C_PES.CadPesCorrigiModulos;
Var i,x:integer;
    xMenu:String;
begin
  x:= 0;
  dmGeral.CAD_CD_C_PES_MOD.First;
  while not dmGeral.CAD_CD_C_PES_MOD.Eof do
    begin
      For i:=0 to frmSoftMenu.MenuManager.ItemCount -1 do
        begin
          xMenu:=frmSoftMenu.MenuManager.Items[i].Name;
          if (copy(xMenu,5,2)='MN') and (dmGeral.CAD_CD_C_PES_MOD.FieldByName('formulario').Text = xMenu) and
            (dmGeral.CAD_CD_C_PES_MOD.FieldByName('descricao').AsString = frmSoftMenu.MenuManager.Items[i].Caption) and
            (dmGeral.CAD_CD_C_PES_MOD.FieldByName('menu').AsString = copy(frmSoftMenu.MenuManager.Items[i].Description,5,90)) and
            (dmGeral.CAD_CD_C_PES_MOD.FieldByName('modulo').AsString = copy(frmSoftMenu.MenuManager.Items[i].Description,1,3)) then
            begin
              x:= 1;
              Break;
            end;
        end;
      if x = 0 then
        begin
          dmGeral.CAD_CD_C_PES_MOD.Delete;
        end
      else
        begin
          x:= 0;
          dmGeral.CAD_CD_C_PES_MOD.Next;
        end;
    end;
end;

end.
