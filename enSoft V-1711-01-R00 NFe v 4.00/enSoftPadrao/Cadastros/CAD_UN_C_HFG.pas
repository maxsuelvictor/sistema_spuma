unit CAD_UN_C_HFG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, cxButtons, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid;

type
  TCAD_FM_C_HFG = class(TPAD_FM_X_FRM)
    wwDBGrid1: TwwDBGrid;
    btnSalvar: TButton;
    btnCarregarFpg: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    //procedure SairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure btnCarregarFpgClick(Sender: TObject);
  private
    { Private declarations }
    procedure Carregar;
  public
    { Public declarations }
  end;

var
  CAD_FM_C_HFG: TCAD_FM_C_HFG;

implementation

{$R *.dfm}

uses uDmGeral, uProxy;

procedure TCAD_FM_C_HFG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(CAD_FM_C_HFG);
  dmGeral.CAD_CD_C_HFG.Cancel;
  dmGeral.CAD_CD_C_HFG.Close;
end;

procedure TCAD_FM_C_HFG.FormShow(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_HFG.Close;
      dmGeral.CAD_CD_C_HFG.Data := dmGeral.CAD_CD_C_HFG.DataRequest(VarArrayOf([1, '']));
  Carregar;
end;



procedure TCAD_FM_C_HFG.wwDBGrid1Enter(Sender: TObject);
begin
  inherited;
  dmGeral.CAD_CD_C_HFG.Edit;
end;

procedure TCAD_FM_C_HFG.wwDBGrid1Exit(Sender: TObject);
begin
  inherited;
   dmGeral.CAD_CD_C_HFG.Post;
end;

procedure TCAD_FM_C_HFG.btnCarregarFpgClick(Sender: TObject);
begin
  inherited;
  Carregar;
end;

procedure TCAD_FM_C_HFG.btnSalvarClick(Sender: TObject);
var
  nivel:String;
begin
  inherited;

   dmGeral.CAD_CD_C_HFG.IndexFieldNames := 'nivel';

   nivel := '';
   dmGeral.CAD_CD_C_HFG.First;
   while not dmGeral.CAD_CD_C_HFG.EOF do
     begin
        if  dmGeral.CAD_CD_C_HFG.FieldByName('NIVEL').AsString ='' then
         begin
            ShowMessage('Há formas de pagamentos sem indicação de nível.');
            exit;
         end;

       if  dmGeral.CAD_CD_C_HFG.FieldByName('NIVEL').AsInteger <= 0 then
         begin
            ShowMessage('Os níveis tem que ser maiores que zero.');
            exit;
         end;

       if nivel <> dmGeral.CAD_CD_C_HFG.FieldByName('NIVEL').AsString then
         begin
           nivel := dmGeral.CAD_CD_C_HFG.FieldByName('NIVEL').AsString;
           dmGeral.CAD_CD_C_HFG.Next;
         end
       else
         begin
           ShowMessage('Há niveis repetidos.');
           exit;
         end;
     end;


   if dmGeral.CAD_CD_C_HFG.ApplyUpdates(0) = 0 then
     begin
         ShowMessage('Gravação realizada com sucesso.');
     end
   else
     begin
        ShowMessage('Falha no processo de gravação.');
     end;

    dmGeral.CAD_CD_C_HFG.Edit;
end;

procedure TCAD_FM_C_HFG.Carregar;
var
  codFormaPag:String;
  SMPrincipal : TSMClient;
  id_controle:Integer;
begin

      codFormaPag := '';
      while not dmGeral.CAD_CD_C_HFG.EOF do
        begin
          if codFormaPag = '' then
            begin
              codFormaPag :=
              codFormaPag +''''+dmGeral.CAD_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString+'''';
            end
          else
            begin
              codFormaPag :=
              codFormaPag + ',' +''''+dmGeral.CAD_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsString+'''';
            end;

          dmGeral.CAD_CD_C_HFG.Next;
        end;

      dmGeral.BusFormaPgtos(9,codFormaPag);

      if not dmGeral.BUS_CD_C_FPG.IsEmpty then
        begin
          try
            SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
            id_controle := SMPrincipal.enChaveNItens('CAD_TB_C_HFG',
                                            dmGeral.BUS_CD_C_FPG.RecordCount);
            while not dmGeral.BUS_CD_C_FPG.EOF do
              begin
                dmGeral.CAD_CD_C_HFG.Append;
                dmGeral.CAD_CD_C_HFG.FieldByName('ID_CONTROLE').AsInteger :=
                                    id_controle;

                dmGeral.CAD_CD_C_HFG.FieldByName('ID_FORMA_PAG').AsInteger :=
                       dmGeral.BUS_CD_C_FPG.FieldByName('ID_FORMA_PAG').AsInteger ;

                dmGeral.CAD_CD_C_HFG.FieldByName('INT_NOMEFPG').AsString :=
                       dmGeral.BUS_CD_C_FPG.FieldByName('DESCRICAO').AsString;

                dmGeral.BUS_CD_C_FPG.Next;
                inc(id_controle);
              end;
          finally
            FreeAndNil(SMPrincipal);
          end;
        end;


    if not dmGeral.CAD_CD_C_HFG.IsEmpty then
      begin
        btnSalvar.Enabled := true;
        dmGeral.CAD_CD_C_HFG.First;
        dmGeral.CAD_CD_C_HFG.Edit;
      end
    else
      begin
         btnSalvar.Enabled := false;
      end;

end;

end.
