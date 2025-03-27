unit CSU_UN_M_GPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ShellAPI, Vcl.OleCtrls, SHDocVw,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCSU_FM_M_GPS = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    OLat: TEdit;
    OLong: TEdit;
    DLat: TEdit;
    DLong: TEdit;
    btnRota: TButton;
    MemoUrl: TMemo;
    procedure btnRotaClick(Sender: TObject);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_GPS: TCSU_FM_M_GPS;
  xCaminho: String;

implementation

{$R *.dfm}

procedure TCSU_FM_M_GPS.btnRotaClick(Sender: TObject);
var
  ConsultaEnd,origem,destino:string;
begin
  //ConsultaEnd := 'http://maps.google.com/maps?q='+OLat.Text+','+OLong.Text;
  origem := OLat.Text+','+ OLong.Text;
  destino := DLat.Text+','+ DLong.Text;
  //ConsultaEnd := 'https://www.google.com.br/maps/dir/'+origem+'/'+destino+'/';

  if xCaminho = '' then
    begin
      ConsultaEnd := 'http://maps.google.com/';
      Caption := ConsultaEnd;
    end
  else
    begin
      ConsultaEnd := 'http://maps.google.com/maps?q='+xCaminho;
      Caption := ConsultaEnd;
    end;

  WebBrowser1.Navigate(ConsultaEnd);
  //https://www.google.com.br/maps/dir/-9.396727,+-40.485107/-9.353884,-40.486409/@-9.3752242,-40.5068923,14z/data=!3m1!4b1!4m6!4m5!1m3!2m2!1d-40.485107!2d-9.396727!1m0
end;

procedure TCSU_FM_M_GPS.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  MemoUrl.Text := URL;
end;

procedure TCSU_FM_M_GPS.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
var
p1,p2,p3,p4:string;
begin
  p1 := '';
  p2 := '';

  MemoUrl.Text := WebBrowser1.LocationURL;

  p1 := copy(MemoUrl.Text,Pos('@',MemoUrl.Text)+1,Length(MemoUrl.Text));
  p2 := copy(p1,1,Pos(',',p1)-1);
  p3 := copy(p1,Length(p2)+2,Length(p1));
  p4 := copy(p3,1,Pos(',',p3)-1);

  Olat.Text := stringReplace(p2,'.',',',[rfReplaceAll]);
  Olong.Text := stringReplace(p4,'.',',',[rfReplaceAll]);
end;

end.
