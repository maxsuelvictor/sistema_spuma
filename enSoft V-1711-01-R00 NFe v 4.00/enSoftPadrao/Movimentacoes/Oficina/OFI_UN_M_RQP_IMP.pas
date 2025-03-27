unit OFI_UN_M_RQP_IMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, cxButtons,
  Vcl.ExtCtrls,frxClass, Vcl.Buttons;

type
  TOFI_FM_M_RQP_IMP = class(TPAD_FM_X_FRM)
    wwDBGrid1: TwwDBGrid;
    btnImprimir1: TBitBtn;
    btnSair1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimir1Click(Sender: TObject);
    procedure btnSair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OFI_FM_M_RQP_IMP: TOFI_FM_M_RQP_IMP;

implementation

{$R *.dfm}

uses uDmGeral, OFI_UN_M_RQP, enConstantes;

procedure TOFI_FM_M_RQP_IMP.btnImprimir1Click(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
  data:TDateTime;
begin
  inherited;
   try
     dmGeral.OFI_CD_R_RQV.Filtered := true;
     dmGeral.OFI_CD_R_RQV.Filter := 'INT_SELECAO=TRUE';
   finally

   end;

   if not dmGeral.OFI_CD_R_RQV.IsEmpty then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(OFI_FM_M_RQP.OFI_FR_M_RQV.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_RQP.Name,xCodLme,xRevLme,nil);
        OFI_FM_M_RQP.OFI_FR_M_RQV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        OFI_FM_M_RQP.OFI_FR_M_RQV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        OFI_FM_M_RQP.OFI_FR_M_RQV.Variables['ft_dataSistema'] :=  QuotedStr(FormatDateTime('dd/mm/yyyy',xDataSis));
        OFI_FM_M_RQP.OFI_FR_M_RQV.Variables['ft_horarioSistema'] :=  QuotedStr(FormatDateTime('hh:nn',xHoraSis));
        OFI_FM_M_RQP.OFI_FR_M_RQV.Variables['ft_usuario'] :=  QuotedStr('');
        dmGeral.BusFuncionario2(0,xFuncionario.ToString(xFuncionario));
        if (not dmGeral.BUS_CD_C_FU2.IsEmpty) then
          begin
            OFI_FM_M_RQP.OFI_FR_M_RQV.Variables['ft_usuario'] := QuotedStr(dmGeral.BUS_CD_C_FU2.FieldByName('NOME').AsString);
          end;
        OFI_FM_M_RQP.OFI_FR_M_RQV.Variables['Opcoes'] :=  QuotedStr('');
        OFI_FM_M_RQP.OFI_FR_M_RQV.PrepareReport();
        OFI_FM_M_RQP.OFI_FR_M_RQV.ShowReport();
      end
   else
      begin
        ShowMessage('Nenhum registro selecionado!');
      end;

   try
     dmGeral.OFI_CD_R_RQV.Filtered := false;
   finally

   end;
end;

procedure TOFI_FM_M_RQP_IMP.btnSair1Click(Sender: TObject);
begin
  //inherited;
   Close;
end;

procedure TOFI_FM_M_RQP_IMP.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TOFI_FM_M_RQP_IMP.FormShow(Sender: TObject);
begin
 // inherited;

end;

end.
