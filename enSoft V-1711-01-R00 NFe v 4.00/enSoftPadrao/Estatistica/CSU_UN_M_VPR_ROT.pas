unit CSU_UN_M_VPR_ROT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ShellAPI, Vcl.OleCtrls, SHDocVw,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCSU_FM_M_VPR_ROT = class(TForm)
    Panel1: TPanel;
    OLat: TEdit;
    OLong: TEdit;
    DLat: TEdit;
    DLong: TEdit;
    btnRota: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    WebBrowser1: TWebBrowser;
    procedure btnRotaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CSU_FM_M_VPR_ROT: TCSU_FM_M_VPR_ROT;
  xCaminho: String;

implementation

{$R *.dfm}

procedure TCSU_FM_M_VPR_ROT.btnRotaClick(Sender: TObject);
var
  ConsultaEnd,origem,destino:string;
begin
  //ConsultaEnd := 'http://maps.google.com/maps?q='+OLat.Text+','+OLong.Text;
  origem := OLat.Text+','+ OLong.Text;
  destino := DLat.Text+','+ DLong.Text;
  //ConsultaEnd := 'https://www.google.com.br/maps/dir/'+origem+'/'+destino+'/';

  ConsultaEnd := 'https://www.google.com.br/maps/dir/'+xCaminho;
  Caption := ConsultaEnd;

  WebBrowser1.Navigate(ConsultaEnd);
  //https://www.google.com.br/maps/dir/-9.396727,+-40.485107/-9.353884,-40.486409/@-9.3752242,-40.5068923,14z/data=!3m1!4b1!4m6!4m5!1m3!2m2!1d-40.485107!2d-9.396727!1m0
end;

end.
