unit FAT_UN_M_CXA_NFE_NCF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Data.DB, vcl.wwdatsrc, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFAT_FM_M_CXA_NFE_NCF = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    dgNota: TwwDBGrid;
    dgItens: TwwDBGrid;
    btnGerarNfe: TcxButton;
    btnSair: TcxButton;
    dso: TwwDataSource;
    dsoIte: TwwDataSource;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGerarNfeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_CXA_NFE_NCF: TFAT_FM_M_CXA_NFE_NCF;

implementation

{$R *.dfm}

uses uDmGeral, PSQ_UN_X_CLI, uProxy;

procedure TFAT_FM_M_CXA_NFE_NCF.btnGerarNfeClick(Sender: TObject);
var
  id_emitente,id_fiscal:integer;
  SMPrincipal: TSMClient;
  retorno: String;
begin
   dmGeral.BUS_CD_M_NFE_2.Close;
          dmGeral.BUS_CD_M_NFE_2.Data :=
          dmGeral.BUS_CD_M_NFE_2.DataRequest(
                 VarArrayOf([105,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                dmGeral.BUS_CD_M_NFE_CXA.FieldByName('id_fiscal').AsString]));
   if not dmGeral.BUS_CD_M_NFE_2.IsEmpty then
      begin
        if pos(dmGeral.BUS_CD_M_NFE_2.FieldByName('NFE_COD_SIT').AsString, '02-04-05')=0 then
          begin
            ShowMessage('Há nota gerada do cupom selecionado de nº controle: '+ dmGeral.BUS_CD_M_NFE_2.FieldByName('ID_FISCAL').AsString);
            exit;
          end;
      end;


   id_emitente :=  dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsInteger;
   if ((dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsString<>'') and
       (dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsInteger =
        dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_EMITENTE').AsInteger)) then
       begin
          ShowMessage('O cliente do cupom fiscal é consumidor final. Deve-se selecionar outro cliente');
          PSQ_FM_X_CLI := TPSQ_FM_X_CLI.Create(Self);
          PSQ_FM_X_CLI.ShowModal;

          if PSQ_FM_X_CLI.BUS_CD_C_CLI.IsEmpty then
            begin
              PSQ_FM_X_CLI.Free;
              exit;
            end;

          if (PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger =
               dmGeral.CAD_CD_C_PAR_CTR.FieldByName('PED_CLIENTE').AsInteger) then
            begin
              ShowMessage('O cliente do cupom fiscal é consumidor final. Deve-se selecionar outro cliente');
              PSQ_FM_X_CLI.Free;
              exit;
            end;
          id_emitente := PSQ_FM_X_CLI.BUS_CD_C_CLI.FieldByName('ID_CLIENTE').AsInteger;
          PSQ_FM_X_CLI.Free;
       end;

  id_fiscal := dmGeral.BUS_CD_M_NFE_CXA.FieldByName('ID_FISCAL').AsInteger;
  SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);
  try
    retorno   := SMPrincipal.enGerarNfe(Id_Fiscal,id_emitente);
    if retorno <> 'OK' then
       begin
         ShowMessage(Retorno);
         abort;
       end
    else
       begin
         ShowMessage('Nota gerada com sucesso.');
       end;
    dmGeral.BUS_CD_M_NFE_CXA.Locate('ID_FISCAL',id_fiscal,[]);

  finally
    FreeAndNil(SMPrincipal);
  end;

end;

procedure TFAT_FM_M_CXA_NFE_NCF.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFAT_FM_M_CXA_NFE_NCF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dmGeral.BUS_CD_M_NFE_2.Close;
end;

procedure TFAT_FM_M_CXA_NFE_NCF.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_CXA_NFE_NCF.FormShow(Sender: TObject);
VAR
  dtaInicial,dtaFinal:String;
begin
  //  pnlDados.top := (pnlPrincipal.Height div 2) - (pnlDados.height div 2);
 //   pnlDados.left := (pnlPrincipal.Width div 2) - (pnlDados.width div 2);
 dmGeral.AtualizarGridItens(dgItens,'int_desc_item',10,4);

 dtaFinal := FormatDateTime('dd/mm/yyyy', xDataSis);
 dtaInicial := FormatDateTime('dd/mm/yyyy', xDataSis-29);

 dmGeral.BUS_CD_M_NFE_CXA.Close;
 dmGeral.BUS_CD_M_NFE_CXA.Data :=
        dmGeral.BUS_CD_M_NFE_CXA.DataRequest(
                 VarArrayOf([104,dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,dtaInicial,dtaFinal]));
end;

end.
