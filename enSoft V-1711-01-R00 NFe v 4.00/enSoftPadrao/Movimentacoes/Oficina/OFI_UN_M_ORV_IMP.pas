unit OFI_UN_M_ORV_IMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,frxClass, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

type
  TOFI_FM_M_ORV_IMP = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    btnSair: TcxButton;
    btnImprimir: TcxButton;
    chbVlrPecas: TCheckBox;
    chbVlrServicos: TCheckBox;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_ORV_IMP: TOFI_FM_M_ORV_IMP;

implementation

{$R *.dfm}

uses OFI_UN_M_ORV, uDmGeral, enConstantes;

procedure TOFI_FM_M_ORV_IMP.btnImprimirClick(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
begin
  inherited;
  if not dmGeral.OFI_CD_M_ORV.IsEmpty then
      begin
        codigo := dmGeral.OFI_CD_M_ORVid_ordem.text;

        dmGeral.OFI_CD_R_ORV.Close;
        dmGeral.OFI_CD_R_ORV.Data :=
        dmGeral.OFI_CD_R_ORV.DataRequest(VarArrayOf([codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.Variables['ft_tanque'] :=  QuotedStr('');
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 0) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.Variables['ft_tanque'] :=  QuotedStr('Vazio');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 1) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.Variables['ft_tanque'] :=  QuotedStr('1/4');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 2) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.Variables['ft_tanque'] :=  QuotedStr('1/2');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 3) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.Variables['ft_tanque'] :=  QuotedStr('3/4');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 4) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.Variables['ft_tanque'] :=  QuotedStr('Cheio');
            end;


         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblUnitPec')).Visible := chbVlrPecas.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblDescPec')).Visible := chbVlrPecas.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblTotPec')).Visible  := chbVlrPecas.Checked;

         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpUnitPec')).Visible := chbVlrPecas.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpDescPec')).Visible := chbVlrPecas.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpTotPec')).Visible  := chbVlrPecas.Checked;


         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblUnitPec2')).Visible := chbVlrPecas.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblDescPec2')).Visible := chbVlrPecas.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblTotPec2')).Visible  := chbVlrPecas.Checked;

         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpUnitPec2')).Visible := chbVlrPecas.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpDescPec2')).Visible := chbVlrPecas.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpTotPec2')).Visible  := chbVlrPecas.Checked;





         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblUnitSer')).Visible := chbVlrServicos.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblDescSer')).Visible := chbVlrServicos.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblTotSer')).Visible  := chbVlrServicos.Checked;

         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpUnitSer')).Visible := chbVlrServicos.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpDescSer')).Visible := chbVlrServicos.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpTotSer')).Visible  := chbVlrServicos.Checked;


         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblUnitSer2')).Visible := chbVlrServicos.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblDescSer2')).Visible := chbVlrServicos.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('lblTotSer2')).Visible  := chbVlrServicos.Checked;

         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpUnitSer2')).Visible := chbVlrServicos.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpDescSer2')).Visible := chbVlrServicos.Checked;
         TfrxMemoView(OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.FindObject('cmpTotSer2')).Visible  := chbVlrServicos.Checked;




        dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_ORV.Name,xCodLme,xRevLme,nil);
        OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.Variables['Opcoes'] :=  QuotedStr('');
        OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.PrepareReport();
        OFI_FM_M_ORV.OFI_FR_M_ORV_SMP.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro encontrado!');
        exit;
      end;
end;

procedure TOFI_FM_M_ORV_IMP.btnSairClick(Sender: TObject);
begin
   Close;
end;

end.
