unit FAT_UN_M_LIB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.Mask, Vcl.DBCtrls, Data.DB, Datasnap.DBClient,
  vcl.wwdatsrc, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons, Vcl.ImgList;

type
  TFAT_FM_M_LIB = class(TForm)
    pnlTop: TPanel;
    pnlCima: TPanel;
    lblTitulo: TLabel;
    pnlBaixo: TPanel;
    lblCodificacaoLMestre: TLabel;
    pnlDireita: TPanel;
    gbDocumento: TGroupBox;
    gbRestricoes: TGroupBox;
    grdPedSgq: TwwDBGrid;
    lblJustificativa: TLabel;
    btnLiberar: TButton;
    btnRejeitar: TButton;
    dso: TwwDataSource;
    txtRestricoes: TListBox;
    Button1: TButton;
    txtJustificativa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    gbxFiltro: TGroupBox;
    cbbPesquisa: TComboBox;
    txtPesquisa: TEdit;
    ImgPequena: TImageList;
    btnFiltro: TcxButton;
    cbbPorData: TComboBox;
    Label3: TLabel;
    grdPedRev: TwwDBGrid;
    pmApoio: TPopupMenu;
    Visualizardadosdopedido1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLiberarClick(Sender: TObject);
    procedure btnRejeitarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure grdPedSgqMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdPedSgqRowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsDocumentosAfterScroll(DataSet: TDataSet);
    procedure cbbPorDataChange(Sender: TObject);
    procedure grdPedRevRowChanged(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure cbbPesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Visualizardadosdopedido1Click(Sender: TObject);
  private
    { Private declarations }
    procedure MontarRestricoes(restricoes:string);
    function MontarNovasRestricoes(antigasRest,atuaisRest:string):string;
    procedure GravarPedidoVendaLib(TipoAcao: string);
    function TestarCampos:Boolean;
    procedure LimparCampos;
    procedure PreencherGrid;
    function  VerifPedido(Pedidos: String):Boolean;
    var
       xRegistroSeleciondo: Boolean;
  public
    { Public declarations }
  end;

var
  FAT_FM_M_LIB: TFAT_FM_M_LIB;

implementation

{$R *.dfm}

uses uDmGeral, uProxy,UApplayClassProxy, FAT_RN_M_PED, CSU_UN_M_PED;

procedure TFAT_FM_M_LIB.btnFiltroClick(Sender: TObject);
var
  msg,msg_2: string;
begin
  if trim(txtPesquisa.Text) = '' then
     begin
       Showmessage('Nenhum dado foi informado para a busca.');
       exit;
     end;

  if trim(txtPesquisa.Text) <> '' then
     begin
        case cbbPesquisa.ItemIndex of
          0:
          begin
             if not dmGeral.BUS_CD_M_PED.Locate('id_pedido',trim(txtPesquisa.Text),[]) then
                begin
                  dmGeral.BUS_CD_M_PED2.close;
                  dmGeral.BUS_CD_M_PED2.Data :=
                      dmGeral.BUS_CD_M_PED2.DataRequest(VarArrayOf([0,dmGeral.CAD_CD_C_PAR_CTRid_empresa.Text,trim(txtPesquisa.Text)]));
                  if not dmGeral.BUS_CD_M_PED2.IsEmpty then
                     begin
                       msg := '.';
                       msg_2 := '';

                       case dmGeral.BUS_CD_M_PED2.FieldByName('situacao').AsInteger of
                         4:
                           begin
                             // 4 - Pedido cancelado
                             dmGeral.BUS_CD_C_FU2.close;
                               dmGeral.BUS_CD_C_FU2.Data :=
                                 dmGeral.BUS_CD_C_FU2.DataRequest(VarArrayOf([0,dmGeral.BUS_CD_M_PED2.FieldByName('can_usuario').AsString]));

                             msg_2 :=
                                 ' Aviso: Pedido cancelado por: ' + dmGeral.BUS_CD_M_PED2.FieldByName('can_usuario').AsString + ' - ' +
                                 dmGeral.BUS_CD_C_FU2.FieldByName('nome').AsString + ', em ' +
                                 dmGeral.BUS_CD_M_PED2.FieldByName('can_data').AsString + ' - ' +
                                 dmGeral.BUS_CD_M_PED2.FieldByName('can_hora').AsString;
                             dmGeral.BUS_CD_C_FU2.close;
                           end;
                         3:
                           begin
                             // 4 - Pedido faturado
                             msg_2 := ' Aviso: Pedido já faturado';
                           end;
                       end;

                      if dmGeral.BUS_CD_M_PED2.FieldByName('situacao_aprovacao').AsInteger = 0 then  // Aprovado
                         begin
                           if msg_2 <> '' then
                              begin
                                Showmessage('Pedido: ' + dmGeral.BUS_CD_M_PED2.FieldByName('id_pedido').AsString + ' apenas DIGITADO.'
                                 + #13 + #13 + msg_2);
                              end;
                         end;

                      if dmGeral.BUS_CD_M_PED2.FieldByName('situacao_aprovacao').AsInteger = 1 then  // Aprovado
                         begin
                             if trim(dmGeral.BUS_CD_M_PED2.FieldByName('dta_liberacao').AsString) <> '' then
                                begin
                                  msg := ' em ' + dmGeral.BUS_CD_M_PED2.FieldByName('dta_liberacao').AsString + '.';
                                end;

                             if msg_2 = '' then
                                begin
                                  Showmessage('Pedido: ' + dmGeral.BUS_CD_M_PED2.FieldByName('id_pedido').AsString + ', já liberado por: ' +
                                       dmGeral.BUS_CD_M_PED2.FieldByName('int_nomelib').AsString + msg);
                                end
                             else
                                begin
                                   Showmessage('Pedido: ' + dmGeral.BUS_CD_M_PED2.FieldByName('id_pedido').AsString + ', já liberado por: ' +
                                       dmGeral.BUS_CD_M_PED2.FieldByName('int_nomelib').AsString + msg + #13 + #13 + msg_2);
                                end;

                         end;

                      if dmGeral.BUS_CD_M_PED2.FieldByName('situacao_aprovacao').AsInteger = 2 then // Reprovado
                         begin
                            if trim(dmGeral.BUS_CD_M_PED2.FieldByName('dta_liberacao').AsString) <> '' then
                               begin
                                 msg := ' em ' + dmGeral.BUS_CD_M_PED2.FieldByName('dta_liberacao').AsString + '.';
                               end;

                             Showmessage('Pedido: ' + dmGeral.BUS_CD_M_PED2.FieldByName('id_pedido').AsString + ', reprovado por: ' +
                                 dmGeral.BUS_CD_M_PED2.FieldByName('int_nomelib').AsString);
                         end;
                     end
                  else
                     ShowMessage('Registro não encontrado!');
                end
             else
                begin
                   dmGeral.BUS_CD_M_PED.edit;
                   dmGeral.BUS_CD_M_PED.FieldByName('int_selecao').AsBoolean := true;
                   dmGeral.BUS_CD_M_PED.Post;

                   txtPesquisa.Text := '';
                   txtPesquisa.SetFocus;
                end;
          end;
          1:
           begin
             if not dmGeral.BUS_CD_M_PED.Locate('dta_pedido',trim(txtPesquisa.Text),[]) then
                begin
                  ShowMessage('Registro não encontrado!');
                end
             else
                begin
                   dmGeral.BUS_CD_M_PED.edit;
                   dmGeral.BUS_CD_M_PED.FieldByName('int_selecao').AsBoolean := true;
                   dmGeral.BUS_CD_M_PED.Post;

                   txtPesquisa.Text := '';
                   txtPesquisa.SetFocus;
                end;
           end;
          2:
           begin
             if not dmGeral.BUS_CD_M_PED.Locate('int_nomecli',trim(txtPesquisa.Text),[]) then
                begin
                  ShowMessage('Registro não encontrado!');
                end
             else
                begin
                   dmGeral.BUS_CD_M_PED.edit;
                   dmGeral.BUS_CD_M_PED.FieldByName('int_selecao').AsBoolean := true;
                   dmGeral.BUS_CD_M_PED.Post;

                   txtPesquisa.Text := '';
                   txtPesquisa.SetFocus;

                end;
           end;
        end;
     end;
end;

procedure TFAT_FM_M_LIB.btnLiberarClick(Sender: TObject);
begin
  if TestarCampos then
     begin
       if MessageDlg('Confirma liberação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            Screen.Cursor := crHourGlass;
            try
              GravarPedidoVendaLib('A');

              LimparCampos;
              PreencherGrid;

              dmGeral.BusDocComRestr(IntToStr(cbbPorData.ItemIndex),dmGeral.BUS_CD_C_FU4.FieldByName('bus_som_ped_sem_pagtos').AsBoolean);
            finally
              Screen.Cursor := crDefault;
            end;
          end;
     end;
end;

procedure TFAT_FM_M_LIB.btnRejeitarClick(Sender: TObject);
begin
  if TestarCampos then
     begin
       if MessageDlg('Confirma reprovação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            Screen.Cursor := crHourGlass;
            try
              GravarPedidoVendaLib('R');

              LimparCampos;
              PreencherGrid;


              dmGeral.BusDocComRestr(IntToStr(cbbPorData.ItemIndex),dmGeral.BUS_CD_C_FU4.FieldByName('bus_som_ped_sem_pagtos').AsBoolean);
            finally
              Screen.Cursor := crDefault;
            end;
          end;
     end;
end;

procedure TFAT_FM_M_LIB.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TFAT_FM_M_LIB.cbbPesquisaChange(Sender: TObject);
begin
  txtPesquisa.NumbersOnly := false;
  if cbbPesquisa.ItemIndex = 0 then
     txtPesquisa.NumbersOnly := true;
end;

procedure TFAT_FM_M_LIB.cbbPorDataChange(Sender: TObject);
begin
   dmGeral.BusDocComRestr(IntToStr(cbbPorData.ItemIndex),dmGeral.BUS_CD_C_FU4.FieldByName('bus_som_ped_sem_pagtos').AsBoolean);
end;

procedure TFAT_FM_M_LIB.cdsDocumentosAfterScroll(DataSet: TDataSet);
begin
//  xRegistroSeleciondo := false;
end;

procedure TFAT_FM_M_LIB.grdPedRevRowChanged(Sender: TObject);
begin
  //LimparCampos;
  MontarRestricoes(dmGeral.BUS_CD_M_PED.FieldByName('tipo_restricao').AsString);
end;

procedure TFAT_FM_M_LIB.grdPedSgqMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 { lblSelPedido.Caption := '';
  if not dmGeral.BUS_CD_M_PED.IsEmpty then
     begin
        xRegistroSeleciondo := true;
        lblSelPedido.Caption := 'Pedido selecionado: ' +
            copy(cdsDocumentos.FieldByName('CLIENTE').AsString,1,40) + ', Doc.: ' +
            cdsDocumentos.FieldByName('DOCUMENTO').AsString;
     end
  else
     begin
       lblSelPedido.Caption := '"Nenhum pedido foi selecionado pelo usuário"';
     end;   }
end;

procedure TFAT_FM_M_LIB.grdPedSgqRowChanged(Sender: TObject);
begin
  //LimparCampos;
  MontarRestricoes(dmGeral.BUS_CD_M_PED.FieldByName('tipo_restricao').AsString);
end;

procedure TFAT_FM_M_LIB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FAT_FM_M_LIB.Visible := true;
  Action := caFree;
  dmGeral.FAT_CD_M_PED.Close;
  dmGeral.BUS_CD_M_PED.Close;

end;

procedure TFAT_FM_M_LIB.FormCreate(Sender: TObject);
begin
  //  cdsDocumentos.Close;
  //  cdsDocumentos.CreateDataSet;
  //  PreencherGrid;
  

  xRegistroSeleciondo := false;
  LimparCampos;

  cbbPorData.Items.Clear;

  dmGeral.BusFuncionario4(0,IntToStr(xFuncionario));

  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       cbbPorData.Items.add('UF/Nome cidade/Data crescente');
       cbbPorData.Items.add('UF/Nome cidade/Data decrescente');
       cbbPorData.Items.add('UF/Nome cidade/Cód. pedido crescente');
       cbbPorData.Items.add('UF/Nome cidade/Cód. pedido decrescente');

       cbbPorData.OnChange := nil;
       cbbPorData.ItemIndex := 0;
       cbbPorData.OnChange := cbbPorDataChange;

       grdPedRev.Visible := false;
       grdPedSgq.Align   := alClient;
       dmGeral.BusDocComRestr('0',dmGeral.BUS_CD_C_FU4.FieldByName('bus_som_ped_sem_pagtos').AsBoolean);
     end
  else
     begin
       cbbPorData.Items.add('Data crescente');
       cbbPorData.Items.add('Data decrescente');
       cbbPorData.Items.add('UF/Nome cidade');
       cbbPorData.Items.add('Código pedido crescente');
       cbbPorData.Items.add('Código pedido decrescente');

       cbbPorData.OnChange := nil;
       cbbPorData.ItemIndex := 0;
       cbbPorData.OnChange := cbbPorDataChange;

       grdPedSgq.Visible := false;
       grdPedRev.Align   := alClient;
       dmGeral.BusDocComRestr('0',dmGeral.BUS_CD_C_FU4.FieldByName('bus_som_ped_sem_pagtos').AsBoolean);
     end;
end;

procedure TFAT_FM_M_LIB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ord(key) = vk_f5 then
     begin
       dmGeral.BusDocComRestr(IntToStr(cbbPorData.ItemIndex),dmGeral.BUS_CD_C_FU4.FieldByName('bus_som_ped_sem_pagtos').AsBoolean);
     end;
end;

procedure TFAT_FM_M_LIB.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFAT_FM_M_LIB.FormShow(Sender: TObject);
begin
  {if not dmgeral.CAD_CD_C_PAR_MODsgq.AsBoolean then
    begin
      dgDoc.ColumnByName('CLIENTE').DisplayWidth := (dgDoc.ColumnByName('CLIENTE').DisplayWidth + 14);
      dgDoc.ColumnByName('CUBAGEM').Visible := false;
    end;}



  txtPesquisa.SetFocus;
end;

procedure TFAT_FM_M_LIB.GravarPedidoVendaLib(TipoAcao: String);
var
  SMPrincipal:TSMClient;
  restricoes_ant,mens:string;
  xCondPedido, Retorno: String;
begin
  {
    TipoAcao -  A - Aprovado
                R - Reprovado
  }

  xCondPedido := '';

  dmGeral.BUS_CD_M_PED.First;
  while not dmGeral.BUS_CD_M_PED.eof do
      begin
        if dmGeral.BUS_CD_M_PED.FieldByName('int_selecao').AsBoolean then
           begin
             if xCondPedido <> '' then
                begin
                  xCondPedido :=
                  xCondPedido + ',' +''''+dmGeral.BUS_CD_M_PED.FieldByName('id_pedido').AsString+'''';
                end;
             if xCondPedido = '' then
                begin
                  xCondPedido :=
                  xCondPedido +''''+dmGeral.BUS_CD_M_PED.FieldByName('id_pedido').AsString+'''';
                end;
           end;
        dmGeral.BUS_CD_M_PED.Next;
      end;

  if not (VerifPedido(xCondPedido)) then
     abort;


  try
      SMPrincipal := TSMClient.Create(dmGeral.Conexao.DBXConnection);

      retorno :=  SMPrincipal.enAproReprPed(dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString,xCondPedido,TipoAcao, IntToStr(xFuncionario), txtJustificativa.text);
      if retorno = 'OK' then
         begin
           Showmessage('Ação concluída com sucesso!');
         end
      else
         begin
           Showmessage(retorno);
         end;
  finally
    FreeAndNil(SMPrincipal);
  end;

  {dmGeral.BUS_CD_M_PED.First;

  dmGeral.FAT_CD_M_PED.Close;
  dmGeral.FAT_CD_M_PED.Data :=
  dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([100,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, xCondPedido]));

  dmGeral.FAT_CD_M_PED.First;
  while not dmGeral.FAT_CD_M_PED.eof do
     begin
         dmGeral.FAT_CD_M_PED.edit;

         if (pos('F',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
             begin
               dmGeral.BUS_CD_M_PED.locate('id_pedido',dmGeral.BUS_CD_M_PED.FieldByName('id_pedido').AsString,[]);
               restricoes_ant :=  dmGeral.BUS_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString;
               dmGeral.FAT_CD_M_PED.FieldByName('TIPO_RESTRICAO').text := '';

               fatPedVerifRestricoes;
               if (restricoes_ant <> dmGeral.FAT_CD_M_PEDtipo_restricao.text) then
                 begin
                    mens := 'Há novas restrições:'+#13+#10;
                    mens := mens + MontarNovasRestricoes(restricoes_ant,dmGeral.FAT_CD_M_PEDtipo_restricao.text);
                    mens := mens + 'Deseja continuar?';
                    if MessageDlg(mens, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                       begin
                         dmGeral.FAT_CD_M_PED.Cancel;

                         dmGeral.FAT_CD_M_PED.Close;
                         dmGeral.FAT_CD_M_PED.Data :=
                             dmGeral.FAT_CD_M_PED.DataRequest(VarArrayOf([0,'']));
                         exit;
                       end;
                 end;
             end;
          dmGeral.FAT_CD_M_PED.Next;
     end;

  if TipoAcao = 'A' then
     begin
       dmGeral.FAT_CD_M_PED.First;
       while not dmGeral.FAT_CD_M_PED.eof do
          begin
             dmGeral.FAT_CD_M_PED.Edit;
             dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 1;
             if (pos('F',dmGeral.FAT_CD_M_PEDtipo_restricao.text) <> 0) then
                begin
                  dmGeral.FAT_CD_M_PED_TIT.First;
                  while(not dmGeral.FAT_CD_M_PED_TIT.EOF) do
                      begin
                        dmGeral.FAT_CD_M_PED_TIT.Edit;
                        dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime :=
                        dmGeral.FAT_CD_M_PED_TIT.FieldByName('DTA_VENCIMENTO').AsDateTime +
                         (xDataSis-dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime);

                        dmGeral.FAT_CD_M_PED_TIT.Post;
                        dmGeral.FAT_CD_M_PED_TIT.Next;
                      end;
                   dmGeral.FAT_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime := xDataSis;
               end;
             dmGeral.FAT_CD_M_PED.FieldByName('ID_USUARIO_LIB').AsInteger := xFuncionario;
             dmGeral.FAT_CD_M_PED.FieldByName('JUSTIFICATIVA').AsString   := txtJustificativa.text;
             dmGeral.FAT_CD_M_PED.Next;
          end;
     end;
  if TipoAcao = 'R' then
     begin
       dmGeral.FAT_CD_M_PED.First;
       while not dmGeral.FAT_CD_M_PED.eof do
          begin
             dmGeral.FAT_CD_M_PED.Edit;
             dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO').AsInteger := 1;
             dmGeral.FAT_CD_M_PED.FieldByName('SITUACAO_APROVACAO').AsInteger := 2;
             dmGeral.FAT_CD_M_PED.FieldByName('ID_USUARIO_LIB').AsInteger := xFuncionario;
             dmGeral.FAT_CD_M_PED.FieldByName('JUSTIFICATIVA').AsString   := txtJustificativa.text;
             dmGeral.FAT_CD_M_PED.Next;
          end;
     end;
  dmGeral.FAT_CD_M_PED.Edit;
  DmGeral.Grava(dmGeral.FAT_CD_M_PED); }
end;

procedure TFAT_FM_M_LIB.LimparCampos;
begin
  if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
     begin
       txtJustificativa.Text := 'Autorizado';
     end
  else
     txtJustificativa.Text := '';
   //lblSelPedido.Caption := '"Nenhum pedido foi selecionado pelo usuário"';

  { if dmGeral.CAD_CD_C_PAR_MOD.FieldByName('SGQ').AsBoolean then
      begin
        txtJustificativa.Text :=  'Autorizado';
      end; }
end;


function TFAT_FM_M_LIB.MontarNovasRestricoes(antigasRest,atuaisRest:string):string;
var
  index:integer;
  tipo_restricao:string;
  mens:string;
begin
  mens := '';
  index := 1;
  while (index<=atuaisRest.Length) do
    begin
      tipo_restricao := copy(atuaisRest,index,1);
       if (pos(tipo_restricao,antigasRest)=0) then
        begin
          if (tipo_restricao = 'A') then
            begin
              mens := mens + 'Cliente sem limite de crédito'+#13+#10;
            end;
          if (tipo_restricao = 'B') then
            begin
              mens := mens + 'Cliente com débito na empresa'+#13+#10;
            end;
          if (tipo_restricao = 'C') then
            begin
              mens := mens + 'Produto com estoque negativo'+#13+#10;
            end;
          if (tipo_restricao = 'D') then
            begin
              mens := mens + 'Cliente com credito encerrado'+#13+#10;
            end;
          if (tipo_restricao = 'E') then
            begin
              mens := mens + 'Pedido com preço alterado pelo vendedor'+#13+#10;
            end;
          if (tipo_restricao = 'F')  then
            begin
              mens := mens + 'Venda com carga'+#13+#10;
            end;
          if (tipo_restricao = 'G')  then
            begin
              mens := mens + 'Pedido reaberto (Momento de cancalemento de nota fiscal de venda)'+#13+#10;
            end;
          if (tipo_restricao = 'H')  then
            begin
              mens := mens + 'Item com desconto acima do limite'+#13+#10;
            end;
        end;
      index:=index+1;
    end;
    Result := mens;
end;

procedure TFAT_FM_M_LIB.MontarRestricoes(restricoes:string);
begin
   { Restrições:
    A -	Sem Limite de Credito
    B -	Cliente Com Debito na Empresa
    C -	Produto com estoque negativo
    D -	Cliente com credito encerrado
    E - Pedido com preço alterado pelo vendedor
    F - Venda com carga
    G - Pedido reaberto (Momento de cancalemento de nota fiscal de venda)
    }

   txtRestricoes.Items.Clear;

   if pos('A',restricoes) <> 0 then
      begin
        txtRestricoes.Items.Add('Cliente sem limite de crédito');
      end;
   if pos('B',restricoes) <> 0 then
      begin
        txtRestricoes.Items.Add('Cliente com débito na empresa');
      end;
   if pos('C',restricoes) <> 0 then
      begin
        txtRestricoes.Items.Add('Produto com estoque negativo');
      end;
   if pos('D',restricoes) <> 0 then
      begin
        txtRestricoes.Items.Add('Cliente com credito encerrado');
      end;
   if pos('E',restricoes) <> 0 then
      begin
        txtRestricoes.Items.Add('Pedido com preço alterado pelo vendedor');
      end;
   if pos('F',restricoes) <> 0 then
      begin
        txtRestricoes.Items.Add('Venda com carga');
      end;
   if pos('G',restricoes) <> 0 then
      begin
        txtRestricoes.Items.Add('Pedido reaberto (Momento de cancalemento de nota fiscal de venda)');
      end;
   if pos('H',restricoes) <> 0 then
      begin
        txtRestricoes.Items.Add('Item com desconto acima do limite');
      end;
   if pos('I',restricoes) <> 0 then
      begin
        txtRestricoes.Items.Add('Pedido gerado pelo Mobile');
      end;


end;

procedure TFAT_FM_M_LIB.PreencherGrid;
begin

  // Comentado por Maxsuel Victor, em 15/04/2016
     // devido tarefa: 1314
  {
  txtRestricoes.Items.Clear;
  dmGeral.BusDocComRestr;

  if not dmGeral.BUS_CD_M_PED.IsEmpty then
     begin
       dmGeral.BUS_CD_M_PED.First;
       while not dmGeral.BUS_CD_M_PED.eof do
           begin
             cdsDocumentos.Insert;
             cdsDocumentosROTINA.AsString        := 'Pedido de Venda';
             cdsDocumentosEMPRESA.AsString       := dmGeral.BUS_CD_M_PED.FieldByName('ID_EMPRESA').AsString;
             cdsDocumentosDOCUMENTO.AsString     := dmGeral.BUS_CD_M_PED.FieldByName('ID_PEDIDO').AsString;
             cdsDocumentosCLIENTE.AsString       := dmGeral.BUS_CD_M_PED.FieldByName('INT_NOMECLI').AsString;
             cdsDocumentosVALOR.AsCurrency       := dmGeral.BUS_CD_M_PED.FieldByName('VLR_LIQUIDO').AsCurrency;
             cdsDocumentosTIPORESTRICAO.AsString := dmGeral.BUS_CD_M_PED.FieldByName('TIPO_RESTRICAO').AsString;
             cdsDocumentosDTA_PEDIDO.AsDateTime  := dmGeral.BUS_CD_M_PED.FieldByName('DTA_PEDIDO').AsDateTime;
             cdsDocumentosCUBAGEM.AsCurrency     := dmGeral.BUS_CD_M_PED.FieldByName('CUBAGEM').AsCurrency;
             cdsDocumentosCIDADE.AsString        := dmGeral.BUS_CD_M_PED.FieldByName('INT_NOMECID').AsString;
             cdsDocumentosUF.AsString            := dmGeral.BUS_CD_M_PED.FieldByName('INT_NOMEEST').AsString;
        
             cdsDocumentos.Post;
             dmGeral.BUS_CD_M_PED.Next;
           end;
       cdsDocumentos.IndexFieldNames := 'DTA_PEDIDO';
       cdsDocumentos.First;
       MontarRestricoes(cdsDocumentosTIPORESTRICAO.AsString);
     end; }
end;

function TFAT_FM_M_LIB.TestarCampos:Boolean;
var
  IdPedido: String;
begin
  result := true;

  if dmGeral.BUS_CD_M_PED.IsEmpty then
     begin
       ShowMessage('Não há registro no grid.');
       result := false;
       exit;
     end;

  if length(trim(txtJustificativa.Text)) < 10 then
     begin
       ShowMessage('O campo "Justificativa" deve ter no mínimo 10 caracteres.');
       result := false;
       txtJustificativa.SetFocus;
       exit;
     end;

  try

  IdPedido := dmGeral.BUS_CD_M_PED.FieldByName('id_pedido').AsString;

  dmGeral.BUS_CD_M_PED.Filtered := true;
  dmGeral.BUS_CD_M_PED.Filter := ' int_selecao = true';
  if dmGeral.BUS_CD_M_PED.IsEmpty then
     begin
       dmGeral.BUS_CD_M_PED.Filtered := false;
       dmGeral.BUS_CD_M_PED.Locate('id_pedido',IdPedido,[]);
       ShowMessage('Nenhum registro foi selecionado.');
       result := false;
       abort;
     end;


  finally
     dmGeral.BUS_CD_M_PED.Filtered := false;
     dmGeral.BUS_CD_M_PED.Locate('id_pedido',IdPedido,[]);
  end;
end;

function TFAT_FM_M_LIB.VerifPedido(Pedidos: String): Boolean;
var
  cdsPedido: TClientDataSet;
begin
   result := true;
   try

   cdsPedido := TClientDataSet.Create(self);

   cdsPedido.RemoteServer := dmGeral.pcConecao;
   cdsPedido.ProviderName := 'FAT_DP_M_PED';

   cdsPedido.Close;
   cdsPedido.Data :=
       cdsPedido.DataRequest(VarArrayOf([100,dmGeral.CAD_CD_C_PAR.FieldByName('id_empresa').AsString, Pedidos]));
   if cdsPedido.IsEmpty then
      begin
        Showmessage('O(s) pedido(s) de venda não existe mais no banco de dados.');
        result := false;
      end
   else
      begin
        cdsPedido.First;
        while not cdsPedido.eof do
           begin
             if cdsPedido.FieldByName('situacao_aprovacao').AsInteger <> 0 then
                begin
                  if cdsPedido.FieldByName('situacao_aprovacao').AsInteger = 1 then
                     begin
                       ShowMessage('Pedido de venda: ' + cdsPedido.FieldByName('id_pedido').AsString + ',' +
                                   'já foi liberado em outro momento!');
                       result := false;
                     end;
                  if cdsPedido.FieldByName('situacao_aprovacao').AsInteger = 2 then
                     begin
                       ShowMessage('Pedido de venda: ' + cdsPedido.FieldByName('id_pedido').AsString + ',' +
                                   'já foi reprovado em outro momento!');
                       result := false;
                     end;
                  ShowMessage('Por favor atualize os dados da tela teclando <F5>!');
                  cdsPedido.Last;
                end;
             cdsPedido.Next;
           end;
      end;

   cdsPedido.Close;

   finally
      FreeAndNil(cdsPedido);
   end;
end;

procedure TFAT_FM_M_LIB.Visualizardadosdopedido1Click(Sender: TObject);
var
  IdPedido: String;
begin

  IdPedido := dmGeral.BUS_CD_M_PED.FieldByName('id_pedido').AsString;
  if not dmGeral.BUS_CD_M_PED.IsEmpty then
      begin
        try
          CSU_FM_M_PED := TCSU_FM_M_PED.Create(Self);
          dmGeral.BUS_CD_M_PED.filtered := true;
          dmGeral.BUS_CD_M_PED.filter := 'ID_PEDIDO = ' + IdPedido;
            //dmGeral.BUS_CD_M_PED.DataRequest(VarArrayOf([0,cdsDocumentosEMPRESA.Text, cdsDocumentosDOCUMENTO.Text]));
          CSU_FM_M_PED.ShowModal;
          CSU_FM_M_PED.Free;

        finally
          dmGeral.BUS_CD_M_PED.filtered :=false;
          dmGeral.BUS_CD_M_PED.Locate('id_pedido',IdPedido,[]);
        end;
     end;
end;

end.
