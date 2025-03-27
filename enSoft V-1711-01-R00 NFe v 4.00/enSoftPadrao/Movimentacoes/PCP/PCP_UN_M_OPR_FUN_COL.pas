unit PCP_UN_M_OPR_FUN_COL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  vcl.wwdatsrc, Datasnap.DBClient, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,frxClass,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  Vcl.CheckLst, frxDBSet;

type
  TPCP_FM_M_OPR_FUN_COL = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlPrincipal: TPanel;
    pnlDados: TPanel;
    btnSair: TcxButton;
    btnImprimir: TcxButton;
    ckFuncionario: TCheckListBox;
    txtQtde: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    frxEtiquetas: TfrxReport;
    DBEtiquetas: TfrxDBDataset;
    cdsEtiquetas: TClientDataSet;
    cdsEtiquetascodigo: TIntegerField;
    cdsEtiquetasdescricao: TStringField;
    frxReport1: TfrxReport;
    cdsEtiquetascodigo_limpo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
     codOpr:String;
  end;

var
  PCP_FM_M_OPR_FUN_COL: TPCP_FM_M_OPR_FUN_COL;


implementation

{$R *.dfm}

uses uDmGeral, PCP_UN_M_OPR, enConstantes, enFunc;

procedure TPCP_FM_M_OPR_FUN_COL.btnImprimirClick(Sender: TObject);
var
  i,z, qtde: integer;
  ExisteItemSel: boolean;


begin
  inherited;


  if ckFuncionario.Items.Count = 0 then
     begin
       ShowMessage('Não há funcionários na lista!');
       exit;
     end;

  if (trim(txtQtde.text) = '') or (txtQtde.text = '0') then
     begin
       ShowMessage('Qtde de etiquetas não foi informada!');
       exit;
     end;

  cdsEtiquetas.EmptyDataSet;

  ExisteItemSel := false;

  for i := 0 to ckFuncionario.Items.Count - 1 do
     begin
       if ckFuncionario.Checked[i] = true then
          begin
            ExisteItemSel := true;

            z:= 0;
            qtde := strtoint(txtQtde.Text);
            for z := 0 to qtde - 1 do
                begin
                  cdsEtiquetas.Insert;
                  // 99 abaixo, é pra indicar que a entrada vai ser via pistola
                  cdsEtiquetas.FieldByName('codigo').AsString := '99'+copy(ckFuncionario.Items[i],1,3);
                  cdsEtiquetas.FieldByName('codigo_limpo').AsString := copy(ckFuncionario.Items[i],1,3);
                  cdsEtiquetas.Post;
                end;

          end;
     end;

  if ExisteItemSel = false then
     begin
       ShowMessage('Nenhum funcionário foi selecionado!');
       exit;
     end;






  frxEtiquetas.PrepareReport();
  frxEtiquetas.ShowReport();

  {dmGeral.PCP_CD_M_OPR.Close;
         dmGeral.PCP_CD_M_OPR.Data :=
         dmGeral.PCP_CD_M_OPR.DataRequest(
                  VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,
                              codOpr]));
  if not dmGeral.PCP_CD_M_OPR.IsEmpty then
    begin

      dmGeral.PCP_CD_M_OPR_PED.First;
      while not dmGeral.PCP_CD_M_OPR_PED.eof do
         begin
            if Ped_Sel <> '' then
               begin
                 Ped_Sel :=
                 Ped_Sel + ',' +''''+dmGeral.PCP_CD_M_OPR_PED.FieldByName('ID_PEDIDO').AsString+'''';
               end;
            if Ped_Sel = '' then
               begin
                 Ped_Sel :=
                 Ped_Sel +''''+ dmGeral.PCP_CD_M_OPR_PED.FieldByName('ID_PEDIDO').AsString+'''';
               end;
           dmGeral.PCP_CD_M_OPR_PED.Next;
         end;
      dmGeral.PCP_CD_M_OPR_PED.First;

      TotLiq  := 0;
      Cubagem := 0;

      dmGeral.BUS_CD_M_PED.Close;
      dmGeral.BUS_CD_M_PED.Data :=
      dmGeral.BUS_CD_M_PED.DataRequest(
              VarArrayOf([100, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, Ped_Sel]));

      dmGeral.BUS_CD_M_PED.First;
      while not dmGeral.BUS_CD_M_PED.eof do
         begin
           TotLiq  := TotLiq  + dmGeral.BUS_CD_M_PED.FieldByName('vlr_liquido').AsCurrency;
           Cubagem := Cubagem + dmGeral.BUS_CD_M_PED.FieldByName('cubagem').AsCurrency;
           dmGeral.BUS_CD_M_PED.Next;
         end;
      dmGeral.BUS_CD_M_PED.Close;


      try
       codigo := copy(cbbTipoSetor.Items[cbbTipoSetor.ItemIndex],1,pos(' - ',cbbTipoSetor.Items[cbbTipoSetor.ItemIndex])-1);
       dmGeral.PCP_CD_M_OPR_OPS.Filtered := true;
       filtro := '(id_setor='+codigo+')';
       if codigo='1' then
         filtro := filtro + ' and ((int_cod_tipo_rast=1) or (int_cod_tipo_rast=2))';

       dmGeral.PCP_CD_M_OPR_OPS.Filter := filtro;


       if  dmGeral.PCP_CD_M_OPR_OPS.RecordCount >0 then
         begin
            dmgeral.BusSetor(0,codigo);


             if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger=1 then
              begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.Variables['tipo_setor'] := QuotedStr(cbbTipoSetor.Items[cbbTipoSetor.ItemIndex]);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.Variables['ft_CubPed'] := QuotedStr(CurrToStr(Cubagem));
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.PrepareReport();
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_BRD.ShowReport();
              end;


            if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger in [0,3]  {(codigo='3') or (codigo='0')} //then
    {          begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;

                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['ft_CubPed'] := QuotedStr(CurrToStr(Cubagem));

                if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger = 3 then
                  begin
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['cabLote'] := QuotedStr('Lote Bordadeira');
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['cabItem'] := QuotedStr('Faixa');
                  end;
                if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger = 0 then
                  begin
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['cabLote']   := QuotedStr('Lote Espuma');
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['cabItem']   := QuotedStr('Lamina');
                  end;

                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['tipo_setor'] := QuotedStr(cbbTipoSetor.Items[cbbTipoSetor.ItemIndex]);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.PrepareReport();
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_CCR_LMC.ShowReport();
              end;


            if   dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger in [2,4]    {(codigo='4') OR (codigo='2')}  {then
              begin
                PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;

                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.Variables['ft_CubPed'] := QuotedStr(CurrToStr(Cubagem));

                if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger = 2 then
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.Variables['cabItem'] := QuotedStr('Tampo');
                if dmGeral.BUS_CD_C_SET.FieldBYName('tipo').AsInteger = 4 then
                    PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.Variables['cabItem'] := QuotedStr('Faixa');


                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.PrepareReport();
                PCP_FM_M_OPR.PCP_FR_M_OPR_OPS_ALF_CLG.ShowReport();
              end;
        end
      else
        begin
           ShowMessage('Nenhum registro encontrado!');
        end;

      finally
        dmGeral.PCP_CD_M_OPR_OPS.Filtered := false;
      end;

    end
  else
    begin
      ShowMessage('Registro não encontrado');
    end;

  }
end;

procedure TPCP_FM_M_OPR_FUN_COL.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPCP_FM_M_OPR_FUN_COL.FormShow(Sender: TObject);
begin


  dmGeral.BusFuncionario4(11,'');


 //  dmgeral.BUS_CD_C_FU4.Close;
   dmGeral.BUS_CD_C_FU4.First;
   while not dmGeral.BUS_CD_C_FU4.EOF do
     begin
       ckFuncionario.AddItem(StrZero(dmGeral.BUS_CD_C_FU4.FieldByName('id_funcionario').AsInteger,3,0)+' - '+
                             dmGeral.BUS_CD_C_FU4.FieldByName('nome').AsString,nil);

       dmGeral.BUS_CD_C_FU4.Next;
     end;
end;

procedure TPCP_FM_M_OPR_FUN_COL.txtQtdeExit(Sender: TObject);
var
  i: integer;

begin
  if (trim(txtQtde.Text) = '') or (trim(txtQtde.Text) = '0')  then
     begin
       exit;
     end;

  i:= strtoint(txtQtde.Text);

  if (i mod 3 <> 0)  then
     begin
       ShowMessage('Deve-se digitar um número múltiplo de 3.' + #13 +
                   'Exemplo: 6,9,12,15,18,...');
       txtQtde.Text := '';
       txtQtde.SetFocus;
     end;
end;

end.
