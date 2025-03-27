unit CAD_UN_C_VIT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvToolEdit, JvDBControls, Vcl.Buttons, Vcl.DBCtrls,
  vcl.Wwdbedit, JvExMask, vcl.wwdblook, Vcl.Mask,ShellApi,Vcl.OleCtrls,
  SHDocVw, Datasnap.DBClient;

type
  TCAD_FM_C_VIT = class(TPAD_FM_X_PAD)
    lblCodigo: TLabel;
    txtCodigo: TDBEdit;
    Label53: TLabel;
    txtCodRev: TDBEdit;
    cbbVendedor: TwwDBLookupCombo;
    lblVendedor: TLabel;
    lblCliente: TLabel;
    txtcliente: TJvDBComboEdit;
    txtNomeCliente: TwwDBEdit;
    lblEntrega: TLabel;
    lblPlaca: TLabel;
    txtPlaca: TJvDBComboEdit;
    lblReclamacaoCliente: TLabel;
    txtObservacao: TDBMemo;
    lblDescricaoProblema: TLabel;
    txtRecomendacao: TDBMemo;
    dpkVisita: TJvDBDateEdit;
    gbKm: TGroupBox;
    dgKm: TwwDBGrid;
    dsoFot: TwwDataSource;
    dsoKm: TwwDataSource;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    BitBtn1: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    ppKm: TPopupMenu;
    Alteraraquilometrageminicial1: TMenuItem;
    Alteraraquilometragemfinal1: TMenuItem;
    Panel5: TPanel;
    Label6: TLabel;
    txtKmFin: TwwDBEdit;
    txtKmIni: TwwDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtclienteButtonClick(Sender: TObject);
    procedure txtclienteExit(Sender: TObject);
    procedure txtPlacaButtonClick(Sender: TObject);
    procedure cbbVendedorEnter(Sender: TObject);
    procedure txtPlacaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbGridRowChanged(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure dgKmCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Alteraraquilometrageminicial1Click(Sender: TObject);
    procedure Alteraraquilometragemfinal1Click(Sender: TObject);
    procedure txtKmIniExit(Sender: TObject);
    procedure txtKmFinExit(Sender: TObject);
  private
    { Private declarations }
    procedure ExibirFotos;
    var
      xUltFot,xUltKmt: integer;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_VIT: TCAD_FM_C_VIT;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, PSQ_UN_X_VEI;

procedure TCAD_FM_C_VIT.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_VIT);

  dmGeral.CAD_CD_C_VIT.FieldByName('DTA_VISITA').AsDateTime := xDataSis;
  dpkVisita.SetFocus;
end;

procedure TCAD_FM_C_VIT.acAlterarExecute(Sender: TObject);
begin
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_VIT) then
    begin
      inherited;
      dpkVisita.Enabled := False;
      txtcliente.Enabled := False;
      txtplaca.Enabled := False;
      cbbVendedor.Enabled := False;

      txtobservacao.SetFocus;
    end;
end;

procedure TCAD_FM_C_VIT.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_VIT) then
      begin
        inherited;
        dpkVisita.Enabled := True;
        txtcliente.Enabled := True;
        txtplaca.Enabled := True;
        cbbVendedor.Enabled := True;

        dbGrid.SetFocus;
      end
   else
      begin
        txtobservacao.SetFocus;
      end;
end;

procedure TCAD_FM_C_VIT.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CAD_CD_C_VIT);
end;

procedure TCAD_FM_C_VIT.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  inherited;
  if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      codigo := dmGeral.CAD_CD_C_VIT.FieldByName('ID_VISITA').AsString;

      DmGeral.Grava(dmGeral.CAD_CD_C_VIT);

      dmGeral.CAD_CD_C_VIT.Close;
      dmGeral.CAD_CD_C_VIT.Data :=
      dmGeral.CAD_CD_C_VIT.DataRequest(
             VarArrayOf([0, codigo,dmgeral.CAD_CD_C_PARid_empresa.Text]));

      dpkVisita.Enabled := True;
      txtcliente.Enabled := True;
      txtplaca.Enabled := True;
      cbbVendedor.Enabled := True;
   end
  else
    begin
      txtObservacao.SetFocus;
    end;
end;

procedure TCAD_FM_C_VIT.Alteraraquilometragemfinal1Click(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_VIT_KMT.Edit;
  txtKmFin.Visible := true;
  txtKmFin.SetFocus;
end;

procedure TCAD_FM_C_VIT.Alteraraquilometrageminicial1Click(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_VIT_KMT.Edit;
  txtKmIni.Visible := true;
  txtKmIni.SetFocus;
end;

procedure TCAD_FM_C_VIT.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(Application.ExeName)+'emp'+
  dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text),nil,nil,SW_SHOWNORMAL);
end;

procedure TCAD_FM_C_VIT.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    if trim(txtPesquisa.Text) = '' then
       begin
         ShowMessage('É preciso que digite pelo menos 1 caractere para poder realizar a pesquisa.');
         exit;
       end;

    dmGeral.CAD_CD_C_VIT.Close;
    dmGeral.CAD_CD_C_VIT.Data :=
    dmGeral.CAD_CD_C_VIT.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text,dmgeral.CAD_CD_C_PARid_empresa.Text]));

  finally
     Screen.Cursor := crDefault;
  end;
end;

procedure TCAD_FM_C_VIT.cbbVendedorEnter(Sender: TObject);
begin
  inherited;
  dmGeral.BusFunCargoGeral('''0'',''1''','true');
  cbbVendedor.DropDown;
end;

procedure TCAD_FM_C_VIT.dbGridRowChanged(Sender: TObject);
begin
  inherited;
 //ExibirFotos;
end;

procedure TCAD_FM_C_VIT.dgKmCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (Field.FieldName = 'km_inicial_orig') or (Field.FieldName = 'km_final_orig') then
    ABrush.Color := clGradientInactiveCaption;

  if (dmGeral.CAD_CD_C_VIT_KMT.FieldByName('km_inicial').AsString <>
    dmGeral.CAD_CD_C_VIT_KMT.FieldByName('km_inicial_orig').AsString) or
    (dmGeral.CAD_CD_C_VIT_KMT.FieldByName('km_final').AsString <>
      dmGeral.CAD_CD_C_VIT_KMT.FieldByName('km_final_orig').AsString) then
    AFont.Color := clMaroon;
end;

procedure TCAD_FM_C_VIT.ExibirFotos;
var
Imagem: TImage;
i: integer;
espaco: integer;
PathImg: String;
begin
  if dmgeral.CAD_CD_C_VIT_FOT.IsEmpty then
    exit;

  ScrollBox1.Free;

  ScrollBox1.HorzScrollBar.Position:=0;
  espaco:=5;

  dmgeral.CAD_CD_C_VIT_FOT.First;
  while not dmgeral.CAD_CD_C_VIT_FOT.Eof do
    begin
      PathImg := ExtractFilePath(Application.ExeName)+'emp'+ dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\'+
        dmgeral.CAD_CD_C_VIT_FOTcaminho_foto.Text; //aqui é o caminho da pasta

      Imagem := TImage.Create(Self);
      Imagem.Parent := CAD_FM_C_VIT.ScrollBox1;
      Imagem.Width:=237;
      Imagem.Height:=115;
      Imagem.Top:=5;
      Imagem.Stretch:=true;
      Imagem.Left := espaco;
      Imagem.Picture.LoadFromFile(PathImg);
      espaco:=espaco+Imagem.Width+5;

      dmgeral.CAD_CD_C_VIT_FOT.Next;
    end;
end;

procedure TCAD_FM_C_VIT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGeral.CAD_CD_C_VIT.Close;
  FreeAndNil(CAD_FM_C_VIT);
end;

procedure TCAD_FM_C_VIT.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_VIT.Close;
  dmGeral.CAD_CD_C_VIT.Data := dmGeral.CAD_CD_C_VIT.DataRequest(VarArrayOf([0, '',dmgeral.CAD_CD_C_PARid_empresa.Text]));

  dmGeral.BusFunCargoGeral('''0'',''1''','true');
  btnExcluir.Enabled := False;
end;

procedure TCAD_FM_C_VIT.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.BusFunCargoGeral('''0'',''1''','true');
  btnExcluir.Enabled := False;
end;

procedure TCAD_FM_C_VIT.Image1DblClick(Sender: TObject);
begin
  inherited;
  if dmgeral.CAD_CD_C_VIT_FOT.IsEmpty then
    exit;

  ShellExecute(Application.HANDLE, 'open', PChar(dmgeral.CAD_CD_C_VIT_FOTcaminho_foto.Text),'','',SW_SHOWNORMAL);
end;

procedure TCAD_FM_C_VIT.txtclienteButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
   PSQ_FM_X_CLI.ShowModal;
      if not PSQ_FM_X_CLI.BUS_CD_C_ClI.IsEmpty then
         begin
           dmGeral.CAD_CD_C_VIT.FieldByName('doc_cnpj_cpf').AsString :=
                PSQ_FM_X_CLI.BUS_CD_C_ClI.FieldByName('doc_cnpj_cpf').AsString;

           dmGeral.CAD_CD_C_VIT.FieldByName('int_cliente').AsString := PSQ_FM_X_CLI.BUS_CD_C_ClI.FieldByName('nome').AsString;
         end;
   PSQ_FM_X_CLI.Free;
end;

procedure TCAD_FM_C_VIT.txtclienteExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
     btnGrava.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_C_CLI.Close;

  txtNomeCliente.Text := '';

  dmGeral.BUS_CD_C_CLI.Close;
  dmGeral.BUS_CD_C_CLI.Data :=
  dmGeral.BUS_CD_C_CLI.DataRequest(VarArrayOf([0, txtCliente.Text]));

  if not dmGeral.BUS_CD_C_CLI.IsEmpty then
    begin
      dmGeral.CAD_CD_C_VIT.FieldByName('int_cliente').Text := dmGeral.BUS_CD_C_CLI.FieldByName('nome').AsString;
    end
  else
    begin
      ShowMessage('CPF/CNPJ invalido!');
      txtcliente.Text := '';
    end;
end;

procedure TCAD_FM_C_VIT.txtKmFinExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_VIT_KMTkm_final.AsString = '' then
    begin
      dmGeral.CAD_CD_C_VIT_KMT.Cancel;
      txtKmFin.Visible := false;
      exit;
    end
  else if dmGeral.CAD_CD_C_VIT_KMTkm_final.AsInteger = 0 then
    begin
      showmessage('Km dever ser diferente de zero.');
      dmGeral.CAD_CD_C_VIT_KMTkm_final.AsString := '';
      txtKmFin.SetFocus;
      exit;
    end;

  if dmGeral.CAD_CD_C_VIT_KMTkm_inicial.AsString = '' then
    begin
      dmGeral.CAD_CD_C_VIT_KMT.Post;
      txtKmFin.Visible := false;
      exit;
    end;

  if (dmGeral.CAD_CD_C_VIT_KMTkm_inicial.AsInteger <= dmGeral.CAD_CD_C_VIT_KMTkm_final.AsInteger) then
    begin
      dmGeral.CAD_CD_C_VIT_KMT.Post;
      txtKmFin.Visible := false;
    end
  else
    begin
      showmessage('Quilometragem final deve ser superior a inicial.');
      dmGeral.CAD_CD_C_VIT_KMTkm_final.AsString := '';
      txtKmFin.SetFocus;
    end;
end;

procedure TCAD_FM_C_VIT.txtKmIniExit(Sender: TObject);
begin
  inherited;
  if dmGeral.CAD_CD_C_VIT_KMTkm_inicial.AsString = '' then
    begin
      dmGeral.CAD_CD_C_VIT_KMT.Cancel;
      txtKmIni.Visible := false;
      exit;
    end
  else if dmGeral.CAD_CD_C_VIT_KMTkm_inicial.AsInteger = 0 then
    begin
      showmessage('Km dever ser diferente de zero.');
      dmGeral.CAD_CD_C_VIT_KMTkm_inicial.AsString := '';
      txtKmIni.SetFocus;
      exit;
    end;

  if dmGeral.CAD_CD_C_VIT_KMTkm_final.AsString = '' then
    begin
      dmGeral.CAD_CD_C_VIT_KMT.Post;
      txtKmIni.Visible := false;
      exit;
    end;

  if (dmGeral.CAD_CD_C_VIT_KMTkm_inicial.AsInteger <= dmGeral.CAD_CD_C_VIT_KMTkm_final.AsInteger) then
    begin
      dmGeral.CAD_CD_C_VIT_KMT.Post;
      txtKmIni.Visible := false;
    end
  else
    begin
      showmessage('Quilometragem inicial deve ser inferiror a final.');
      dmGeral.CAD_CD_C_VIT_KMTkm_inicial.AsString := '';
      txtKmIni.SetFocus;
    end;
end;

procedure TCAD_FM_C_VIT.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TCAD_FM_C_VIT.txtPlacaButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_VEI := TPSQ_FM_X_VEI.Create(Self);
  PSQ_FM_X_VEI.ShowModal;
  if not PSQ_FM_X_VEI.BUS_CD_C_VEI.IsEmpty then
     begin
       dmGeral.CAD_CD_C_VIT.FieldByName('id_veiculo').Text :=
                PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('id_veiculo').AsString;
       dmGeral.CAD_CD_C_VIT.FieldByName('placa').Text :=
                trim(PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('id_placa').AsString);
     end;
  PSQ_FM_X_VEI.BUS_CD_C_VEI.Close;
  PSQ_FM_X_VEI.Free;
end;

procedure TCAD_FM_C_VIT.txtPlacaExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or
    btnGrava.Focused  then
    begin
      exit;
    end;

  if dmGeral.CAD_CD_C_VIT.FieldByName('placa').Text = '' then
    begin
      ShowMessage('Placa deve ser informada.');
      exit;
    end;

  dmGeral.BusVeiculo(3,trim(dmGeral.CAD_CD_C_VIT.FieldByName('placa').Text));
  if dmGeral.BUS_CD_C_VEI.IsEmpty then
     begin
       ShowMessage('Placa não encontrado.');
       txtPlaca.SetFocus;
       Exit;
     end
  else
    begin
      dmGeral.CAD_CD_C_VIT.FieldByName('id_veiculo').Text :=
        dmGeral.BUS_CD_C_VEI.FieldByName('id_veiculo').Text;
    end;

end;

procedure TCAD_FM_C_VIT.wwDBGrid1RowChanged(Sender: TObject);
var
//Imagem: TImage;
PathImg: String;
begin
  inherited;
  if dmgeral.CAD_CD_C_VIT_FOT.IsEmpty then
    exit;

  //ScrollBox1.Free;
  //ScrollBox1.HorzScrollBar.Position:=0;

  PathImg := ExtractFilePath(Application.ExeName)+ dmgeral.CAD_CD_C_VIT_FOTcaminho_foto.Text; //aqui é o caminho da pasta

  if FileExists(PathImg) then
     begin
        {Imagem := TImage.Create(Self);
        Imagem.Parent := CAD_FM_C_VIT.Image1;
        Imagem.Width:=204;
        Imagem.Height:=155;
        Imagem.Top:=0;
        Imagem.Stretch:=true;
        Imagem.Left := 0; }
        Image1.Picture.LoadFromFile(PathImg);
     end;
end;

end.
