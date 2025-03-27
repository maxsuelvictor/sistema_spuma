unit PCP_UN_M_OPR_OPP_ALT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExMask, JvToolEdit, JvDBControls,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, vcl.wwdatsrc, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.DBCtrls, Vcl.Mask, vcl.Wwdbedit, enFunc;

type
  TPCP_FM_M_OPR_OPP_ALT = class(TForm)
    gbInformacoes: TGroupBox;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    txtInfoAlt: TDBMemo;
    wwDBGrid1: TwwDBGrid;
    dsOprOppSop: TwwDataSource;
    wwDBEdit8: TwwDBEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    btnSairAlt: TBitBtn;
    txtQtdAProduzir: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    txtQtdUtilizOprExt: TwwDBEdit;
    Label6: TLabel;
    txtQtdUtilizOpr: TwwDBEdit;
    Label7: TLabel;
    txtQtdSldDisp: TwwDBEdit;
    Label13: TLabel;
    txtMotivoAlt: TwwDBEdit;
    lblDataEmissao: TLabel;
    dpkDataEmissao: TJvDBDateEdit;
    Label8: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    dsoOpp: TwwDataSource;
    Button1: TButton;
    procedure btnSairAltClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure txtQtdAProduzirExit(Sender: TObject);
    procedure txtQtdUtilizOprExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PCP_FM_M_OPR_OPP_ALT: TPCP_FM_M_OPR_OPP_ALT;

implementation

{$R *.dfm}

uses uDmGeral, PCP_RN_M_OPR;

procedure TPCP_FM_M_OPR_OPP_ALT.BitBtn1Click(Sender: TObject);
var
  IdOpr: String;
begin

  IdOpr := dmGeral.PCP_CD_M_OPR.FieldByName('id_opr').AsString;

  if Dc_MessageDlgCheck('Deseja salvar?', mtConfirmation, [mbYes, mbNo],0, mrYes, true, false,'', nil) <> 7 then
     begin

       if dmGeral.PCP_CD_M_OPR_OPP.State in [dsEdit] then
          begin

            dmGeral.PCP_CD_M_OPR_OPP.FieldByName('reg_alt').AsBoolean     := true;
            dmGeral.PCP_CD_M_OPR_OPP.FieldByName('id_resp_alt').AsInteger := xFuncionario;
            dmGeral.PCP_CD_M_OPR_OPP.FieldByName('dta_alt').AsDateTime    := xDataSis;
            dmGeral.PCP_CD_M_OPR_OPP.FieldByName('hora_alt').AsDateTime   := xHoraSis;
            dmGeral.PCP_CD_M_OPR_OPP.Post;
          end;
      try
       if dmGeral.PCP_CD_M_OPR.ApplyUpdates(0) = 0 then
          begin
            dmGeral.PCP_CD_M_OPR.Close;
            dmGeral.PCP_CD_M_OPR.Data :=
            dmGeral.PCP_CD_M_OPR.DataRequest(
                    VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, IdOpr]));
            dmGeral.PCP_CD_M_OPR.Edit;

            btnSairAltClick(sender);
          end;
       except
          on e: exception do
             begin
               Showmessage(e.Message);
             end;
       end;
     end
  else
     begin
       dmGeral.PCP_CD_M_OPR_OPP.Cancel;
       dmGeral.PCP_CD_M_OPR_OPP.Edit;
     end;
end;

procedure TPCP_FM_M_OPR_OPP_ALT.btnSairAltClick(Sender: TObject);
begin
  close;
end;

procedure TPCP_FM_M_OPR_OPP_ALT.Button1Click(Sender: TObject);
var
  retorno: Integer;
  IdOpr,IdOprOpp:String;
  Motivo: String;
begin

  IdOpr := dmGeral.PCP_CD_M_OPR_OPP.FieldByName('id_opr').AsString;
  IdOprOpp := dmGeral.PCP_CD_M_OPR_OPP.FieldByName('id_opr_opp').AsString;

  if Dc_MessageDlgCheck('Deseja salvar?', mtConfirmation, [mbYes, mbNo],0, mrYes, true, false,'', nil) <> 7 then
     begin
        Motivo := dmGeral.PCP_CD_M_OPR_OPP.FieldByName('motivo_alt').AsString;
        dmGeral.PCP_CD_M_OPR_OPP.FieldByName('motivo_alt').AsString := '';

        dmGeral.PCP_CD_M_OPR_OPP.FieldByName('reg_alt').AsBoolean     := true;
        dmGeral.PCP_CD_M_OPR_OPP.FieldByName('id_resp_alt').AsInteger := xFuncionario;
        dmGeral.PCP_CD_M_OPR_OPP.FieldByName('dta_alt').AsDateTime    := xDataSis;
        dmGeral.PCP_CD_M_OPR_OPP.FieldByName('hora_alt').AsDateTime   := xHoraSis;
        dmGeral.BusFuncionario(0,IntToStr(xFuncionario));
        txtInfoAlt.Lines.Add('Por: ' + copy(inttostr(xFuncionario)+' - '+dmGeral.BUS_CD_C_FUN.FieldByName('nome').AsString,1,20) +
                             ' em: ' + dmGeral.PCP_CD_M_OPR_OPP.FieldByName('dta_alt').AsString + ',' + dmGeral.PCP_CD_M_OPR_OPP.FieldByName('hora_alt').AsString +
                             '; Qtde a produzir-V>' + VarToStr(dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_a_produzir').OldValue) +'<-N>'+
                                                  dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_a_produzir').AsString+'<; '+
                             'Qtde atender p/ O.P-V>' + VarToStr(dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_atender_opr').OldValue) +'<-N>'+
                                                  dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_atender_opr').AsString+'<; '+
                             ' Motivo: ' + Motivo);
        dmGeral.PCP_CD_M_OPR_OPP.Post;

        dmGeral.PCP_CD_M_OPR.Post;
        retorno := dmGeral.PCP_CD_M_OPR.ApplyUpdates(0);

        if retorno = 0 then
           begin
             dmGeral.PCP_CD_M_OPR.Close;
             dmGeral.PCP_CD_M_OPR.Data :=
             dmGeral.PCP_CD_M_OPR.DataRequest(
                     VarArrayOf([0, dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, IdOpr ]));
             //dmGeral.PCP_CD_M_OPR.Edit;

             dmGeral.PCP_CD_M_OPR_OPP.Locate('id_opr_opp', IdOprOpp,[]);
             close;
           end;
     end;
end;

procedure TPCP_FM_M_OPR_OPP_ALT.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TPCP_FM_M_OPR_OPP_ALT.FormShow(Sender: TObject);
begin
  dmGeral.PCP_CD_M_OPR_OPP.Edit;
  dmGeral.PCP_CD_M_OPR_OPP.FieldByName('dta_alt').AsDatetime := xDataSis;
  txtQtdAProduzir.SetFocus;
end;

procedure TPCP_FM_M_OPR_OPP_ALT.txtQtdAProduzirExit(Sender: TObject);
begin
  if not PCP_RN_M_OPR.PcpTesValQtdeOpr(dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_a_produzir').AsCurrency) then
     begin
       txtQtdAProduzir.SetFocus;
       abort;
     end;
end;

procedure TPCP_FM_M_OPR_OPP_ALT.txtQtdUtilizOprExit(Sender: TObject);
begin
  if not PCP_RN_M_OPR.PcpTesValQtdeOpr(dmGeral.PCP_CD_M_OPR_OPP.FieldByName('qtde_atender_opr').AsCurrency) then
     begin
       txtQtdUtilizOpr.SetFocus;
       abort;
     end;
end;

end.
