unit FAT_UN_M_PED_IRG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.ComCtrls;

type
  TFAT_FM_M_PED_IRG = class(TForm)
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    txtIdRota: TEdit;
    btnImportarReg: TcxButton;
    pb: TProgressBar;
    txtPrg: TLabel;
    btnSair: TcxButton;
    procedure btnImportarRegClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    procedure ImportarRegistros;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_PED_IRG: TFAT_FM_M_PED_IRG;

implementation

{$R *.dfm}

uses uDmGeral, uDmGeralSer;




procedure TFAT_FM_M_PED_IRG.btnImportarRegClick(Sender: TObject);
begin
  ImportarRegistros;
end;

procedure TFAT_FM_M_PED_IRG.btnSairClick(Sender: TObject);
begin
 Close;
end;

procedure TFAT_FM_M_PED_IRG.FormShow(Sender: TObject);
begin
   txtPrg.Caption := '';
   pb.Min :=0;
   pb.Max := 19;
   pb.Step := 1;
   pb.Position := 0;
end;

procedure TFAT_FM_M_PED_IRG.ImportarRegistros;
var
  msg,xCondCliente:String;
  i:integer;
begin
   pb.Min :=0;
   pb.Max := 19;
   pb.Step := 1;
   pb.Position := 0;


    txtPrg.Caption := 'Deletando registros do banco.';
    Application.ProcessMessages;
    if dmGeral.LimparBanco(msg)<>1 then
      begin
        ShowMessage(msg);
        exit;
      end;

    dmGeralSer.BUS_CD_C_CLI.Close;
    dmGeralSer.BUS_CD_C_CLI.Data :=
    dmGeralSer.BUS_CD_C_CLI.DataRequest(
              VarArrayOf([81, txtIdRota.Text,IntToStr(xFuncionario)]));

   if not dmGeralSer.BUS_CD_C_CLI.IsEmpty then
     begin
       xCondCliente :='';
       for i := 0 to dmGeralSer.BUS_CD_C_CLI.RecordCount - 1 do
          begin
            if xCondCliente <> '' then
               begin
                 xCondCliente :=
                 xCondCliente + ',' +''''+dmGeralSer.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString+'''';

               end;
            if xCondCliente = '' then
               begin
                 xCondCliente :=
                 xCondCliente +''''+dmGeralSer.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsString+'''';

               end;

            dmGeralSer.BUS_CD_C_CLI.Next;
          end;


       txtPrg.Caption := 'Importando registros de cidades';
       Application.ProcessMessages;
       if dmGeral.ImpCidade(msg)=2 then
          begin
            ShowMessage(msg);
            exit;
          end;


        pb.Position := 1;
        txtPrg.Caption := 'Importando registros de região';
        Application.ProcessMessages;
        if dmGeral.ImpRegiao(msg)=2 then
          begin
            ShowMessage(msg);
            exit;
          end;

         pb.Position := 2;
         txtPrg.Caption := 'Importando registros de perfil';
         Application.ProcessMessages;
         if dmGeral.ImpPerfil(msg)=2 then
          begin
             ShowMessage(msg);
             exit;
          end;

          pb.Position := 3;
          txtPrg.Caption := 'Importando registros de clientes';
          Application.ProcessMessages;
          if dmGeral.ImpCliente(msg)=2 then
          begin
             ShowMessage(msg);
             exit;
          end;

         pb.Position := 4;
         txtPrg.Caption := 'Importando registros de condição pagamento';
         Application.ProcessMessages;
         if dmGeral.ImpCondPgto(msg)=2 then
            begin
               ShowMessage(msg);
               exit;
            end;

         pb.Position := 5;
         txtPrg.Caption := 'Importando registros de forma de pagamento';
         Application.ProcessMessages;
          if dmGeral.ImpFormaPgto(msg)=2 then
           begin
              ShowMessage(msg);
              exit;
           end;


         pb.Position := 6;
         txtPrg.Caption := 'Importando registros de tipo mov. estoque';
         Application.ProcessMessages;
         if dmGeral.ImpTipoMovEstoque(msg)=2 then
           begin
             ShowMessage(msg);
             exit;
           end;

          pb.Position := 7;
          txtPrg.Caption := 'Importando registros de títulos';
          Application.ProcessMessages;
          if dmGeral.ImpTituloRec(msg,xCondCliente)= 2 then
            begin
               ShowMessage(msg);
               exit;
            end;

             pb.Position := 8;
             txtPrg.Caption := 'Importando registros de tributos';
             Application.ProcessMessages;
            if dmGeral.ImpTributo(msg)=2 then
              begin
                ShowMessage(msg);
                exit;
              end;


            pb.Position := 9;
            txtPrg.Caption := 'Importando registro de unidades';
            Application.ProcessMessages;
            if dmGeral.ImpUnidade(msg)=2 then
              begin
                ShowMessage(msg);
                exit;
              end;

            pb.Position := 10;
            txtPrg.Caption := 'Importando os registros de grupos';
            Application.ProcessMessages;
             if dmGeral.ImpGrupo(msg)=2 then
              begin
                 ShowMessage(msg);
                 exit;
              end;


            pb.Position := 11;
            txtPrg.Caption := 'Importando os registros de familias';
            Application.ProcessMessages;
            if dmGeral.ImpFamilia(msg)=2 then
              begin
                 ShowMessage(msg);
                 exit;
              end;


            pb.Position := 12;
            txtPrg.Caption := 'Importando os registros de fornecedores';
            Application.ProcessMessages;
            if dmGeral.ImpFornecedor(msg)=2 then
              begin
                 ShowMessage(msg);
                 exit;
              end;

             pb.Position := 13;
             txtPrg.Caption := 'Importando os registros de itens';
             Application.ProcessMessages;
             if dmGeral.ImpItens(msg)=2 then
              begin
                 ShowMessage(msg);
                 exit;
              end;



            pb.Position := 14;
            txtPrg.Caption := 'Importando os registros de cores';
            Application.ProcessMessages;
             if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_COR').AsBoolean then
               begin
                  if dmGeral.ImpCor(msg)=2 then
                    begin
                       ShowMessage(msg);
                       exit;
                    end;
               end;


              pb.Position := 15;
              txtPrg.Caption := 'Importando os registros de tamanhos';
              Application.ProcessMessages;
              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('ATIVA_TAMANHO').AsBoolean then
               begin
                  if dmGeral.ImpTamanho(msg)=2 then
                    begin
                       ShowMessage(msg);
                       exit;
                    end;
               end;

              pb.Position := 16;
              txtPrg.Caption := 'Importando os registros de almoxarifados';
              Application.ProcessMessages;
              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
               begin
                  if dmGeral.ImpAlmoxarifado(msg)=2 then
                    begin
                       ShowMessage(msg);
                       exit;
                    end;
               end;


              pb.Position := 17;
              txtPrg.Caption := 'Importando os registros de ficha de estoque';
              Application.ProcessMessages;
               if dmGeral.ImpFichaEstoque(msg)=2 then
                 begin
                    ShowMessage(msg);
                    exit;
                 end;

              pb.Position := 18;
              txtPrg.Caption := 'Importando os registros de ficha de estoque por almoxarifado';
              Application.ProcessMessages;
              if dmGeral.CAD_CD_C_PAR_CTR.FieldByName('UTILIZA_ALMOXARIFADO').AsBoolean then
               begin
                 if dmGeral.ImpFichaEstoqueAlm(msg)=2 then
                   begin
                      ShowMessage(msg);
                      exit;
                   end;
               end;
            pb.Position := 19;
            txtPrg.Caption := 'Registros importados com sucesso.';
            Application.ProcessMessages;
            ShowMessage('Registros importados com sucesso.');
            Close;
     end
   else
     begin
       ShowMessage('Não há clientes cadastrados com rota selecionada e vendedor logado em questão.');
     end;
end;



end.
