unit CTC_UN_M_PME;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PAD_UN_X_PAD, cxGraphics,DateUtils,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, Data.DB,
  vcl.wwdatsrc, System.Actions, Vcl.ActnList, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, cxButtons,
  Vcl.ExtCtrls, JvDBControls, vcl.wwdblook, JvExMask, JvToolEdit, Vcl.Mask,
  vcl.Wwdbedit, Vcl.DBCtrls, vcl.Wwdotdot, vcl.Wwdbcomb, Datasnap.DBClient;

type
  TCTC_FM_M_PME = class(TPAD_FM_X_PAD)
    lblcodigo: TLabel;
    lblveiculo: TLabel;
    lblEquipamento: TLabel;
    lblobservacao: TLabel;
    lbldata: TLabel;
    txtdescricaoequipamento: TDBText;
    txtcodigo: TwwDBEdit;
    dpkdata: TJvDBDateEdit;
    txtEquipamento: TJvDBComboEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtModelo: TwwDBEdit;
    Label3: TLabel;
    txtUltima: TwwDBEdit;
    Label4: TLabel;
    txtProxima: TwwDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    txtatual: TwwDBEdit;
    txtTipoProxima: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    txtPeriodoRest: TwwDBEdit;
    Label9: TLabel;
    txtPeridoExc: TwwDBEdit;
    Label10: TLabel;
    txtLocal: TwwDBEdit;
    cbbTipoEquip: TwwDBComboBox;
    CTC_CD_M_PME: TClientDataSet;
    cbbTipoPeriodo: TwwDBComboBox;
    CTC_CD_M_PMEid_pme: TIntegerField;
    CTC_CD_M_PMEid_equip: TWideStringField;
    CTC_CD_M_PMEtipo_cont: TWideStringField;
    CTC_CD_M_PMEmodelo: TWideStringField;
    CTC_CD_M_PMEult_manu: TWideStringField;
    CTC_CD_M_PMEatual_manu: TWideStringField;
    CTC_CD_M_PMEprox_manu: TWideStringField;
    CTC_CD_M_PMEtipo_prox_manu: TWideStringField;
    CTC_CD_M_PMEper_restante: TWideStringField;
    CTC_CD_M_PMEper_excedido: TWideStringField;
    CTC_CD_M_PMElocal: TWideStringField;
    CTC_CD_M_PMEobservacao: TWideStringField;
    CTC_CD_M_PMEtipo_equip: TWideStringField;
    CTC_CD_M_PMEdta_ult_dado: TDateField;
    CTC_CD_M_PMEint_equipamento: TWideStringField;
    txtObservacao: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAdicionaExecute(Sender: TObject);
    procedure acAlterarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acGravarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFiltroClick(Sender: TObject);
    procedure CTC_CD_M_PMENewRecord(DataSet: TDataSet);
    procedure CTC_CD_M_PMEBeforePost(DataSet: TDataSet);
    procedure txtUltimaExit(Sender: TObject);
    procedure txtatualExit(Sender: TObject);
    procedure txtProximaExit(Sender: TObject);
    procedure cbbTipoEquipEnter(Sender: TObject);
    procedure cbbTipoPeriodoEnter(Sender: TObject);
    procedure txtEquipamentoButtonClick(Sender: TObject);
    procedure txtEquipamentoExit(Sender: TObject);
    procedure cbbTipoEquipExit(Sender: TObject);
    procedure cbbTipoPeriodoExit(Sender: TObject);
  private
    { Private declarations }
    procedure CalcPeriodo;
  public
    { Public declarations }
  end;

var
  CTC_FM_M_PME: TCTC_FM_M_PME;

implementation

{$R *.dfm}

uses uDmGeral, CTC_RN_M_PME, PSQ_UN_X_VEI, PSQ_UN_X_MEQ;

procedure TCTC_FM_M_PME.acAdicionaExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CTC_CD_M_PME);
  CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('dta_ult_dado').AsDateTime := xDataSis;
  cbbTipoEquip.SetFocus;
end;

procedure TCTC_FM_M_PME.acAlterarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,CTC_CD_M_PME) then
      begin
        inherited;
        CTC_FM_M_PME.CTC_CD_M_PME.FieldByName('dta_ult_dado').AsDateTime := xDataSis;
        cbbTipoEquip.SetFocus;
      end;
end;

procedure TCTC_FM_M_PME.acCancelarExecute(Sender: TObject);
begin
  inherited;
  if Botoes(dso.DataSet, TAction(Sender).Tag,CTC_CD_M_PME) then
     begin
       inherited;
       dbGrid.SetFocus;
       CTC_CD_M_PMEult_manu.EditMask := '';
       CTC_CD_M_PMEatual_manu.EditMask := '';
       CTC_CD_M_PMEprox_manu.EditMask := '';
     end
  else
     begin
       cbbTipoEquip.SetFocus;
     end;
end;

procedure TCTC_FM_M_PME.acExcluirExecute(Sender: TObject);
begin
  inherited;
  Botoes(dso.DataSet, TAction(Sender).Tag,CTC_CD_M_PME);
end;

procedure TCTC_FM_M_PME.acGravarExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := CTC_CD_M_PME.FieldByName('ID_PME').AsString;
  DmGeral.Grava(CTC_CD_M_PME);
  inherited;
  CTC_CD_M_PME.Close;
  CTC_CD_M_PME.Data :=
  CTC_CD_M_PME.DataRequest(
          VarArrayOf([0, codigo]));
  CTC_CD_M_PMEult_manu.EditMask := '';
  CTC_CD_M_PMEatual_manu.EditMask := '';
  CTC_CD_M_PMEprox_manu.EditMask := '';
end;

procedure TCTC_FM_M_PME.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    inherited;
    CTC_CD_M_PME.Close;
    CTC_CD_M_PME.Data :=
    CTC_CD_M_PME.DataRequest(
            VarArrayOf([cbbPesquisa.ItemIndex, txtPesquisa.Text]));
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCTC_FM_M_PME.CalcPeriodo;
var
  valor,horas,minutos:Integer;
begin
  if btnCancelar.Focused or btnGrava.Focused or dbgrid.Focused then
    begin
      exit;
    end;

  if (CTC_CD_M_PMEatual_manu.Text <> '') and (CTC_CD_M_PMEprox_manu.Text <> '') then
    begin
      if cbbTipoPeriodo.ItemIndex = 0 then
        begin
          if CTC_CD_M_PMEprox_manu.AsDateTime > xDataSis then
            begin
              CTC_CD_M_PMEper_restante.AsExtended := CTC_CD_M_PMEprox_manu.AsDateTime - xDataSis;
              CTC_CD_M_PMEper_excedido.AsExtended := 0;
            end
          else
            begin
              CTC_CD_M_PMEper_restante.AsExtended := 0;
              CTC_CD_M_PMEper_excedido.AsExtended := xDataSis - CTC_CD_M_PMEprox_manu.AsDateTime;
            end;
        end;

      if cbbTipoPeriodo.ItemIndex = 1 then
        begin
          valor := (SecondsBetween(CTC_CD_M_PMEprox_manu.AsDateTime,CTC_CD_M_PMEatual_manu.AsDateTime));
          horas := valor div 3600;
          minutos := valor div 60 - horas * 60;

          if CTC_CD_M_PMEprox_manu.AsDateTime > CTC_CD_M_PMEatual_manu.AsDateTime then
            begin
              CTC_CD_M_PMEper_restante.AsString := Format('%0.2d:%0.2d', [horas, minutos]);
              CTC_CD_M_PMEper_excedido.AsString := '0';
            end
          else
            begin
              CTC_CD_M_PMEper_restante.AsString := '0';
              CTC_CD_M_PMEper_excedido.AsString := Format('%0.2d:%0.2d', [horas, minutos]);
            end;
        end;
    end;
end;

procedure TCTC_FM_M_PME.cbbPesquisaChange(Sender: TObject);
begin
  inherited;
  txtPesquisa.Text := '';

  if cbbPesquisa.ItemIndex in [0] then
     begin
       txtPesquisa.NumbersOnly := True;
     end
  else
     begin
       txtPesquisa.NumbersOnly := False;
     end;
end;

procedure TCTC_FM_M_PME.cbbTipoEquipEnter(Sender: TObject);
begin
  inherited;
  cbbTipoEquip.DropDown;
end;

procedure TCTC_FM_M_PME.cbbTipoEquipExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or dbgrid.Focused then
    begin
      exit;
    end;

  //CTC_CD_M_PME.FieldByName('id_equip').AsString := '';
  //txtdescricaoequipamento.Caption := '';

  {if cbbTipoEquip.ItemIndex = 1 then
    lblEquipamento.Caption := 'Veiculo :'
  else
    lblEquipamento.Caption := 'Equipamento :';}
end;

procedure TCTC_FM_M_PME.cbbTipoPeriodoEnter(Sender: TObject);
begin
  inherited;
  cbbTipoPeriodo.DropDown;
end;

procedure TCTC_FM_M_PME.cbbTipoPeriodoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or dbgrid.Focused then
    begin
      exit;
    end;

  if cbbTipoPeriodo.ItemIndex = 0 then
    begin
      CTC_CD_M_PMEult_manu.EditMask := '!99/99/0000;1;_';
      CTC_CD_M_PMEatual_manu.EditMask := '!99/99/0000;1;_';
      CTC_CD_M_PMEprox_manu.EditMask := '!99/99/0000;1;_';
    end;

  if cbbTipoPeriodo.ItemIndex = 1 then
    begin
      CTC_CD_M_PMEult_manu.EditMask := '!90:00;1;_';
      CTC_CD_M_PMEatual_manu.EditMask := '!90:00;1;_';
      CTC_CD_M_PMEprox_manu.EditMask := '!90:00;1;_';
    end;

  if cbbTipoPeriodo.ItemIndex = 2 then
    begin
      CTC_CD_M_PMEult_manu.EditMask := '';
      CTC_CD_M_PMEatual_manu.EditMask := '';
      CTC_CD_M_PMEprox_manu.EditMask := '';
    end;
end;

procedure TCTC_FM_M_PME.CTC_CD_M_PMEBeforePost(DataSet: TDataSet);
begin
  inherited;
  CtcValidaPme;
end;

procedure TCTC_FM_M_PME.CTC_CD_M_PMENewRecord(DataSet: TDataSet);
begin
  inherited;
  CtcNovoPme;
end;

procedure TCTC_FM_M_PME.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CTC_CD_M_PME.Close;
  FreeAndNil(CTC_FM_M_PME);
end;

procedure TCTC_FM_M_PME.FormCreate(Sender: TObject);
begin
  inherited;
  CTC_CD_M_PME.Close;
  CTC_CD_M_PME.Data := CTC_CD_M_PME.DataRequest(VarArrayOf([0,'']));
  CTC_CD_M_PME.Open;
end;

procedure TCTC_FM_M_PME.txtatualExit(Sender: TObject);
begin
  inherited;
  CalcPeriodo;
end;

procedure TCTC_FM_M_PME.txtEquipamentoButtonClick(Sender: TObject);
begin
  inherited;
  if cbbTipoEquip.ItemIndex = 1 then
    begin
      PSQ_FM_X_VEI := TPSQ_FM_X_VEI.Create(Self);
      PSQ_FM_X_VEI.ShowModal;

      if not  PSQ_FM_X_VEI.BUS_CD_C_VEI.IsEmpty then
        begin
          CTC_CD_M_PME.FieldByName('ID_EQUIP').AsString:=
            PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('ID_PLACA').AsString;

          CTC_CD_M_PME.FieldByName('INT_EQUIPAMENTO').AsString:=
            PSQ_FM_X_VEI.BUS_CD_C_VEI.FieldByName('DESCRICAO').AsString;
        end;
      PSQ_FM_X_VEI.Free;
    end
  else
    begin
      PSQ_FM_X_MEQ := TPSQ_FM_X_MEQ.Create(Self);
      PSQ_FM_X_MEQ.ShowModal;
      if not PSQ_FM_X_MEQ.BUS_CD_C_MEQ.IsEmpty then
        begin
          CTC_CD_M_PME.FieldByName('ID_EQUIP').AsString:=
            PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('ID_MEQ').AsString;
          CTC_CD_M_PME.FieldByName('INT_EQUIPAMENTO').AsString:=
            PSQ_FM_X_MEQ.BUS_CD_C_MEQ.FieldByName('DESCRICAO').AsString;
        end;
      PSQ_FM_X_MEQ.Free;
    end;
end;

procedure TCTC_FM_M_PME.txtEquipamentoExit(Sender: TObject);
begin
  inherited;
  if btnCancelar.Focused or btnGrava.Focused or dbgrid.Focused then
     begin
       Exit;
     end;

  if cbbTipoEquip.ItemIndex = 1 then
    begin
      if trim(CTC_CD_M_PME.FieldByName('id_equip').Text) = '' then
        begin
          ShowMessage('O campo "Veículo" não foi preenchido.');
          exit;
        end;

      dmGeral.BusVeiculo(3,trim(CTC_CD_M_PME.FieldByName('id_equip').Text));
      if dmGeral.BUS_CD_C_VEI.IsEmpty then
        begin
          ShowMessage('Veículo não Cadastrado.');
          CTC_CD_M_PME.FieldByName('id_equip').Text := '';
        end
      else
        begin
          CTC_CD_M_PME.FieldByName('int_equipamento').Text := dmGeral.BUS_CD_C_VEIdescricao.Text;
        end;
    end
  else
    begin
      if trim(CTC_CD_M_PME.FieldByName('id_equip').Text) = '' then
        begin
          ShowMessage('O campo "Equipamento" não foi preenchido.');
          exit;
        end;

      dmGeral.BUS_CD_C_MEQ.Close;
      dmGeral.BUS_CD_C_MEQ.Data :=
      dmGeral.BUS_CD_C_MEQ.DataRequest(VarArrayOf([0,trim(CTC_CD_M_PME.FieldByName('id_equip').Text)]));

      if not dmGeral.BUS_CD_C_MEQ.IsEmpty then
        begin
          CTC_CD_M_PME.FieldByName('int_equipamento').AsString := dmGeral.BUS_CD_C_MEQ.FieldByName('DESCRICAO').AsString;
        end
      else
        begin
          ShowMessage('Equipamento não Cadastrado.');
          CTC_CD_M_PME.FieldByName('id_equip').Text := '';
        end;
    end;
end;

procedure TCTC_FM_M_PME.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     begin
       if trim(txtPesquisa.Text) <> '' then
          begin
            btnFiltroClick(Self);
          end;
     end;
end;

procedure TCTC_FM_M_PME.txtProximaExit(Sender: TObject);
begin
  inherited;
  CalcPeriodo;
end;

procedure TCTC_FM_M_PME.txtUltimaExit(Sender: TObject);
begin
  inherited;
  CalcPeriodo;
end;

end.
