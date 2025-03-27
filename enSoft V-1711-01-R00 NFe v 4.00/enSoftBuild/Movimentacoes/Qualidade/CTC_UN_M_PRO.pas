unit CTC_UN_M_PRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvToolEdit, JvDBControls, vcl.Wwdbedit, Vcl.Mask, JvExMask,
  Vcl.DBCtrls;

type
  TCTC_FM_M_PRO = class(TPAD_FM_X_PAD)
    txtItem: TJvDBComboEdit;
    Label1: TLabel;
    txtDescricao: TwwDBEdit;
    dpkData: TJvDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtArquivo: TJvDBComboEdit;
    OpenDialog1: TOpenDialog;
    txtLote: TwwDBEdit;
    txtDescItem: TDBEdit;
    SaveDialog1: TSaveDialog;
    btnBaixar: TButton;
    procedure txtArquivoButtonClick(Sender: TObject);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtItemButtonClick(Sender: TObject);
    procedure txtItemExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure txtLoteExit(Sender: TObject);
    procedure txtItemKeyPress(Sender: TObject; var Key: Char);
    procedure txtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnBaixarClick(Sender: TObject);
  private
    { Private declarations }
    var
    arq_orig: string;

    function NomeArq(name:string):string;
    function TamanhoArquivo(Arquivo: string): Integer;
  public
    { Public declarations }
  end;

var
  CTC_FM_M_PRO: TCTC_FM_M_PRO;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_ITE;

procedure TCTC_FM_M_PRO.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_PRO);

  txtitem.Enabled := True;
  txtLote.Enabled := True;
  dpkdata.Enabled := True;
  txtarquivo.Enabled := True;
  btnBaixar.Enabled := False;
  txtItem.SetFocus;
end;

procedure TCTC_FM_M_PRO.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_PRO) then
  begin
    txtitem.Enabled := false;
    txtLote.Enabled := false;
    dpkdata.Enabled := false;
    btnBaixar.Enabled := False;
    //txtarquivo.Enabled := false;

    txtdescricao.SetFocus;
  end;
end;

procedure TCTC_FM_M_PRO.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_PRO) then
    begin
      txtitem.Enabled := True;
      txtLote.Enabled := True;
      dpkdata.Enabled := True;
      txtarquivo.Enabled := True;
      btnBaixar.Enabled := True;
    end;
end;

procedure TCTC_FM_M_PRO.acExcluirExecute(Sender: TObject);

begin
  inherited;
  //showmessage('A exclusão deste registro excluirá o arquivo "'+NomeArq(dmGeral.CTC_CD_M_PRO.FieldByName('arquivo').text)+'" !');

  if Botoes(dso.DataSet, TAction(Sender).Tag,dmGeral.CTC_CD_M_PRO) then
    //deletefile(dmGeral.CTC_CD_M_PRO.FieldByName('arquivo').text);
end;

procedure TCTC_FM_M_PRO.acGravarExecute(Sender: TObject);
var
  item,lote: string;
  sub:integer;
begin
  inherited;
   if MessageDlg('Confirma a Gravação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        //if not FileExists(txtArquivo.Text) then
        {if arq_orig <> '' then
          begin
            while CopyFile(PChar(arq_orig), PChar(txtArquivo.Text), True) = False do
              begin
                inc(sub);
                txtArquivo.Text := ExtractFilePath(Application.ExeName)+'emp'+dmgeral.CAD_CD_C_PARid_empresa.Text+'\Protocolos\ArqP'+
                txtItem.Text+'L'+txtLote.Text+'_SB'+IntToStr(sub)+Copy(arq_orig , Pos('.', arq_orig), Length(arq_orig));
              end;
          end; }

        item := dmGeral.CTC_CD_M_PRO.FieldByName('id_item').AsString;
        lote := dmGeral.CTC_CD_M_PRO.FieldByName('lote').AsString;
        DmGeral.Grava(dmGeral.CTC_CD_M_PRO);

        txtitem.Enabled := True;
        txtLote.Enabled := True;
        dpkdata.Enabled := True;
        txtarquivo.Enabled := True;
        btnBaixar.Enabled := True;

        dmGeral.CTC_CD_M_PRO.Close;
        dmGeral.CTC_CD_M_PRO.Data := dmGeral.CTC_CD_M_PRO.DataRequest(VarArrayOf([4, item,lote]));
      end;
end;

procedure TCTC_FM_M_PRO.btnFiltroClick(Sender: TObject);
begin
  inherited;
  dmGeral.CTC_CD_M_PRO.Close;
  dmGeral.CTC_CD_M_PRO.Data :=
    dmGeral.CTC_CD_M_PRO.DataRequest(
      VarArrayOf([cbbpesquisa.ItemIndex, txtpesquisa.Text]));
end;

procedure TCTC_FM_M_PRO.btnBaixarClick(Sender: TObject);
begin
  inherited;
  if not  dmgeral.CTC_CD_M_PROdoc_pro.IsNull then
    begin
      SaveDialog1.FileName := dmGeral.CTC_CD_M_PRO.FieldByName('arquivo').Text;
      if SaveDialog1.Execute then
        begin
          TBlobField(dmgeral.CTC_CD_M_PRO.FieldByName('doc_pro')).SaveToFile(
            ExtractFilePath(SaveDialog1.FileName) + dmGeral.CTC_CD_M_PRO.FieldByName('arquivo').Text);

          ShowMessage('Arquivo salvo em: ' + ExtractFilePath(SaveDialog1.FileName) + dmGeral.CTC_CD_M_PRO.FieldByName('arquivo').Text);
        end;
    end
  else
    begin
      ShowMessage('Nenhum registro encontrado!');
    end;
end;

procedure TCTC_FM_M_PRO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmgeral.CTC_CD_M_PRO.Close;
  dmGeral.BUS_CD_C_ITE.Close;
  FreeAndNil(CTC_FM_M_PRO);
end;

procedure TCTC_FM_M_PRO.FormCreate(Sender: TObject);
begin
  inherited;
  dmGeral.CTC_CD_M_PRO.Close;
  dmGeral.CTC_CD_M_PRO.Data :=
  dmGeral.CTC_CD_M_PRO.DataRequest(
          VarArrayOf([0, '']));
end;

procedure TCTC_FM_M_PRO.FormShow(Sender: TObject);
begin
  inherited;
  txtpesquisa.SetFocus;
end;

function TCTC_FM_M_PRO.NomeArq(name: string): string;
begin
  Result := name;
  repeat
    Delete(Result,1,Pos('\',Result));
  until Pos('\',Result)=0;
end;

function TCTC_FM_M_PRO.TamanhoArquivo(Arquivo: string): Integer;
begin
  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do
  try
    Result := Size;
  finally
   Free;
  end;
end;

procedure TCTC_FM_M_PRO.txtArquivoButtonClick(Sender: TObject);
begin
  {if not DirectoryExists(ExtractFilePath(Application.ExeName)+'\emp'+dmgeral.CAD_CD_C_PARid_empresa.Text+'\Protocolos') then
    ForceDirectories(ExtractFilePath(Application.ExeName)+'\emp'+dmgeral.CAD_CD_C_PARid_empresa.Text+'\Protocolos');

  if FileExists(txtArquivo.Text) then
    begin
      OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName)+'emp'+dmgeral.CAD_CD_C_PARid_empresa.Text+'\Protocolos\';
    end;}

  if opendialog1.Execute then
    begin
      if TamanhoArquivo(opendialog1.FileName) <= 1048576 then
        begin
          txtArquivo.Text := ExtractFileName(opendialog1.FileName);
          {txtArquivo.Text := ExtractFilePath(Application.ExeName)+'emp'+dmgeral.CAD_CD_C_PARid_empresa.Text+'\Protocolos\ArqP'+
            txtItem.Text+'L'+txtLote.Text+Copy(arq_orig , Pos('.', arq_orig), Length(arq_orig));}
          dmGeral.CTC_CD_M_PROdoc_pro.LoadFromFile(opendialog1.FileName);
        end
      else
        begin
          ShowMessage('Tamanho do arquivo deve ser inferior a 1Mb (um megabite)!');
        end;
    end;
end;

procedure TCTC_FM_M_PRO.txtItemButtonClick(Sender: TObject);
begin
  inherited;
  PSQ_FM_X_ITE := TPSQ_FM_X_ITE.Create(Self);
  PSQ_FM_X_ITE.ShowModal;
  dmGeral.CTC_CD_M_PRO.FieldByName('ID_ITEM').AsInteger := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('ID_ITEM').AsInteger;
  dmGeral.CTC_CD_M_PRO.FieldByName('int_nomeite').AsString := PSQ_FM_X_ITE.BUS_CD_C_ITE.FieldByName('descricao').AsString;
  PSQ_FM_X_ITE.Free;
end;

procedure TCTC_FM_M_PRO.txtItemExit(Sender: TObject);
begin
  inherited;
  dmGeral.BUS_CD_C_ITE.Close;
  dmGeral.BUS_CD_C_ITE.Data :=
  dmGeral.BUS_CD_C_ITE.DataRequest(VarArrayOf([0, txtItem.Text]));

  if (txtitem.Text <> '') and (dmgeral.BUS_CD_C_ITE.IsEmpty) then
    begin
      ShowMessage('Item invalido!');
      dmgeral.CTC_CD_M_PRO.FieldByName('id_item').AsString := '';
    end
  else
    begin
      if (txtLote.Text <> '') then
        begin
          dmGeral.BUS_CD_M_PRO.Close;
          dmGeral.BUS_CD_M_PRO.Data :=
          dmGeral.BUS_CD_M_PRO.DataRequest(VarArrayOf([4, txtItem.Text, txtLote.Text]));

          if not dmgeral.BUS_CD_M_PRO.IsEmpty then
            begin
              showmessage('Combinação Item/Lote já cadastrada!');
              dmGeral.CTC_CD_M_PRO.FieldByName('ID_ITEM').AsString := '';
              dmGeral.CTC_CD_M_PRO.FieldByName('lote').AsString := '';
              txtItem.SetFocus;
            end;
        end
      else
        begin
          dmGeral.CTC_CD_M_PRO.FieldByName('int_nomeite').AsString := dmGeral.BUS_CD_C_ITE.FieldByName('descricao').AsString;
        end;
    end;
end;

procedure TCTC_FM_M_PRO.txtItemKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If not( key in['0'..'9',#08] ) then
    key:=#0;
end;

procedure TCTC_FM_M_PRO.txtLoteExit(Sender: TObject);
begin
  inherited;
  if (txtLote.Text <> '') and (txtItem.Text <> '') then
    begin
      dmGeral.BUS_CD_M_PRO.Close;
      dmGeral.BUS_CD_M_PRO.Data :=
      dmGeral.BUS_CD_M_PRO.DataRequest(VarArrayOf([4, txtItem.Text, txtLote.Text]));

      if not dmgeral.BUS_CD_M_PRO.IsEmpty then
        begin
          showmessage('Combinação Item/Lote já cadastrada!');
          dmGeral.CTC_CD_M_PRO.FieldByName('ID_ITEM').AsString := '';
          dmGeral.CTC_CD_M_PRO.FieldByName('lote').AsString := '';
          txtItem.SetFocus;
        end;
    end;
end;

procedure TCTC_FM_M_PRO.txtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if cbbPesquisa.ItemIndex = 0 then
    begin
      If not( key in['0'..'9',#08] ) then
        key:=#0;
    end;
end;

end.
