unit FAT_UN_M_PED_MOT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, datasnap.DBClient,
  Vcl.ComCtrls, Data.DB, Vcl.DBCtrls, Vcl.Mask, vcl.Wwdbedit,
  vcl.Wwdbdatetimepicker, JvExMask, JvToolEdit, JvDBControls;

type
  TFAT_FM_M_PED_MOT = class(TForm)
    Button1: TButton;
    pcDadosImp: TPageControl;
    tsDadosImp: TTabSheet;
    tsMotivo: TTabSheet;
    Label44: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    txtMotivo: TMemo;
    txtObservacao: TwwDBEdit;
    txtItemDescricao: TDBText;
    dsPedido: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txtDtaEntrega: TJvDBDateEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    DBText1: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    wwDBEdit2: TwwDBEdit;
    DBText2: TDBText;
    JvDBDateEdit2: TJvDBDateEdit;
    Label11: TLabel;
    Label12: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    txtSegMotivo: TDBMemo;
    Label13: TLabel;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAT_FM_M_PED_MOT: TFAT_FM_M_PED_MOT;
  cdsPedido: TClientDataSet;
  xFuncPedMot: integer;

implementation

{$R *.dfm}

uses uDmGeral;


procedure TFAT_FM_M_PED_MOT.Button1Click(Sender: TObject);
begin
   if pcDadosImp.ActivePage = tsMotivo then
     begin
       txtMotivo.setfocus;
     end;


  if (pcDadosImp.ActivePage = tsMotivo) and  (trim(txtMotivo.text) = '') then
     begin
       ShowMessage('É preciso digitar o motivo da re-impressão.');
       txtMotivo.setfocus;
       exit;
     end;

  if (pcDadosImp.ActivePage = tsMotivo) and (length(trim(txtMotivo.text)) < 15) then
     begin
       ShowMessage('O texto não pode ser menor que 15 letras.');
       txtMotivo.setfocus;
       exit;
     end;

  if (pcDadosImp.ActivePage = tsMotivo) then
     begin
        cdsPedido.edit;

        if trim(cdsPedido.FieldByName('motivo_seg_impressao').Text) = '' then
           begin
             cdsPedido.FieldByName('dta_seg_impressao').AsDateTime := date;
             cdsPedido.FieldByName('hor_seg_impressao').AsDateTime := time;
             cdsPedido.FieldByName('id_func_seg_impressao').AsInteger := xFuncPedMot;

             cdsPedido.FieldByName('motivo_seg_impressao').Text :=  txtMotivo.Text;
           end
        else
           begin
             cdsPedido.FieldByName('dta_ter_impressao').AsDateTime := date;
             cdsPedido.FieldByName('hor_ter_impressao').AsDateTime := time;
             cdsPedido.FieldByName('id_func_ter_impressao').AsInteger := xFuncPedMot;

             if trim(cdsPedido.FieldByName('motivo_ter_impressao').Text) = '' then
                begin
                  cdsPedido.FieldByName('motivo_ter_impressao').Text := txtMotivo.Text;
                end
             else
                begin
                  cdsPedido.FieldByName('motivo_ter_impressao').Text :=
                    cdsPedido.FieldByName('motivo_ter_impressao').Text + ';  ' +
                       DateToStr(date) +'-'+TimeToStr(time) +'-'+ txtMotivo.Text;
                end;
           end;
        // Comentado por Maxsuel Victor, 06/12/2024
        // Não há necessidade desse código abaixo, devido o CDS ser somente o BUS_CD_M_PED que é passado para o cdsPedido.
        {if dmGeral.BUS_CD_C_CPG.FieldByName('tipo_pagamento').AsInteger = 2 then // Sem pagamentos
            begin
              dmGeral.FAT_CD_M_PED_TIT.BeforePost := dmGeral.FAT_CD_M_PED_TITBeforePost;
              if not (dmGeral.FAT_CD_M_PED_TIT.IsEmpty) then
                 dmGeral.FAT_CD_M_PED_TIT.delete;
            end;}
        try
           cdsPedido.ApplyUpdates(0);
        except
           on e: Exception do
              begin
                ShowMessage('Erro: ' + e.Message);
                cdsPedido.Close;
                abort;
              end;
        end;

     end;
  close;
end;

procedure TFAT_FM_M_PED_MOT.FormShow(Sender: TObject);
begin
  txtMotivo.Text := '';

  if pcDadosImp.ActivePage = tsMotivo then
     begin
       txtMotivo.setfocus;
     end;
end;

end.
