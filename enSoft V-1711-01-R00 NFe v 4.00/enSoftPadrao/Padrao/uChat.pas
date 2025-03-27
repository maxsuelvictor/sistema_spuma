unit uChat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  DataSnap.DSproxy,DataSnap.DSSession,System.JSON,  Data.DBXJson, IPPeerClient,
  Datasnap.DSCommon;

type


  TSpumaCallBack = class(TDBXCallBack)
    function Execute(const Arg: TJSONValue): TJSONValue; override;
  end;

  TfrmChat = class(TForm)
    txtfuncionario: TLabeledEdit;
    Label1: TLabel;
    btnEnviar: TBitBtn;
    txtHistorico: TMemo;
    Label2: TLabel;
    dsCliCallChanMan: TDSClientCallbackChannelManager;
    txtMsg: TEdit;
    lblCanal: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    lblManagerId: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure msgCallBack(mensagem: String);
    procedure EmpilharMsg(mensagem: String);
  end;

var
  frmChat: TfrmChat;


implementation
uses uProxy, uDmGeral, enSoftMenu;

{$R *.dfm}

procedure TfrmChat.btnEnviarClick(Sender: TObject);
var
  SMPrincipal : TSMClient;
begin
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

  try
    SMPrincipal.BroadcastToChannel(dsCliCallChanMan.ChannelName,
    TJSONString.Create(DateTimeToStr(now) + ' - ' + txtFuncionario.text + ' - ' + txtMsg.text));
  finally
    FreeAndNil(SMPrincipal);
  end;


end;

procedure TfrmChat.FormCreate(Sender: TObject);
begin
  txtFuncionario.Text := '';
  txtMsg.text := '';
  txtHistorico.Lines.Clear;

  //dsCliCallChanMan.ManagerId := TDSTunnelSession.GenerateSessionID;
  lblCanal.Caption := 'Seção: ' + dsCliCallChanMan.ManagerId;
  lblManagerId.caption :=  dsCliCallChanMan.ManagerId;
   dsCliCallChanMan.RegisterCallBack(TDSTunnelSession.GenerateSessionID,
   TSpumaCallBack.Create);

end;

{ TSpumaCallBack }

function TSpumaCallBack.Execute(const Arg: TJSONValue): TJSONValue;
begin
  // Esse método é chamado e executado pelo servidor.

  frmChat.EmpilharMsg(arg.ToString);
  result := TJSONTrue.Create;
end;


procedure TfrmChat.Button1Click(Sender: TObject);
begin
  dsCliCallChanMan.ChannelName := edit1.text;
end;

procedure TfrmChat.EmpilharMsg(mensagem: String);
begin
  TThread.Queue(nil,
      procedure
         begin
            msgCallBack(mensagem);
         end );
end;


procedure TfrmChat.msgCallBack(mensagem: String);
begin
  //txtHistorico.lines.add(DateTimeToStr(now) + ' - ' + txtFuncionario.text + ' - ' + txtMsg.text);
  txtHistorico.lines.add(mensagem);
end;

end.

