unit CAD_UN_C_CLI_PRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Mask, vcl.Wwdbedit,
  Vcl.Buttons, vcl.wwdbigrd, Vcl.Grids, vcl.wwdbgrid, vcl.wwdblook, Vcl.DBCtrls,
  JvExMask, JvToolEdit, JvDBControls;

type
  TCAD_FM_C_CLI_PRO = class(TPAD_FM_X_FRM)
    pnlAreaRural: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    txtArDescCid: TDBText;
    txtArUF: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    txtArNome: TwwDBEdit;
    txtArBairro: TwwDBEdit;
    txtArCidade: TJvDBComboEdit;
    txtArInsPro: TDBEdit;
    txtArIncra: TwwDBEdit;
    txtArCNPJ: TwwDBEdit;
    txtArInsEst: TwwDBEdit;
    txtArAdm: TwwDBEdit;
    txtArEnd: TwwDBEdit;
    txtArCEP: TwwDBEdit;
    txtArNumero: TwwDBEdit;
    cbbArTipo: TwwDBLookupCombo;
    btnAddAr: TBitBtn;
    dgArIButton: TwwIButton;
    dgCultura: TwwDBGrid;
    dgCulIButton: TwwIButton;
    pnlCultura: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    txtDescCultura: TDBText;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    txtProdutividade: TwwDBEdit;
    txtProdEstimada: TwwDBEdit;
    txtCultura: TJvDBComboEdit;
    txtIdade: TwwDBEdit;
    txtLote: TwwDBEdit;
    txtObservacao: TwwDBEdit;
    txtVariedade: TwwDBEdit;
    txtArea: TwwDBEdit;
    btnAddCul: TBitBtn;
    dgAr: TwwDBGrid;
    lblEnderecoCobranca: TLabel;
    procedure FormShow(Sender: TObject);
    procedure pnlAreaRuralExit(Sender: TObject);
    procedure txtArCidadeButtonClick(Sender: TObject);
    procedure txtArCidadeExit(Sender: TObject);
    procedure txtArCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dgCulIButtonClick(Sender: TObject);
    procedure dgCulturaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dgArMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtArCEPExit(Sender: TObject);
    procedure pnlCulturaExit(Sender: TObject);
    procedure txtObservacaoExit(Sender: TObject);
    procedure txtCulturaButtonClick(Sender: TObject);
    procedure txtCulturaExit(Sender: TObject);
    procedure dgArIButtonClick(Sender: TObject);
    procedure btnAddCulClick(Sender: TObject);
    procedure cbbArTipoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddArClick(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbbArTipoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CAD_FM_C_CLI_PRO: TCAD_FM_C_CLI_PRO;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CID, CAD_UN_C_CLI, PSQ_UN_X_CUL;

procedure TCAD_FM_C_CLI_PRO.acSairExecute(Sender: TObject);
begin
  //inherited;
  Close;
end;

procedure TCAD_FM_C_CLI_PRO.btnAddArClick(Sender: TObject);
begin
  //inherited;
  pnlAreaRural.Enabled := True;
  dmGeral.CAD_CD_C_CLI_PRO.Insert;
  cbbArTipo.SetFocus;
end;

procedure TCAD_FM_C_CLI_PRO.btnAddCulClick(Sender: TObject);
begin
  //inherited;
  if dmGeral.CAD_CD_C_CLI_PRO.IsEmpty then
    begin
      ShowMessage('A área rural não foi cadastrada.');
      exit;
    end;

  pnlCultura.Enabled := True;
  dmGeral.CAD_CD_C_CLI_PRO_CUL.Insert;
  txtCultura.SetFocus;
end;

procedure TCAD_FM_C_CLI_PRO.cbbArTipoEnter(Sender: TObject);
begin
  inherited;
  cbbArTipo.DropDown;
end;

procedure TCAD_FM_C_CLI_PRO.cbbArTipoExit(Sender: TObject);
begin
  //inherited;
  if dgAr.Focused then
     begin
       exit;
     end;

  if trim(dmGeral.CAD_CD_C_CLI_PRO.FieldByName('TIPO').AsString) ='' then
    begin
      ShowMessage('O campo "Tipo" deve ser preenchido.');
      cbbArTipo.SetFocus;
    end;


  dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_DESC_TIPO').AsString := '';
  if dmGeral.CAD_CD_C_CLI_PRO.FieldByName('TIPO').AsString <>'' then
    dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_DESC_TIPO').AsString :=
                 dmGeral.BUS_CD_X_TIP_PRO.FieldByName('DESCRICAO').AsString;
end;

procedure TCAD_FM_C_CLI_PRO.dgArIButtonClick(Sender: TObject);
begin
  //inherited;
  try
     dgArIButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_PRO.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_PRO.Delete;
   //  dmGeral.CAD_CD_C_CLI_PRO.Edit;
  finally
    dgArIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI_PRO.dgArMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //inherited;
  if pnlAreaRural.Enabled = False then
     pnlAreaRural.Enabled := True;

  dmGeral.CAD_CD_C_CLI_PRO.Cancel;

  if dmGeral.CAD_CD_C_CLI_PRO.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CLI_PRO.Append;
       pnlAreaRural.Enabled := True;
       cbbArTipo.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_PRO.Edit;
       pnlAreaRural.Enabled := True;
       cbbArTipo.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI_PRO.dgCulIButtonClick(Sender: TObject);
begin
 // inherited;
  try
     dgCulIButton.Enabled := False;
     if dmGeral.CAD_CD_C_CLI_PRO_CUL.IsEmpty then
        begin
          ShowMessage('Não há registro para excluir.');
          abort;
        end;
     dmGeral.CAD_CD_C_CLI_PRO_CUL.Delete;
   //  dmGeral.CAD_CD_C_CLI_PRO_CUL.Edit;
  finally
    dgCulIButton.Enabled := True;
  end;
end;

procedure TCAD_FM_C_CLI_PRO.dgCulturaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 // inherited;
 if dmGeral.CAD_CD_C_CLI_PRO.IsEmpty then
    begin
      ShowMessage('A área rural não foi cadastrada.');
      exit;
    end;

  if pnlCultura.Enabled = False then
     pnlCultura.Enabled := True;

  dmGeral.CAD_CD_C_CLI_PRO_CUL.Cancel;

  if dmGeral.CAD_CD_C_CLI_PRO_CUL.IsEmpty then
     begin
       dmGeral.CAD_CD_C_CLI_PRO_CUL.Append;
       pnlCultura.Enabled := True;
       txtCultura.SetFocus;
     end
  else
     begin
       dmGeral.CAD_CD_C_CLI_PRO_CUL.Edit;
       pnlCultura.Enabled := True;
       txtCultura.SetFocus;
     end;
end;

procedure TCAD_FM_C_CLI_PRO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // inherited;
  FreeAndNil(CAD_FM_C_CLI_PRO);
end;

procedure TCAD_FM_C_CLI_PRO.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TCAD_FM_C_CLI_PRO.FormShow(Sender: TObject);
begin
 // inherited;
  btnAddAr.SetFocus;
end;

procedure TCAD_FM_C_CLI_PRO.pnlAreaRuralExit(Sender: TObject);
begin
//  inherited;
  if (btnAddAr.Focused) or (dgAr.Focused) or (not dgArIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          dmGeral.CAD_CD_C_CLI_PRO.Cancel;
          if not dmGeral.CAD_CD_C_CLI_PRO.IsEmpty then
             dmGeral.CAD_CD_C_CLI_PRO.Edit;
          finally
             pnlAreaRural.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI_PRO.pnlCulturaExit(Sender: TObject);
begin
 // inherited;
  if (btnAddCul.Focused) or (dgCultura.Focused) or (not dgCulIButton.Enabled) then
      begin
        //
      end
  else
      begin
        try
          dmGeral.CAD_CD_C_CLI_PRO_CUL.Cancel;
          if not dmGeral.CAD_CD_C_CLI_PRO_CUL.IsEmpty then
             dmGeral.CAD_CD_C_CLI_PRO_CUL.Edit;
          finally
             pnlCultura.Enabled := False;
          end;
      end;
end;

procedure TCAD_FM_C_CLI_PRO.txtArCEPExit(Sender: TObject);
begin
 // inherited;
 if cbbArTipo.Focused or txtArCNPJ.Focused or txtArInsEst.Focused or
  txtArInsPro.Focused or txtArIncra.Focused or txtArNome.Focused or
  txtArAdm.Focused or txtArEnd.Focused or txtArBairro.Focused or
  txtArNumero.Focused or txtArCidade.Focused then
    begin
      exit;
    end;

  dmGeral.CAD_CD_C_CLI_PRO.Post;
  pnlAreaRural.Enabled := False;
end;

procedure TCAD_FM_C_CLI_PRO.txtArCidadeButtonClick(Sender: TObject);
begin
//  inherited;
  PSQ_FM_X_CID := TPSQ_FM_X_CID.Create(Self);
   PSQ_FM_X_CID.ShowModal;
      if not PSQ_FM_X_CID.BUS_CD_C_CID.IsEmpty then
         begin
           dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_NOMECID').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('NOME').AsString;

           dmGeral.CAD_CD_C_CLI_PRO.FieldByName('ID_CIDADE').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('ID_CIDADE').AsString;

           dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_UF').AsString :=
                PSQ_FM_X_CID.BUS_CD_C_CID.FieldByName('UF').AsString;

         end;
   PSQ_FM_X_CID.Free;
end;

procedure TCAD_FM_C_CLI_PRO.txtArCidadeExit(Sender: TObject);
begin
 // inherited;
  dmGeral.BUS_CD_C_CID.Close;

  dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_NOMECID').Text := '';
  dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_UF').Text := '';

  if (txtArCidade.Text <> '') then
    begin
      dmGeral.BUS_CD_C_CID.Close;
      dmGeral.BUS_CD_C_CID.Data :=
      dmGeral.BUS_CD_C_CID.DataRequest(VarArrayOf([0, txtArCidade.Text]));

      if not dmGeral.BUS_CD_C_CID.IsEmpty then
        begin
          dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_NOMECID').Text :=
            dmGeral.BUS_CD_C_CID.FieldByName('NOME').AsString;

          dmGeral.CAD_CD_C_CLI_PRO.FieldByName('INT_UF').Text :=
            dmGeral.BUS_CD_C_CID.FieldByName('UF').AsString;
        end
      else
        begin
          ShowMessage('Cidade não Cadastrada!');
          txtArCidade.Text := '';
        end;
    end;
end;

procedure TCAD_FM_C_CLI_PRO.txtArCidadeKeyPress(Sender: TObject; var Key: Char);
begin
 // inherited;
 if  not ( Key in ['0'..'9', Chr(8)] ) then
   Key := #0;
end;

procedure TCAD_FM_C_CLI_PRO.txtCulturaButtonClick(Sender: TObject);
begin
//  inherited;
  PSQ_FM_X_CUL := TPSQ_FM_X_CUL.Create(Self);
   PSQ_FM_X_CUL.ShowModal;
      if not PSQ_FM_X_CUL.BUS_CD_C_CUL.IsEmpty then
         begin
           dmGeral.CAD_CD_C_CLI_PRO_CUL.FieldByName('INT_NOMECULTURA').AsString :=
                PSQ_FM_X_CUL.BUS_CD_C_CUL.FieldByName('DESCRICAO').AsString;

           dmGeral.CAD_CD_C_CLI_PRO_CUL.FieldByName('ID_CULTURA').AsString :=
                PSQ_FM_X_CUL.BUS_CD_C_CUL.FieldByName('ID_CULTURA').AsString;

         end;
   PSQ_FM_X_CUL.Free;
end;

procedure TCAD_FM_C_CLI_PRO.txtCulturaExit(Sender: TObject);
begin
 // inherited;
 dmGeral.BUS_CD_C_CUL.Close;

  dmGeral.CAD_CD_C_CLI_PRO_CUL.FieldByName('INT_NOMECULTURA').Text := '';

  dmGeral.BUS_CD_C_CUL.Close;
  dmGeral.BUS_CD_C_CUL.Data :=
  dmGeral.BUS_CD_C_CUL.DataRequest(VarArrayOf([0, txtCultura.Text]));

  if not dmGeral.BUS_CD_C_CUL.IsEmpty then
    begin
      dmGeral.CAD_CD_C_CLI_PRO_CUL.FieldByName('INT_NOMECULTURA').Text :=
        dmGeral.BUS_CD_C_CUL.FieldByName('DESCRICAO').AsString;
    end
  else
    begin
      ShowMessage('O campo "Cultura" deve ser preenchido!');
      txtCultura.Text := '';
    end;
end;

procedure TCAD_FM_C_CLI_PRO.txtObservacaoExit(Sender: TObject);
begin
 // inherited;
 if txtCultura.Focused or txtLote.Focused or txtIdade.Focused or
  txtArea.Focused or txtProdutividade.Focused or txtVariedade.Focused or
  txtProdEstimada.Focused then
    begin
      exit;
    end;

  dmGeral.CAD_CD_C_CLI_PRO_CUL.Post;
  pnlCultura.Enabled := False;
end;

end.
