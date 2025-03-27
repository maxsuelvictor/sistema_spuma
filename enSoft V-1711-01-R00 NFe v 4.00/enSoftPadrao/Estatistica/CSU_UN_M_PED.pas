unit CSU_UN_M_PED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, Vcl.DBCtrls, Data.DB, Datasnap.DBClient,
  vcl.wwdatsrc, Vcl.Buttons;

type
  TCSU_FM_M_PED = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    dgTit: TwwDBGrid;
    Label2: TLabel;
    dgIte: TwwDBGrid;
    Label1: TLabel;
    dgPed: TwwDBGrid;
    lblPagamentos: TLabel;
    dsoPed: TwwDataSource;
    dsoIte: TwwDataSource;
    dsoTit: TwwDataSource;
    btnSair: TSpeedButton;
    txtNroPedido: TEdit;
    btnBuscar: TBitBtn;
    lblPedido: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure dgIteDblClick(Sender: TObject);
    procedure dgIteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_PED: TCSU_FM_M_PED;
  ChamadaPor: String;

implementation

{$R *.dfm}

uses uDmGeral, PCP_UN_M_OPR_OPP;

procedure TCSU_FM_M_PED.btnBuscarClick(Sender: TObject);
begin
  if trim(txtNroPedido.Text) <> '' then
     begin
       dmGeral.BUS_CD_M_PED.Close;
          dmGeral.BUS_CD_M_PED.Data :=
              dmGeral.BUS_CD_M_PED.DataRequest(
                   VarArrayOf([0, dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,  txtNroPedido.text]));
     end;
end;

procedure TCSU_FM_M_PED.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TCSU_FM_M_PED.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TCSU_FM_M_PED.dgIteDblClick(Sender: TObject);
begin
  if ChamadaPor = 'PCP_FM_M_OPR_OPP' then
     begin
       if not (dmGeral.BUS_CD_M_PED.IsEmpty) then
          begin
             xPed_MedidasPerson := dmGeral.BUS_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;
             close;
          end;
     end;
end;

procedure TCSU_FM_M_PED.dgIteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ord(key) = vk_return then
     begin
       if ChamadaPor = 'PCP_FM_M_OPR_OPP' then
          begin
            if not dmGeral.BUS_CD_M_PED_ITE.IsEmpty then
               begin
                 xPed_MedidasPerson := dmGeral.BUS_CD_M_PED_ITE.FieldByName('int_nomeite').AsString;
                 close;
               end;
          end;
     end;
end;

procedure TCSU_FM_M_PED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //dmGeral.BUS_CD_M_PED.Close;
  //FreeAndNil(CSU_FM_M_PED);
end;

procedure TCSU_FM_M_PED.FormCreate(Sender: TObject);
begin
  //dmgeral.BUS_CD_M_PED.Close;
  //dmgeral.BUS_CD_M_PED.Open;

end;

procedure TCSU_FM_M_PED.FormShow(Sender: TObject);
begin
  dmGeral.AtualizarGridItens(dgIte,'int_nomeite',13,10);
  dgPed.SetFocus;

  if ChamadaPor = 'PCP_FM_M_OPR_OPP' then
     begin
       lblPedido.Visible := true;
       txtNroPedido.Visible := true;
       txtNroPedido.text := '';
       btnBuscar.Visible := true;
       txtNroPedido.setfocus;
     end;
end;

end.
