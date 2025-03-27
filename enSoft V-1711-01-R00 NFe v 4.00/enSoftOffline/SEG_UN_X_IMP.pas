unit SEG_UN_X_IMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TSEG_FM_X_IMP = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlPrincipal: TPanel;
    txtCPF: TEdit;
    Label2: TLabel;
    btnImp: TBitBtn;
    btnSair: TBitBtn;
    procedure btnImpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    var
     ok:boolean;
  public
    { Public declarations }
  end;

var
  SEG_FM_X_IMP: TSEG_FM_X_IMP;

implementation

{$R *.dfm}

uses uDmGeralSer, uDmGeral;

procedure TSEG_FM_X_IMP.btnImpClick(Sender: TObject);
begin


     dmGeralSer.BUS_CD_C_FUN.Close;
     dmGeralSer.BUS_CD_C_FUN.Data :=
     dmGeralSer.BUS_CD_C_FUN.DataRequest(VarArrayOf([2,txtCPf.Text]));

     if not dmGeralSer.BUS_CD_C_FUN.Eof then
       begin
          dmGeral.FIN_CD_M_REC.Close;
          dmGeral.FIN_CD_M_REC.Data :=
          dmGeral.FIN_CD_M_REC.DataRequest(VarArrayOf([100,'']));

          while not dmGeral.FIN_CD_M_REC.eof do
            begin
              dmGeral.FIN_CD_M_REC.delete;
            end;


          if dmGeral.FIN_CD_M_REC.ApplyUpdates(0)<>0 then
            begin
              ShowMessage('Erro ao deletar os títulos no banco local.');
              exit;
            end;

          dmGeral.CAD_CD_C_CLI.Close;
          dmGeral.CAD_CD_C_CLI.Data :=
          dmGeral.CAD_CD_C_CLI.DataRequest(VarArrayOf([100,'']));

          while not dmGeral.CAD_CD_C_CLI.eof do
            begin
              dmGeral.CAD_CD_C_CLI.delete;
            end;


          if dmGeral.CAD_CD_C_CLI.ApplyUpdates(0)<>0 then
            begin
              ShowMessage('Erro ao deletar os clientes no banco local.');
              exit;
            end;



          dmGeral.CAD_CD_C_FUN.Close;
          dmGeral.CAD_CD_C_FUN.Data :=
          dmGeral.CAD_CD_C_FUN.DataRequest(VarArrayOf([1,'%']));


          while not dmGeral.CAD_CD_C_FUN.IsEmpty do
            begin
               dmGeral.CAD_CD_C_FUN.Delete;
            end;

          dmGeral.CAD_CD_C_FUN.Insert;

          dmGeral.CAD_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('ID_FUNCIONARIO').AsInteger;

          dmGeral.CAD_CD_C_FUN.FieldByName('NOME').AsString :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('NOME').AsString;

          dmGeral.CAD_CD_C_FUN.FieldByName('DOC_CPF').AsString :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('DOC_CPF').AsString;

          dmGeral.CAD_CD_C_FUN.FieldByName('LOGIN').AsString :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('LOGIN').AsString;

          dmGeral.CAD_CD_C_FUN.FieldByName('SENHA').AsString :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('SENHA').AsString;

          dmGeral.CAD_CD_C_FUN.FieldByName('seg_alt_vend_ped').AsBoolean :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('seg_alt_vend_ped').AsBoolean;

          dmGeral.CAD_CD_C_FUN.FieldByName('seg_habilitar_seg').AsBoolean :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('seg_habilitar_seg').AsBoolean;

          dmGeral.CAD_CD_C_FUN.FieldByName('seg_hab_bot_exc').AsBoolean :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('seg_hab_bot_exc').AsBoolean;

          dmGeral.CAD_CD_C_FUN.FieldByName('seg_vis_ult_cmp_ite').AsBoolean :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('seg_vis_ult_cmp_ite').AsBoolean;

          dmGeral.CAD_CD_C_FUN.FieldByName('seg_alt_pre_pro').AsBoolean :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('seg_alt_pre_pro').AsBoolean;

          dmGeral.CAD_CD_C_FUN.FieldByName('seg_hab_bot_alt_fun').AsBoolean :=
                 dmGeralSer.BUS_CD_C_FUN.FieldByName('seg_hab_bot_alt_fun').AsBoolean;

             //Inserir dados do funcionario
         dmGeral.CAD_CD_C_FUN.Post;
         if dmGeral.CAD_CD_C_FUN.ApplyUpdates(0) = 0 then
           begin
             Showmessage('Dados do funcionário importado com sucesso.');
             ok:= true;
             Close;
           end
         else
           begin
             Showmessage('Falha no processo de importação de dados do funcionário.');
           end;
         dmGeral.CAD_CD_C_FUN.Active := false;
       end
      else
        begin
         Showmessage('Funcionário não cadastrado no banco do servidor.');
        end;
end;

procedure TSEG_FM_X_IMP.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TSEG_FM_X_IMP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //  FreeAndNil(SEG_FM_X_IMP);
  dmGeralSer.Conexao.Close;
  dmGeralSer.Conexao.CloseDataSets;
  dmGeralSer.Conexao.Params.Clear;
  if ok=true then
    ModalResult := mrOk
  else
    ModalResult := mrClose;

end;

procedure TSEG_FM_X_IMP.FormShow(Sender: TObject);
begin
   ok:= false;

end;

end.
