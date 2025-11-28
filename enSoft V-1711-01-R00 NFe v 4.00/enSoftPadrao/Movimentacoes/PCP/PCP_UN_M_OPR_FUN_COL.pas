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
    ckColagem: TCheckListBox;
    Label4: TLabel;
    Label5: TLabel;
    ckMontagemCaixa: TCheckListBox;
    BUS_CD_C_FUN: TClientDataSet;
    BUS_CD_C_FUN_CRG: TClientDataSet;
    BUS_CD_C_FUNid_funcionario: TIntegerField;
    BUS_CD_C_FUNativo: TBooleanField;
    BUS_CD_C_FUNnome: TWideStringField;
    BUS_CD_C_FUNendereco: TWideStringField;
    BUS_CD_C_FUNcep: TWideStringField;
    BUS_CD_C_FUNnumero: TWideStringField;
    BUS_CD_C_FUNtel_fixo: TWideStringField;
    BUS_CD_C_FUNtel_movel: TWideStringField;
    BUS_CD_C_FUNdoc_cpf: TWideStringField;
    BUS_CD_C_FUNdoc_identidade: TWideStringField;
    BUS_CD_C_FUNbairro: TWideStringField;
    BUS_CD_C_FUNid_cidade: TWideStringField;
    BUS_CD_C_FUNestado: TWideStringField;
    BUS_CD_C_FUNemail: TWideStringField;
    BUS_CD_C_FUNsexo: TIntegerField;
    BUS_CD_C_FUNdta_nascimento: TDateField;
    BUS_CD_C_FUNdta_cadastro: TDateField;
    BUS_CD_C_FUNlogin: TWideStringField;
    BUS_CD_C_FUNsenha: TWideStringField;
    BUS_CD_C_FUNdta_senha_expira: TDateField;
    BUS_CD_C_FUNid_perfil_seg: TIntegerField;
    BUS_CD_C_FUNseg_alt_lim_cli: TBooleanField;
    BUS_CD_C_FUNseg_alt_sit_cli: TBooleanField;
    BUS_CD_C_FUNseg_alt_pre_pro: TBooleanField;
    BUS_CD_C_FUNseg_hab_bot_exc: TBooleanField;
    BUS_CD_C_FUNint_nomecid: TWideStringField;
    BUS_CD_C_FUNcod_lme: TWideStringField;
    BUS_CD_C_FUNrev_lme: TWideStringField;
    BUS_CD_C_FUNseg_vis_ult_cmp_ite: TBooleanField;
    BUS_CD_C_FUNseg_vis_msg_sol_cmp: TBooleanField;
    BUS_CD_C_FUNseg_apr_rep_cmp_ped: TBooleanField;
    BUS_CD_C_FUNseg_per_canc_orv: TBooleanField;
    BUS_CD_C_FUNseg_habilitar_seg: TBooleanField;
    BUS_CD_C_FUNseg_redef_senha: TBooleanField;
    BUS_CD_C_FUNseg_hab_bot_alt_fun: TBooleanField;
    BUS_CD_C_FUNseq_vis_msg_ped_exp_fat: TBooleanField;
    BUS_CD_C_FUNseg_ctc_apg: TBooleanField;
    BUS_CD_C_FUNseg_alt_vend_ped: TBooleanField;
    BUS_CD_C_FUNseq_vis_alert_est_min: TBooleanField;
    BUS_CD_C_FUNexcluir_caixa: TBooleanField;
    BUS_CD_C_FUNseg_hab_lib_brd: TBooleanField;
    BUS_CD_C_FUNseg_vis_custo_csu_ite: TBooleanField;
    BUS_CD_C_FUNseg_zerar_est: TBooleanField;
    BUS_CD_C_FUNseg_vis_nota_csu_ite: TBooleanField;
    BUS_CD_C_FUNid_empresa_mob: TIntegerField;
    BUS_CD_C_FUNvnd_interno_externo: TIntegerField;
    BUS_CD_C_FUNtipo: TIntegerField;
    BUS_CD_C_FUNaniversariante_mes: TBooleanField;
    BUS_CD_C_FUNsgq_reimprime_etq: TBooleanField;
    BUS_CD_C_FUNmob_alt_preco_ped: TBooleanField;
    BUS_CD_C_FUNseg_per_desc_maior: TBooleanField;
    BUS_CD_C_FUNseg_cancelar_os: TBooleanField;
    BUS_CD_C_FUNadm_sistema: TBooleanField;
    BUS_CD_C_FUNper_comissao: TFloatField;
    BUS_CD_C_FUNseg_alt_cli_ped: TBooleanField;
    BUS_CD_C_FUNsgq_perm_alt_comissao_ped: TBooleanField;
    BUS_CD_C_FUNseg_alterar_local_tit_fin: TBooleanField;
    BUS_CD_C_FUNseg_vis_aviso_tit_spc_protesto: TBooleanField;
    BUS_CD_C_FUNsgq_perm_botao_ger_prod: TBooleanField;
    BUS_CD_C_FUNsgq_perm_atual_contagem: TBooleanField;
    BUS_CD_C_FUNsgq_vis_vlr_tot_carga: TBooleanField;
    BUS_CD_C_FUNseg_alterar_fpg_tit_fin: TBooleanField;
    BUS_CD_C_FUNseg_alterar_ped_sit: TIntegerField;
    BUS_CD_C_FUNsgq_per_comissao: TFloatField;
    BUS_CD_C_FUNper_alterar_repres: TBooleanField;
    BUS_CD_C_FUNbus_som_ped_sem_pagtos: TBooleanField;
    BUS_CD_C_FUNsgq_perm_inserir_itens_op: TBooleanField;
    BUS_CD_C_FUNCAD_SQ_C_FUN_CPN: TDataSetField;
    BUS_CD_C_FUNCAD_SQ_C_FUN_EMP: TDataSetField;
    BUS_CD_C_FUNCAD_SQ_C_FUN_CRG: TDataSetField;
    BUS_CD_C_FUN_CRGid_funcionario: TIntegerField;
    BUS_CD_C_FUN_CRGid_cargo: TIntegerField;
    BUS_CD_C_FUN_CRGint_nomecrg: TWideStringField;
    BUS_CD_C_FUN_CRGint_desc_setor: TWideStringField;
    BUS_CD_C_FUN_CRGint_tipo_setor: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure txtQtdeExit(Sender: TObject);
    procedure DesmarcarListsBox(ckListBox1, ckListBox2: TCheckListBox);
    procedure ckFuncionarioClick(Sender: TObject);
    procedure ckMontagemCaixaClick(Sender: TObject);
    procedure ckColagemClick(Sender: TObject);
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
  txtGeracao: string;

begin
  inherited;  

  if (ckFuncionario.Items.Count = 0) and 
     (ckColagem.Items.Count = 0 )    and
     (ckColagem.Items.Count = 0 ) then
      begin
        ShowMessage('Não há funcionários em nenhuma das listas!');
        exit;
      end;

  ExisteItemSel := false;

  txtGeracao := '';

  for i := 0 to ckFuncionario.Items.Count - 1 do
      begin
        if ckFuncionario.Checked[i] = true then
           begin
             ExisteItemSel := true;
             txtGeracao := 'Colchoaria';
           end;
      end;
  if ExisteItemSel = false then  
     for i := 0 to ckMontagemCaixa.Items.Count - 1 do
        begin
          if ckMontagemCaixa.Checked[i] = true then
             begin
               ExisteItemSel := true;
               txtGeracao := 'Montagem de caixa';
             end;
        end;

  if ExisteItemSel = false then  
     for i := 0 to ckColagem.Items.Count - 1 do
        begin
          if ckColagem.Checked[i] = true then
             begin
               ExisteItemSel := true;
               txtGeracao := 'Colagem';
             end;
        end;

  if ExisteItemSel = false then
     begin
       ShowMessage('Nenhum funcionário foi selecionado!');
       exit;
     end;


  if (trim(txtQtde.text) = '') or (txtQtde.text = '0') then
     begin
       ShowMessage('Qtde de etiquetas não foi informada!');
       exit;
     end;

  if MessageDlg('Confirma a geração das etiquetas para ' + txtGeracao + '?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
     begin
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
     for i := 0 to ckMontagemCaixa.Items.Count - 1 do
         begin
           if ckMontagemCaixa.Checked[i] = true then
              begin
                ExisteItemSel := true;

                z:= 0;
                qtde := strtoint(txtQtde.Text);
                for z := 0 to qtde - 1 do
                    begin
                      cdsEtiquetas.Insert;
                      // 99 abaixo, é pra indicar que a entrada vai ser via pistola
                      cdsEtiquetas.FieldByName('codigo').AsString := '99'+copy(ckMontagemCaixa.Items[i],1,3);
                      cdsEtiquetas.FieldByName('codigo_limpo').AsString := copy(ckMontagemCaixa.Items[i],1,3);
                      cdsEtiquetas.Post;
                    end;

              end;
         end;


  if ExisteItemSel = false then  
     for i := 0 to ckColagem.Items.Count - 1 do
         begin
           if ckColagem.Checked[i] = true then
              begin
                ExisteItemSel := true;

                z:= 0;
                qtde := strtoint(txtQtde.Text);
                for z := 0 to qtde - 1 do
                    begin
                      cdsEtiquetas.Insert;
                      // 99 abaixo, é pra indicar que a entrada vai ser via pistola
                      cdsEtiquetas.FieldByName('codigo').AsString := '99'+copy(ckColagem.Items[i],1,3);
                      cdsEtiquetas.FieldByName('codigo_limpo').AsString := copy(ckColagem.Items[i],1,3);
                      cdsEtiquetas.Post;
                    end;

              end;
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

procedure TPCP_FM_M_OPR_FUN_COL.ckColagemClick(Sender: TObject);
begin
  DesmarcarListsBox(ckFuncionario,ckMontagemCaixa);
end;

procedure TPCP_FM_M_OPR_FUN_COL.ckFuncionarioClick(Sender: TObject);
begin
  DesmarcarListsBox(ckMontagemCaixa,ckColagem);
end;

procedure TPCP_FM_M_OPR_FUN_COL.ckMontagemCaixaClick(Sender: TObject);
begin
  DesmarcarListsBox(ckFuncionario,ckColagem);
end;

procedure TPCP_FM_M_OPR_FUN_COL.DesmarcarListsBox(ckListBox1,
  ckListBox2: TCheckListBox);
var
  i: integer;
begin

   for i := 0 to ckListBox1.Items.Count - 1 do
       begin
         if ckListBox1.Checked[i] = true then
            ckListBox1.Checked[i] := false;
       end;

   for i := 0 to ckListBox2.Items.Count - 1 do
       begin
         if ckListBox2.Checked[i] = true then
            ckListBox2.Checked[i] := false;
       end;
end;

procedure TPCP_FM_M_OPR_FUN_COL.FormShow(Sender: TObject);
begin

   BUS_CD_C_FUN.Close;
   BUS_CD_C_FUN.Data :=
     BUS_CD_C_FUN.DataRequest(VarArrayOf([17, '']));

   BUS_CD_C_FUN.First;
   while not BUS_CD_C_FUN.EOF do
     begin
       if BUS_CD_C_FUN_CRG.FieldByName('int_tipo_setor').AsInteger = 2 then // Colagem
          begin
           ckColagem.AddItem(StrZero(BUS_CD_C_FUN.FieldByName('id_funcionario').AsInteger,3,0)+' - '+
                                     BUS_CD_C_FUN.FieldByName('nome').AsString,nil);

          end;
       if BUS_CD_C_FUN_CRG.FieldByName('int_tipo_setor').AsInteger = 8 then // Colchoaria
          begin
           ckFuncionario.AddItem(StrZero(BUS_CD_C_FUN.FieldByName('id_funcionario').AsInteger,3,0)+' - '+
                                         BUS_CD_C_FUN.FieldByName('nome').AsString,nil);

          end;

       if BUS_CD_C_FUN_CRG.FieldByName('int_tipo_setor').AsInteger = 9 then // Montagem de Caixa
          begin
            ckMontagemCaixa.AddItem(StrZero(BUS_CD_C_FUN.FieldByName('id_funcionario').AsInteger,3,0)+' - '+
                                     BUS_CD_C_FUN.FieldByName('nome').AsString,nil);
          end;

       BUS_CD_C_FUN.Next;
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
