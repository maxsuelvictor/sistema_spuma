unit OFI_UN_M_RQV_IMP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_FRM, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ImgList, Data.DB, vcl.wwdatsrc, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, cxButtons,
  Vcl.ExtCtrls,frxClass, Vcl.Buttons;

type
  TOFI_FM_M_RQV_IMP = class(TPAD_FM_X_FRM)
    wwDBGrid1: TwwDBGrid;
    btnImprimir1: TBitBtn;
    btnSair1: TBitBtn;
    cbbTipoImpressao: TComboBox;
    lblTipoPapel: TLabel;
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
  OFI_FM_M_RQV_IMP: TOFI_FM_M_RQV_IMP;

implementation

{$R *.dfm}

uses uDmGeral, OFI_UN_M_RQV, enConstantes, OFI_UN_M_RQT;

procedure TOFI_FM_M_RQV_IMP.btnImprimir1Click(Sender: TObject);
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

        if dmGeral.OFI_CD_M_ORVtipo_ordem.Text = '1' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(OFI_FM_M_RQV.OFI_FR_M_RQV_A4.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            if (cbbTipoImpressao.Items[cbbTipoImpressao.ItemIndex] = 'Tamanho A4') then
              begin
                dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_RQV.Name,xCodLme,xRevLme,nil);
                OFI_FM_M_RQV.OFI_FR_M_RQV_A4.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                OFI_FM_M_RQV.OFI_FR_M_RQV_A4.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                OFI_FM_M_RQV.OFI_FR_M_RQV_A4.Variables['ft_dataSistema'] :=  QuotedStr(FormatDateTime('dd/mm/yyyy',xDataSis));
                OFI_FM_M_RQV.OFI_FR_M_RQV_A4.Variables['ft_horarioSistema'] :=  QuotedStr(FormatDateTime('hh:nn',xHoraSis));
                OFI_FM_M_RQV.OFI_FR_M_RQV_A4.Variables['ft_usuario'] :=  QuotedStr('');
                dmGeral.BusFuncionario2(0,xFuncionario.ToString(xFuncionario));
                if (not dmGeral.BUS_CD_C_FU2.IsEmpty) then
                  begin
                    OFI_FM_M_RQV.OFI_FR_M_RQV_A4.Variables['ft_usuario'] := QuotedStr(dmGeral.BUS_CD_C_FU2.FieldByName('NOME').AsString);
                  end;
                OFI_FM_M_RQV.OFI_FR_M_RQV_A4.Variables['Opcoes'] :=  QuotedStr('');
                OFI_FM_M_RQV.OFI_FR_M_RQV_A4.PrepareReport();
                OFI_FM_M_RQV.OFI_FR_M_RQV_A4.ShowReport();
              end
            else if (cbbTipoImpressao.Items[cbbTipoImpressao.ItemIndex] = 'Largura 10.0mm') then
              begin
                dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_RQV.Name,xCodLme,xRevLme,nil);
                OFI_FM_M_RQV.OFI_FR_M_RQV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                OFI_FM_M_RQV.OFI_FR_M_RQV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                OFI_FM_M_RQV.OFI_FR_M_RQV.Variables['ft_dataSistema'] :=  QuotedStr(FormatDateTime('dd/mm/yyyy',xDataSis));
                OFI_FM_M_RQV.OFI_FR_M_RQV.Variables['ft_horarioSistema'] :=  QuotedStr(FormatDateTime('hh:nn',xHoraSis));
                OFI_FM_M_RQV.OFI_FR_M_RQV.Variables['ft_usuario'] :=  QuotedStr('');
                dmGeral.BusFuncionario2(0,xFuncionario.ToString(xFuncionario));
                if (not dmGeral.BUS_CD_C_FU2.IsEmpty) then
                  begin
                    OFI_FM_M_RQV.OFI_FR_M_RQV.Variables['ft_usuario'] := QuotedStr(dmGeral.BUS_CD_C_FU2.FieldByName('NOME').AsString);
                  end;
                OFI_FM_M_RQV.OFI_FR_M_RQV.Variables['Opcoes'] :=  QuotedStr('');
                OFI_FM_M_RQV.OFI_FR_M_RQV.PrepareReport();
                OFI_FM_M_RQV.OFI_FR_M_RQV.ShowReport();
              end
            else if (cbbTipoImpressao.Items[cbbTipoImpressao.ItemIndex] = 'Largura 7.9mm') then
              begin
                dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_RQV.Name,xCodLme,xRevLme,nil);
                OFI_FM_M_RQV.OFI_FR_M_RQV_8MM.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                OFI_FM_M_RQV.OFI_FR_M_RQV_8MM.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                OFI_FM_M_RQV.OFI_FR_M_RQV_8MM.Variables['ft_dataSistema'] :=  QuotedStr(FormatDateTime('dd/mm/yyyy',xDataSis));
                OFI_FM_M_RQV.OFI_FR_M_RQV_8MM.Variables['ft_horarioSistema'] :=  QuotedStr(FormatDateTime('hh:nn',xHoraSis));
                OFI_FM_M_RQV.OFI_FR_M_RQV_8MM.Variables['ft_usuario'] :=  QuotedStr('');
                dmGeral.BusFuncionario2(0,xFuncionario.ToString(xFuncionario));
                if (not dmGeral.BUS_CD_C_FU2.IsEmpty) then
                  begin
                    OFI_FM_M_RQV.OFI_FR_M_RQV_8MM.Variables['ft_usuario'] := QuotedStr(dmGeral.BUS_CD_C_FU2.FieldByName('NOME').AsString);
                  end;
                OFI_FM_M_RQV.OFI_FR_M_RQV_8MM.Variables['Opcoes'] :=  QuotedStr('');
                OFI_FM_M_RQV.OFI_FR_M_RQV_8MM.PrepareReport();
                OFI_FM_M_RQV.OFI_FR_M_RQV_8MM.ShowReport();
              end;
          end
        else
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(OFI_FM_M_RQT.OFI_FR_M_RQV_A4.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            if MessageDlg('Imprimir em papel A4 ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_RQT.Name,xCodLme,xRevLme,nil);
                OFI_FM_M_RQT.OFI_FR_M_RQV_A4.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                OFI_FM_M_RQT.OFI_FR_M_RQV_A4.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                OFI_FM_M_RQT.OFI_FR_M_RQV_A4.Variables['ft_dataSistema'] :=  QuotedStr(FormatDateTime('dd/mm/yyyy',xDataSis));
                OFI_FM_M_RQT.OFI_FR_M_RQV_A4.Variables['ft_horarioSistema'] :=  QuotedStr(FormatDateTime('hh:nn',xHoraSis));
                OFI_FM_M_RQT.OFI_FR_M_RQV_A4.Variables['ft_usuario'] :=  QuotedStr('');
                dmGeral.BusFuncionario2(0,xFuncionario.ToString(xFuncionario));
                if (not dmGeral.BUS_CD_C_FU2.IsEmpty) then
                  begin
                    OFI_FM_M_RQT.OFI_FR_M_RQV_A4.Variables['ft_usuario'] := QuotedStr(dmGeral.BUS_CD_C_FU2.FieldByName('NOME').AsString);
                  end;
                OFI_FM_M_RQT.OFI_FR_M_RQV_A4.Variables['Opcoes'] :=  QuotedStr('');
                OFI_FM_M_RQT.OFI_FR_M_RQV_A4.PrepareReport();
                OFI_FM_M_RQT.OFI_FR_M_RQV_A4.ShowReport();
              end
            else
              begin
                dmGeral.BusCodigoRevListMestre(true,false,OFI_FM_M_RQT.Name,xCodLme,xRevLme,nil);
                OFI_FM_M_RQT.OFI_FR_M_RQV.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
                OFI_FM_M_RQT.OFI_FR_M_RQV.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                OFI_FM_M_RQT.OFI_FR_M_RQV.Variables['ft_dataSistema'] :=  QuotedStr(FormatDateTime('dd/mm/yyyy',xDataSis));
                OFI_FM_M_RQT.OFI_FR_M_RQV.Variables['ft_horarioSistema'] :=  QuotedStr(FormatDateTime('hh:nn',xHoraSis));
                OFI_FM_M_RQT.OFI_FR_M_RQV.Variables['ft_usuario'] :=  QuotedStr('');
                dmGeral.BusFuncionario2(0,xFuncionario.ToString(xFuncionario));
                if (not dmGeral.BUS_CD_C_FU2.IsEmpty) then
                  begin
                    OFI_FM_M_RQT.OFI_FR_M_RQV.Variables['ft_usuario'] := QuotedStr(dmGeral.BUS_CD_C_FU2.FieldByName('NOME').AsString);
                  end;
                OFI_FM_M_RQT.OFI_FR_M_RQV.Variables['Opcoes'] :=  QuotedStr('');
                OFI_FM_M_RQT.OFI_FR_M_RQV.PrepareReport();
                OFI_FM_M_RQT.OFI_FR_M_RQV.ShowReport();
              end;

          end;
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

procedure TOFI_FM_M_RQV_IMP.btnSair1Click(Sender: TObject);
begin
  //inherited;
   Close;
end;

procedure TOFI_FM_M_RQV_IMP.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TOFI_FM_M_RQV_IMP.FormShow(Sender: TObject);
begin
 // inherited;
    if (dmGeral.OFI_CD_M_ORV.FieldByName('TIPO_ORDEM').AsInteger <> 1) then
      begin
        cbbTipoImpressao.Visible := false;
        lblTipoPapel.Visible := false;
      end;
end;

end.
