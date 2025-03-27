unit OFI_UN_M_ORV_ESP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, cxButtons,
  Vcl.ExtCtrls,frxClass, Vcl.Buttons;

type
  TOFI_FM_M_ORV_ESP = class(TPAD_FM_X_FRM)
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
  OFI_FM_M_ORV_ESP: TOFI_FM_M_ORV_ESP;

implementation

{$R *.dfm}

uses uDmGeral, OFI_UN_M_ORV, enConstantes;

procedure TOFI_FM_M_ORV_ESP.btnImprimir1Click(Sender: TObject);
var
  codigo, PathImg: string;
  LogoEmpresa: TfrxPictureView;
  data:TDateTime;
begin
  inherited;
   try
     dmGeral.OFI_CD_M_ORV.Filtered := true;
     dmGeral.OFI_CD_M_ORV.Filter := 'INT_SELECAO=TRUE';
   finally

   end;
   codigo := '';

   if not dmGeral.OFI_CD_M_ORV.IsEmpty then
      begin
        //codigo := dmGeral.OFI_CD_M_ORVid_ordem.text;

        dmGeral.OFI_CD_M_ORV.First;
        while not dmGeral.OFI_CD_M_ORV.Eof do
          begin
            if codigo <> '' then
               begin
                 codigo :=
                 codigo + ',' +''''+trim(dmGeral.OFI_CD_M_ORVid_ordem.text)+'''';
               end;
            if codigo = '' then
               begin
                 codigo :=
                 codigo +''''+ trim(dmGeral.OFI_CD_M_ORVid_ordem.text)+'''';
               end;
            dmGeral.OFI_CD_M_ORV.Next;
          end;

        dmGeral.OFI_CD_R_ORV.Close;
        dmGeral.OFI_CD_R_ORV.Data :=
        dmGeral.OFI_CD_R_ORV.DataRequest(VarArrayOf([codigo]));

        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
        if FileExists(PathImg) then
           begin
              LogoEmpresa := TfrxPictureView(OFI_FM_M_ORV.OFI_FR_M_ORV.FindObject('imgEmpresa1'));
              if Assigned(LogoEmpresa) then
                 LogoEmpresa.Picture.LoadFromFile(PathImg);
           end;

        OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('');
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 0) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('Vazio');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 1) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('1/4');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 2) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('1/2');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 3) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('3/4');
            end;
        if (dmGeral.OFI_CD_R_ORV.FieldByName('tanque_combus').AsInteger = 4) then
            begin
              OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_tanque'] :=  QuotedStr('Cheio');
            end;

        dmGeral.BusCliente(0,dmGeral.OFI_CD_R_ORV.FieldByName('ID_CLIENTE').AsString);

        OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_profissao'] :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('PROFISSAO').AsString);
        OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_email'] :=  QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('email').AsString);

        if length(OFI_FM_M_ORV.RemoveCaracter(dmGeral.BUS_CD_C_CLIdoc_cnpj_cpf.AsString,['/','.','-'])) = 14 then
          OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_ie_identidade'] := QuotedStr(dmGeral.BUS_CD_C_CLI.FieldByName('doc_ie_identidade').AsString)
        else
          OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_ie_identidade'] := QuotedStr('ISENTO');

        dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_ORV.Name,xCodLme,xRevLme,nil);
        OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
        OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['Opcoes'] :=  QuotedStr('');
        OFI_FM_M_ORV.OFI_FR_M_ORV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
        OFI_FM_M_ORV.OFI_FR_M_ORV.PrepareReport();
        OFI_FM_M_ORV.OFI_FR_M_ORV.ShowReport();
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

procedure TOFI_FM_M_ORV_ESP.btnSair1Click(Sender: TObject);
begin
  //inherited;
   Close;
end;

procedure TOFI_FM_M_ORV_ESP.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TOFI_FM_M_ORV_ESP.FormShow(Sender: TObject);
begin
 // inherited;

end;

end.
