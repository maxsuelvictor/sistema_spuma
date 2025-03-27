unit PCP_UN_M_OPR_OPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Buttons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, JvExMask, JvToolEdit, JvDBControls, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, JvExExtCtrls, JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls,
  vcl.wwdblook, vcl.Wwdbedit;

type
  TPCP_FM_M_OPR_OPS = class(TPAD_FM_X_FRM)
    dsoOPS: TwwDataSource;
    dsoLote: TwwDataSource;
    dsoOpsIps: TwwDataSource;
    btnGravar: TcxButton;
    pnlTopo: TPanel;
    txtResponsavel: TDBEdit;
    lblresponsavel: TLabel;
    txtEmissao: TJvDBDateEdit;
    lblEmissao: TLabel;
    txtOrdemdeProd: TDBEdit;
    lblOrdemDeProd: TLabel;
    pnlMeio: TPanel;
    GroupBox1: TGroupBox;
    dbOPS: TwwDBGrid;
    Panel2: TPanel;
    txtNOps: TEdit;
    lblOPS: TLabel;
    Label3: TLabel;
    cbbSetor: TComboBox;
    Label1: TLabel;
    pnlItens: TPanel;
    txtOPS: TwwDBEdit;
    txtIteAcabado: TwwDBEdit;
    txtUnd: TwwDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtQtde: TwwDBEdit;
    txtLote: TwwDBEdit;
    txtLoteTecido: TwwDBEdit;
    txtLoteTNT: TwwDBEdit;
    txtLoteBord: TwwDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btnGravar2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acSairExecute(Sender: TObject);
    procedure cbbSetorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtNOpsExit(Sender: TObject);
    procedure dbOPSKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbOPSEnter(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dbOPSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtLoteBordExit(Sender: TObject);
    procedure pnlItensExit(Sender: TObject);
    procedure btnGravar2Click(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure txtLoteExit(Sender: TObject);
    procedure txtLoteTNTExit(Sender: TObject);
    procedure txtLoteTecidoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_OPR_OPS: TPCP_FM_M_OPR_OPS;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_OPR_OPS, PSQ_UN_X_ITE, PCP_UN_M_OPR;

procedure TPCP_FM_M_OPR_OPS.acSairExecute(Sender: TObject);
begin
  try
    dmGeral.PCP_CD_M_OPR_OPS.Filtered := false;
  finally

  end;

  dmGeral.PCP_CD_M_OPR_OPS.cancel;
  dmGeral.PCP_CD_M_OPR.Cancel;
  inherited;
end;

procedure TPCP_FM_M_OPR_OPS.btnGravarClick(Sender: TObject);
begin
  inherited;

  try
     if  dmGeral.PCP_CD_M_OPR.ApplyUpdates(0) = 0 then
        begin
          ShowMessage('As alterações foram salvas com sucesso.');
        end
      else
        begin
         ShowMessage('Falha ao gravar as alterações.');
        end;

    dmGeral.PCP_CD_M_OPR.Edit;

  finally
     dmGeral.PCP_CD_M_OPR_OPS.Filtered := false;
  end;
end;

procedure TPCP_FM_M_OPR_OPS.cbbSetorExit(Sender: TObject);
var
  id_setor:string;
  tipo:integer;
begin
  inherited;
   id_setor := copy(cbbSetor.Items[cbbSetor.ItemIndex],1,pos(' - ',cbbSetor.Items[cbbSetor.ItemIndex])-1);

   txtLote.Enabled := false;
  // txtLote.Color := $00DADADA;
   txtLoteTecido.Enabled := false;
  // txtLoteTecido.Color := $00DADADA;
   txtLoteTNT.Enabled := false;
  // txtLoteTNT.Color := $00DADADA;
   txtLoteBord.Enabled := false;
  // txtLoteBord.Color := $00DADADA;
  try
    if id_setor<>'' then
       begin
        dmGeral.PCP_CD_M_OPR_OPS.Filtered := true;
        dmGeral.PCP_CD_M_OPR_OPS.Filter := 'id_setor='+copy(cbbSetor.Items[cbbSetor.ItemIndex],1,pos(' - ',cbbSetor.Items[cbbSetor.ItemIndex])-1);

          dmGeral.BusSetor(0,id_setor);
          tipo := dmGeral.BUS_CD_C_SET.FieldByName('TIPO').AsInteger;

          if (tipo=0) then //Laminação
            begin
              txtLote.Enabled := true;
            end
          else if (tipo=1) then//Bordadeira
            begin
               txtLote.Enabled := true;
               txtLoteTecido.Enabled := true;
               txtLoteTNT.Enabled := true;
               txtLoteBord.Enabled := true;
            end
          else if (tipo=3) then//Costura
            begin
               txtLoteBord.Enabled := true;
            end


       end
    else
       begin
         dmGeral.PCP_CD_M_OPR_OPS.Filtered := false;
       end;
  finally

  end;
end;

procedure TPCP_FM_M_OPR_OPS.btnGravar2Click(Sender: TObject);
begin
  inherited;

  if dmGeral.PCP_CD_M_OPR_OPS.RecordCount >0 then
     begin
       if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
            try
               if  dmGeral.PCP_CD_M_OPR.ApplyUpdates(0) = 0 then
                  begin
                    ShowMessage('As alterações foram salvas com sucesso.');
                  end
                else
                  begin
                   ShowMessage('Falha ao gravar as alterações.');
                  end;

              dmGeral.PCP_CD_M_OPR.Edit;

            finally
               dmGeral.PCP_CD_M_OPR_OPS.Filtered := false;
            end;
         end;
     end
   else
     begin
        ShowMessage('Não há nenhum registro a ser gravado.');
     end;
end;

procedure TPCP_FM_M_OPR_OPS.dbOPSEnter(Sender: TObject);
begin
  inherited;
//  dmGeral.PCP_CD_M_OPR_OPS.Edit;
end;

procedure TPCP_FM_M_OPR_OPS.dbOPSKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 { if ord(key) = vk_return then
     begin
       if dmGeral.PCP_CD_M_OPR_OPS.State in [dsEdit] then
          dmGeral.PCP_CD_M_OPR_OPS.Post;
     end; }
end;

procedure TPCP_FM_M_OPR_OPS.dbOPSMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
    tipo:integer;
begin
  inherited;

      dmGeral.PCP_CD_M_OPR_OPS.cancel;

      if dmGeral.PCP_CD_M_OPR_OPS.IsEmpty then
         begin
            pnlItens.Enabled := false;
         end
      else
        begin
          pnlItens.Enabled := true;

          if cbbSetor.Items[cbbSetor.ItemIndex]='Todos' then
            begin
               txtLote.Enabled := false;
               //txtLote.Color := $00DADADA;
               txtLoteTecido.Enabled := false;
              // txtLoteTecido.Color := $00DADADA;
               txtLoteTNT.Enabled := false;
              // txtLoteTNT.Color := $00DADADA;
               txtLoteBord.Enabled := false;
              // txtLoteBord.Color := $00DADADA;

              dmGeral.BusSetor(0,dmGeral.PCP_CD_M_OPR_OPS.FieldByName('ID_SETOR').AsString);
              tipo := dmGeral.BUS_CD_C_SET.FieldByName('TIPO').AsInteger;

              if (tipo=0) then //Laminação
                begin
                  txtLote.Enabled := true;
               //   txtLote.Color := clWhite;
                end
              else if (tipo=1) then//Bordadeira
                begin
                   txtLote.Enabled := true;
                  // txtLote.Color := clWhite;
                   txtLoteTecido.Enabled := true;
                  // txtLoteTecido.Color := clWhite;
                   txtLoteTNT.Enabled := true;
                  // txtLoteTNT.Color := clWhite;
                   txtLoteBord.Enabled := true;
                  // txtLoteBord.Color := clWhite;
                end
              else if (tipo=3) then//Costura
                begin
                    txtLoteBord.Enabled := true;
                  //  txtLoteBord.Color := clWhite;
                end;
            end;


          dmGeral.PCP_CD_M_OPR_OPS.Edit;
          txtQtde.SetFocus;
        end;


end;

procedure TPCP_FM_M_OPR_OPS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(PCP_FM_M_OPR_OPS);
end;

procedure TPCP_FM_M_OPR_OPS.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.AtualizarGridItens(dBOPS,'int_nomeiteacab',15,4,'int_coracab','int_tamacab');
  dmGeral.AtualizarGridItens(dBOPS,'int_nomeite',15,4,'int_cor','int_tamanho');

  //dmgeral.PCP_CD_M_OPR.Close;
  //dmGeral.PCP_CD_M_OPR.Data := dmGeral.FIN_CD_M_MCH.DataRequest(VarArrayOf([0, '']));
  //dmGeral.PCP_CD_M_OPR.Open;

 { dmGeral.PCP_CD_M_OPR_OPS.Close;
  dmGeral.PCP_CD_M_OPR_OPS.Data := dmGeral.PCP_CD_M_OPR_OPS.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_OPR_OPS.Open;}

  {dmGeral.PCP_CD_M_OPR_OPS_LOT.Close;
  dmGeral.PCP_CD_M_OPR_OPS_LOT.Data := dmGeral.FIN_CD_M_MCH.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_OPR_OPS_LOT.Open;

  dmGeral.PCP_CD_M_OPR_OPS_IPS.Close;
  dmGeral.PCP_CD_M_OPR_OPS_IPS.Data := dmGeral.FIN_CD_M_MCH.DataRequest(VarArrayOf([0, '']));
  dmGeral.PCP_CD_M_OPR_OPS_IPS.Open;}
end;

procedure TPCP_FM_M_OPR_OPS.FormShow(Sender: TObject);
begin
  inherited;
   dmgeral.BusSetor(1,'%');
   cbbSetor.AddItem('Todos',nil);
   dmGeral.BUS_CD_C_SET.First;
   while not dmGeral.BUS_CD_C_SET.EOF do
     begin
       cbbSetor.AddItem(dmGeral.BUS_CD_C_SET.FieldByName('ID_SETOR').AsString+' - '+
                            dmGeral.BUS_CD_C_SET.FieldByName('descricao').AsString,nil);
       dmGeral.BUS_CD_C_SET.Next;
     end;

     cbbSetor.ItemIndex := 0;
     dmGeral.PCP_CD_M_OPR.Edit;
end;



procedure TPCP_FM_M_OPR_OPS.pnlItensExit(Sender: TObject);
begin
  inherited;
  dmGeral.PCP_CD_M_OPR_OPS.Cancel;
  pnlItens.Enabled := false;
end;

procedure TPCP_FM_M_OPR_OPS.txtLoteBordExit(Sender: TObject);
var
 tipo:integer;
begin
  inherited;
  { if dbOPS.Focused or txtNOPs.Focused or
       btnGravar2.Focused or btnSair.Focused or cbbSetor.Focused  then
       begin
          dmGeral.PCP_CD_M_OPR_OPS.Cancel;
         exit;
       end;   }


     dmGeral.PCP_CD_M_OPR_OPS.Post;
     dmGeral.PCP_CD_M_OPR_OPS.Next;

     if not dmGeral.PCP_CD_M_OPR_OPS.Eof then
       begin
        if cbbSetor.Items[cbbSetor.ItemIndex]='Todos' then
            begin
               txtLote.Enabled := false;
              // txtLote.Color := $00DADADA;
               txtLoteTecido.Enabled := false;
              // txtLoteTecido.Color := $00DADADA;
               txtLoteTNT.Enabled := false;
              // txtLoteTNT.Color := $00DADADA;
               txtLoteBord.Enabled := false;
              // txtLoteBord.Color := $00DADADA;

              dmGeral.BusSetor(0,dmGeral.PCP_CD_M_OPR_OPS.FieldByName('ID_SETOR').AsString);
              tipo := dmGeral.BUS_CD_C_SET.FieldByName('TIPO').AsInteger;

              if (tipo=0) then //Laminação
                begin
                  txtLote.Enabled := true;
                //  txtLote.Color := clWhite;
                end
              else if (tipo=1) then//Bordadeira
                begin
                   txtLote.Enabled := true;
                  // txtLote.Color := clWhite;
                   txtLoteTecido.Enabled := true;
                  // txtLoteTecido.Color := clWhite;
                   txtLoteTNT.Enabled := true;
                  // txtLoteTNT.Color := clWhite;
                   txtLoteBord.Enabled := true;
                  // txtLoteBord.Color := clWhite;
                end
              else if (tipo=3) then//Costura
                begin
                    txtLoteBord.Enabled := true;
                   // txtLoteBord.Color := clWhite;
                end;
            end;



        dmGeral.PCP_CD_M_OPR_OPS.Edit;
        txtQtde.SetFocus;
      end;

end;

procedure TPCP_FM_M_OPR_OPS.txtLoteExit(Sender: TObject);
var
 tipo:integer;
begin
  inherited;

    if dbOPS.Focused or txtNOPs.Focused or
         cbbSetor.Focused or btnSair.Focused then
       begin
          dmGeral.PCP_CD_M_OPR_OPS.Cancel;
         exit;
       end;




    if txtLoteTecido.CanFocus then
      begin
        txtLoteTecido.SetFocus;
      end
    else if txtLoteTNT.CanFocus then
      begin
        txtLoteTNT.SetFocus;
      end
    else if txtLoteBord.CanFocus then
      begin
        txtLoteBord.SetFocus;
      end
    else
      begin
        dmGeral.PCP_CD_M_OPR_OPS.Post;
        dmGeral.PCP_CD_M_OPR_OPS.Next;

        if not dmGeral.PCP_CD_M_OPR_OPS.Eof then
          begin
           if cbbSetor.Items[cbbSetor.ItemIndex]='Todos' then
            begin
                txtLote.Enabled := false;
              // txtLote.Color := $00DADADA;
               txtLoteTecido.Enabled := false;
              // txtLoteTecido.Color := $00DADADA;
               txtLoteTNT.Enabled := false;
              // txtLoteTNT.Color := $00DADADA;
               txtLoteBord.Enabled := false;
              // txtLoteBord.Color := $00DADADA;

              dmGeral.BusSetor(0,dmGeral.PCP_CD_M_OPR_OPS.FieldByName('ID_SETOR').AsString);
              tipo := dmGeral.BUS_CD_C_SET.FieldByName('TIPO').AsInteger;

              if (tipo=0) then //Laminação
                begin
                  txtLote.Enabled := true;
                //  txtLote.Color := clWhite;
                end
              else if (tipo=1) then//Bordadeira
                begin
                   txtLote.Enabled := true;
                  // txtLote.Color := clWhite;
                   txtLoteTecido.Enabled := true;
                 //  txtLoteTecido.Color := clWhite;
                   txtLoteTNT.Enabled := true;
                  // txtLoteTNT.Color := clWhite;
                   txtLoteBord.Enabled := true;
                   //txtLoteBord.Color := clWhite;
                end
              else if (tipo=3) then//Costura
                begin
                    txtLoteBord.Enabled := true;
                 //   txtLoteBord.Color := clWhite;
                end;
            end;



           dmGeral.PCP_CD_M_OPR_OPS.Edit;
           txtQtde.SetFocus;
          end;
      end;
end;

procedure TPCP_FM_M_OPR_OPS.txtLoteTecidoExit(Sender: TObject);
begin
  inherited;
   if dbOPS.Focused or txtNOPs.Focused or
         cbbSetor.Focused  or btnSair.Focused then
       begin
          dmGeral.PCP_CD_M_OPR_OPS.Cancel;
         exit;
       end;
end;

procedure TPCP_FM_M_OPR_OPS.txtLoteTNTExit(Sender: TObject);
begin
  inherited;
   if dbOPS.Focused or txtNOPs.Focused or
       cbbSetor.Focused  or btnSair.Focused then
       begin
          dmGeral.PCP_CD_M_OPR_OPS.Cancel;
         exit;
       end;
end;

procedure TPCP_FM_M_OPR_OPS.txtNOpsExit(Sender: TObject);
VAR
  codigo:string;
begin
  inherited;

     codigo := trim(txtNOps.Text);

     if codigo <> '' then
       begin
        if dmGeral.PCP_CD_M_OPR_OPS.Locate('ID_OPR_OPS',codigo,[]) then
          begin
           dmGeral.PCP_CD_M_OPR_OPS.Edit;
           dmGeral.PCP_CD_M_OPR_OPS.FieldByName('NUM_LOTE').FocusControl;
          end
        else
          begin
            ShowMessage('Registro não encontrado.');
          end;
       end

end;

procedure TPCP_FM_M_OPR_OPS.txtQtdeExit(Sender: TObject);
var
 tipo:integer;
begin
  inherited;
   if dbOPS.Focused or txtNOPs.Focused or
         cbbSetor.Focused or btnSair.Focused then
       begin
          dmGeral.PCP_CD_M_OPR_OPS.Cancel;
         exit;
       end;


    if txtLote.CanFocus then
      begin
        txtLote.SetFocus;
      end
    else if txtLoteTecido.CanFocus then
      begin
        txtLoteTecido.SetFocus;
      end
    else if txtLoteTNT.CanFocus then
      begin
        txtLoteTNT.SetFocus;
      end
    else if txtLoteBord.CanFocus then
      begin
        txtLoteBord.SetFocus;
      end
    else
      begin
        dmGeral.PCP_CD_M_OPR_OPS.Post;
        dmGeral.PCP_CD_M_OPR_OPS.Next;

        if not dmGeral.PCP_CD_M_OPR_OPS.Eof then
          begin
           if cbbSetor.Items[cbbSetor.ItemIndex]='Todos' then
            begin
                txtLote.Enabled := false;
              // txtLote.Color := $00DADADA;
               txtLoteTecido.Enabled := false;
              // txtLoteTecido.Color := $00DADADA;
               txtLoteTNT.Enabled := false;
              // txtLoteTNT.Color := $00DADADA;
               txtLoteBord.Enabled := false;
              // txtLoteBord.Color := $00DADADA;

              dmGeral.BusSetor(0,dmGeral.PCP_CD_M_OPR_OPS.FieldByName('ID_SETOR').AsString);
              tipo := dmGeral.BUS_CD_C_SET.FieldByName('TIPO').AsInteger;

              if (tipo=0) then //Laminação
                begin
                  txtLote.Enabled := true;
                  txtLote.Color := clWhite;
                end
              else if (tipo=1) then//Bordadeira
                begin
                   txtLote.Enabled := true;
                  // txtLote.Color := clWhite;
                   txtLoteTecido.Enabled := true;
                  // txtLoteTecido.Color := clWhite;
                   txtLoteTNT.Enabled := true;
                  // txtLoteTNT.Color := clWhite;
                   txtLoteBord.Enabled := true;
                  // txtLoteBord.Color := clWhite;
                end
              else if (tipo=3) then//Costura
                begin
                    txtLoteBord.Enabled := true;
                  //  txtLoteBord.Color := clWhite;
                end;
            end;


           dmGeral.PCP_CD_M_OPR_OPS.Edit;
           txtQtde.SetFocus;
          end;
      end;

end;

end.
