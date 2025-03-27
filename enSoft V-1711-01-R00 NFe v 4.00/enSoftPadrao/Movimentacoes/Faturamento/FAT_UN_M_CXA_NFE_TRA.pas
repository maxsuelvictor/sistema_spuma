unit FAT_UN_M_CXA_NFE_TRA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  vcl.wwdblook, Data.DB, Vcl.Mask, vcl.Wwdbedit, Vcl.Buttons, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBControls, vcl.Wwdotdot, vcl.Wwdbcomb;

type
  TFAT_FM_M_CXA_NFE_TRA = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    txtMarca: TwwDBEdit;
    txtQtdeVol: TwwDBEdit;
    txtNroVol: TwwDBEdit;
    txtEsp: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dso: TDataSource;
    Label5: TLabel;
    lblEstado: TLabel;
    cbbUF: TwwDBLookupCombo;
    txtRntc: TwwDBEdit;
    Label6: TLabel;
    txtPlaca: TJvDBMaskEdit;
    Label7: TLabel;
    txtIdTra: TJvDBComboEdit;
    lbl_NomeTra: TwwDBEdit;
    txtEndTra: TwwDBEdit;
    Label8: TLabel;
    txtBairroTra: TwwDBEdit;
    Label9: TLabel;
    txtCidadeTra: TwwDBEdit;
    Label10: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label11: TLabel;
    txtCnpjTra: TwwDBEdit;
    Label12: TLabel;
    cbbTipoFrete: TwwDBComboBox;
    Label13: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cbbUFEnter(Sender: TObject);
    procedure txtIdTraButtonClick(Sender: TObject);
    procedure txtIdTraExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xMsg: String;
  end;

var
  FAT_FM_M_CXA_NFE_TRA: TFAT_FM_M_CXA_NFE_TRA;

implementation

{$R *.dfm}

uses uDmGeral, FAT_RN_M_CXA, PSQ_UN_X_FOR, FAT_UN_M_CXA_NFE;

procedure TFAT_FM_M_CXA_NFE_TRA.btnGravarClick(Sender: TObject);
begin

  if FAT_RN_M_CXA.FatVerifDadosTrans then
     begin
        if xMsg <> '' then
           begin
             if MessageDlg('Os dados realmente estão corretos?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                begin
                  abort;
                end;
           end;
        xCodTransport_CxaNfe := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_transportadora').AsString;
        xPlaca_Transp_CxaNfe := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_placa').AsString;
        xUF_Transp_CxaNfe    := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_uf').AsString;
        dmGeral.BUS_CD_M_NFE_CXA.Post;

        try
          if dmGeral.BUS_CD_M_NFE_CXA.ApplyUpdates(0) = 0 then
             Close
        except
          on e: Exception do
             begin
               ShowMessage('Erro ao tentar atualizar os dados do transportador: ' + e.Message);
             end;
        end;
     end;
end;

procedure TFAT_FM_M_CXA_NFE_TRA.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFAT_FM_M_CXA_NFE_TRA.cbbUFEnter(Sender: TObject);
begin
  dmGeral.BUS_PR_X_UFS;
  cbbUF.DropDown;
end;

procedure TFAT_FM_M_CXA_NFE_TRA.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(27) then
     begin
       Key := #0;
       Close;
     end;

  if (Key = chr(13)) then
     begin
       Perform(wm_NextDlgCtl,0,0);
       Key := #0;
     end;

  if (key= char(9)) then
     key := #0;

end;

procedure TFAT_FM_M_CXA_NFE_TRA.FormShow(Sender: TObject);
var
  qtdeTotal: currency;
  Perguntar: Boolean;
begin
  dmGeral.BUS_CD_M_NFE_CXA.Edit;

  if dmgeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean  then //enSoftSpuma;
     begin
       if dmgeral.CAD_CD_C_PAR.FieldByName('emp_cnpj').AsString = '04639580000112' then
          begin
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_marca').AsString := 'COLCHOES GLOBO';

            qtdeTotal := 0;

            dmGeral.BUS_CD_M_NFE_ITE_CXA.first;
            while not (dmGeral.BUS_CD_M_NFE_ITE_CXA.eof) do
               begin
                qtdeTotal := qtdeTotal + dmGeral.BUS_CD_M_NFE_ITE_CXA.FieldByName('qtde').AsCurrency;
                dmGeral.BUS_CD_M_NFE_ITE_CXA.next;
               end;
            dmGeral.BUS_CD_M_NFE_ITE_CXA.first;


            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_rntc').AsString := '.';
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_qtde_vol').AsCurrency := qtdeTotal;
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_especie').AsString :=  'VOLUMES';
            dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_num_vol').AsString :=  'S/N';
          end;
     end;

  xMsg := '';
  Perguntar := false;

  if xCodTransport_CxaNfe <> '' then
     begin
       Perguntar := true;

       if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_transportadora').AsString <> '' then
          if xCodTransport_CxaNfe = dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_transportadora').AsString then
             begin
               Perguntar := false;
             end
          else
             Perguntar := true;


       if Perguntar then
          begin
             if MessageDlg('Deseja continuar com o transportador anterior?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin

                  xMsg := 'dados a copiar';

                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_transportadora').AsString := xCodTransport_CxaNfe;
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_placa').AsString :=  xPlaca_Transp_CxaNfe;
                  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('tra_uf').AsString    :=  xUF_Transp_CxaNfe;
                end
          end;
     end;
  txtIdTra.setfocus;
end;

procedure TFAT_FM_M_CXA_NFE_TRA.txtIdTraButtonClick(Sender: TObject);
begin
  PSQ_FM_X_FOR := TPSQ_FM_X_FOR.Create(Self);
  PSQ_FM_X_FOR.ShowModal;
  if not PSQ_FM_X_FOR.BUS_CD_C_FOR.IsEmpty then
     begin
       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_TRANSPORTADORA').AsInteger :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('ID_FORNECEDOR').AsInteger;
       dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nometra').text       :=
               PSQ_FM_X_FOR.BUS_CD_C_FOR.FieldByName('DESCRICAO').AsString;
     end;
   PSQ_FM_X_FOR.Free;
end;

procedure TFAT_FM_M_CXA_NFE_TRA.txtIdTraExit(Sender: TObject);
begin
  if btnGravar.Focused or
     btnSair.Focused  then
     begin
       exit;
     end;

  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_nometra').Text := '';
  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnptra').text := '';
  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_baitra').text := '';
  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_endtra').text := '';
  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cidtra').text := '';
  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_esttra').text := '';

  if dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_TRANSPORTADORA').AsInteger > 0 then
     begin
        dmGeral.BusFornecedor(0,dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_TRANSPORTADORA').Text);
        if not dmGeral.CAD_CD_C_FOR_TesValObrigatorio(dmGeral.BUS_CD_C_FOR) then
           begin
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_TRANSPORTADORA').AsString := '';
             txtIdTra.SetFocus;
             exit;
           end;

        if not dmGeral.BUS_CD_C_FOR.FieldByName('TRANSPORTADORA').AsBoolean then
           begin
             dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_TRANSPORTADORA').AsString := '';
             ShowMessage('O fornecedor dever ser do tipo "Transportador".');
             txtIdTra.SetFocus;
             exit;
           end;

        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('INT_NOMETRA').text :=
                dmGeral.BUS_CD_C_FOR.FieldByName('FANTASIA').AsString;

        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cnptra').text :=
           dmGeral.BUS_CD_C_FOR.FieldByName('DOC_CNPJ').AsString;

        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_baitra').text :=
           dmGeral.BUS_CD_C_FOR.FieldByName('bairro').AsString;

        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_endtra').text :=
           dmGeral.BUS_CD_C_FOR.FieldByName('endereco').AsString;

        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_cidtra').text :=
                dmGeral.BUS_CD_C_FOR.FieldByName('int_nomecid').AsString;

        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('int_esttra').text :=
                dmGeral.BUS_CD_C_FOR.FieldByName('int_uf').AsString;

        dmGeral.BUS_CD_C_FOR.close;
     end;
end;

end.
