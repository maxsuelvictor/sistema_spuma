unit enFormBloq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmBloq = class(TForm)
    enFormBloq: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    lblMsg: TLabel;
    btnSair: TButton;
    btnCiente: TButton;
    txtTelefone: TLabel;
    lblTelefone: TLabel;
    txtTelefone2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codExibicao:Integer;
    admSistema:Boolean;
  end;

var
  frmBloq: TfrmBloq;

implementation

{$R *.dfm}

uses enConstantes, uDmGeral;

procedure TfrmBloq.btnCienteClick(Sender: TObject);
begin
   dmGeral.BUS_CD_C_PAR.Edit;
   dmGeral.BUS_CD_C_PAR_CTR.Edit;
   dmGeral.BUS_CD_C_PAR_CTR.FieldByName('id_fun_aviso_debito').AsInteger := xFuncionario;
   dmGeral.BUS_CD_C_PAR_CTR.FieldByName('horario_aviso_debito').AsDateTime := xHoraSis;
   dmGeral.BUS_CD_C_PAR_CTR.FieldByName('data_aviso_debito').AsDateTime := xDataSis;
   dmGeral.BUS_CD_C_PAR_CTR.Post;
   dmGeral.BUS_CD_C_PAR.ApplyUpdates(0);
   Close;
end;

procedure TfrmBloq.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBloq.FormShow(Sender: TObject);
begin
   txtTelefone.Caption := CTelefone_Enorth1;
   txtTelefone2.Caption := CTelefone_Enorth2;

   if admSistema=true then
     begin
        if codExibicao=3 then
          begin
            lblMsg.Caption := 'Por favor entre em contato com suporte. É necessário ações de sua parte '+
                              'para funcionamento do sistema.';
            btnCiente.Visible := false;
            btnSair.Left := 239;
            btnSair.Top := 71;
            btnSair.Width := 139;
          end;
     end
   else
     begin
       if codExibicao=3 then
          begin
            lblMsg.Caption := 'Nossos sistemas estão operacionais, no entanto faz-se necessário que o '+
                              'administrador entre em contato com suporte.';
            btnCiente.Visible := false;
            txtTelefone.Visible := false;
            txtTelefone2.Visible := false;
            lblTelefone.Visible := false;

            btnSair.Left := 170;
            btnSair.Top := 70;
            btnSair.Width := 139;
          end;
     end;


  if codExibicao=4 then
    begin
        lblMsg.Caption := 'CNPJ da empresa está incorreto.';
        btnCiente.Visible := false;
        txtTelefone.Visible := false;
        txtTelefone2.Visible := false;
        lblTelefone.Visible := false;

        btnSair.Left := 170;
        btnSair.Top := 70;
        btnSair.Width := 139;
    end;

  if codExibicao=5 then
    begin
        lblMsg.Caption := 'CNPJ da empresa não informado.';
        btnCiente.Visible := false;
        txtTelefone.Visible := false;
        txtTelefone2.Visible := false;
        lblTelefone.Visible := false;

        btnSair.Left := 170;
        btnSair.Top := 70;
        btnSair.Width := 139;
    end;

  if codExibicao=6 then
    begin
        lblMsg.Caption := 'Erro de conexão com servidor do suporte.';
        btnCiente.Visible := false;
        txtTelefone.Visible := false;
        txtTelefone2.Visible := false;
        lblTelefone.Visible := false;

        btnSair.Left := 170;
        btnSair.Top := 70;
        btnSair.Width := 139;
    end;

   if codExibicao=7 then
    begin
        lblMsg.Caption := 'Licença inválida. Reinicie o sistema para atualizar a licença.';
        btnCiente.Visible := false;
        txtTelefone.Visible := false;
        txtTelefone2.Visible := false;
        lblTelefone.Visible := false;

        btnSair.Left := 170;
        btnSair.Top := 70;
        btnSair.Width := 139;
    end;



end;

end.
