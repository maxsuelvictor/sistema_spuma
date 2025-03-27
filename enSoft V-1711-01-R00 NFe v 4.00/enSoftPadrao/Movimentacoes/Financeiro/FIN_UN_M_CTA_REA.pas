unit FIN_UN_M_CTA_REA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Data.DB, vcl.wwdatsrc,Datasnap.DBClient;

type
  TFIN_FM_M_CTA_REA = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    wwDBGrid1: TwwDBGrid;
    btnReabreCaixa: TBitBtn;
    btnSair: TBitBtn;
    dso: TwwDataSource;
    procedure btnReabreCaixaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIN_FM_M_CTA_REA: TFIN_FM_M_CTA_REA;

implementation

{$R *.dfm}

uses uDmGeral;

procedure TFIN_FM_M_CTA_REA.btnReabreCaixaClick(Sender: TObject);
begin
   try
     dmGeral.FIN_CD_M_CXA.Edit;
     dmGeral.FIN_CD_M_CXA.FieldByName('status').AsInteger          := 0;
     dmGeral.FIN_CD_M_CXA.FieldByName('dta_ult_reabertura').AsDateTime := xDataSis;
     dmGeral.FIN_CD_M_CXA.FieldByName('hor_ult_reabertura').AsDateTime := xHoraSis;
     dmGeral.FIN_CD_M_CXA.FieldByName('dta_fechamento').AsString := '';
     dmGeral.FIN_CD_M_CXA.FieldByName('hor_fechamento').AsString := '';

     dmGeral.FIN_CD_M_CXA.Post;

     if dmGeral.FIN_CD_M_CXA.ApplyUpdates(0) = 0 then
       begin
        Showmessage('Caixa reaberto com sucesso.');
        Close;
       end
     else
       begin
        Showmessage('Falha ao reabrir o caixa.');
       end;
   except
     on e:EReconcileError do
       begin
         showmessage(e.Message);
       end;
   end;
end;

procedure TFIN_FM_M_CTA_REA.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFIN_FM_M_CTA_REA.FormShow(Sender: TObject);
begin
  dmGeral.FIN_CD_M_CXA.Close;
  dmGeral.FIN_CD_M_CXA.Data :=
  dmGeral.FIN_CD_M_CXA.DataRequest(
          VarArrayOf([96, IntToStr(xFuncionario), dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString]));


end;

end.
