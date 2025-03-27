unit FAT_RN_R_PVE;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Vcl.StdCtrls,frxClass,JvToolEdit,Vcl.Forms;
var
xOpcoes,xCondEmpresa,xCondTipoEstoque,xCondCfop,xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,xCondRota,xCondGrupo,xCondMecanico: string;
procedure ExibirRel(codigoRel:string;lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                    lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp,lbxRegDisp,lbxRegSel,lboxCliente,lboxProduto,lboxRotSel,lboxRotDisp,lboxGrupo,lboxMecanico:TListBox;
                    deInicial,deFinal:TJvDateEdit;cbbTipoRel,cbbQuebra1,cbbQuebra2,cbbOficina:TComboBox;chbExibirQtdeCliente,chbExibirAuxVend,chbVendaFunLog:TCheckBox;Fastreport0,Fastreport1,Fastreport2,Fastreport3,Fastreport4,
                    Fastreport5,Fastreport6,Fastreport7,Fastreport8,Fastreport9,Fastreport10,Fastreport11,Fastreport12,
                    Fastreport13,Fastreport14,Fastreport15,Fastreport16,Fastreport17,Fastreport18:TfrxReport);
procedure PreencherCondicao(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                            lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp,lbxRegDisp,lbxRegSel,lboxCliente,lboxProduto,lboxRotSel,lboxRotDisp,lboxGrupo,lboxMecanico:TListBox;
                            deInicial,deFinal:TJvDateEdit;chbExibirQtdeCliente,chbVendaFunLog:TCheckBox);
function TestarCampos(deInicial,deFinal:TJvDateEdit;EmpresaSel:TlistBox): Boolean;

implementation
Uses uDmGeral,enConstantes, uProxy, FAT_UN_R_PVE;
procedure ExibirRel(codigoRel:string;lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                    lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp,lbxRegDisp,lbxRegSel,lboxCliente,lboxProduto,lboxRotSel,lboxRotDisp,lboxGrupo,lboxMecanico:TListBox;
                    deInicial,deFinal:TJvDateEdit;cbbTipoRel,cbbQuebra1,cbbQuebra2,cbbOficina:TComboBox;chbExibirQtdeCliente,chbExibirAuxVend,chbVendaFunLog:TCheckBox;Fastreport0,Fastreport1,Fastreport2,Fastreport3,Fastreport4,
                    Fastreport5,Fastreport6,Fastreport7,Fastreport8,Fastreport9,Fastreport10,Fastreport11,Fastreport12,
                    Fastreport13,Fastreport14,Fastreport15,Fastreport16,Fastreport17,Fastreport18:TfrxReport);
var
  rDtaIni, rDtaFin, PathImg,descQuebra2: String;
  LogoEmpresa: TfrxPictureView;
  codTipoRel,codQuebra1,codQuebra2:integer;
  groupFooter: TfrxGroupFooter;
  groupHeader: TfrxGroupHeader;
  rQuebraPorEmp:String;
begin

   if lbxRelatorios.ItemIndex = -1 then
      begin
         Showmessage('Nenhum relatório foi selecionado.');
      end;


    codTipoRel := StrToInt(copy(codigoRel,1,2));
    codQuebra1 := StrToInt(copy(codigoRel,3,2));
    codQuebra2 := StrToInt(copy(codigoRel,5,2));
   // Período
   rDtaIni := deInicial.Text;
   rDtaFin := deFinal.Text;

   if chbExibirQtdeCliente.Checked then
      rQuebraPorEmp:='1'
   else
      rQuebraPorEmp:='0';




   PreencherCondicao(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                     lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp,lbxRegDisp,lbxRegSel,lboxCliente,lboxProduto,lboxRotSel,lboxRotDisp,lboxGrupo,lboxMecanico,
                     deInicial,deFinal,chbExibirQtdeCliente,chbVendaFunLog);

  { if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Vendas por Condição de Pagamento') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Vendas por Vendedor') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Vendas por Estado') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Vendas por Cliente') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07 - Vendas por Perfil do Cliente') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '13 - Vendas por Perfil e Região') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '14 - Vendas por Cidade') then
      begin  }
  { if (codigoRel = '010200') or
      (codigoRel = '010800') or
      (codigoRel = '010300') or
      (codigoRel = '010100') or
      (codigoRel = '010700')or
      (codigoRel = '010701') or
      (codigoRel = '010000') then
      begin  }


     FAT_FM_R_PVE.FAT_CD_R_PVE_QTD_CLI.Close;
     if chbExibirQtdeCliente.Checked then
       begin
          if ((codTipoRel = 1) and (codQuebra1=10)) then
             begin
               xCondFornecedor := '';
             end;

           if (codigoRel = '020300') then
             begin
               xCondFornecedor := '';
               xCondProduto := '';
             end;

          FAT_FM_R_PVE.FAT_CD_R_PVE_QTD_CLI.Data :=
          FAT_FM_R_PVE.FAT_CD_R_PVE_QTD_CLI.DataRequest(
                 VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                             xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                             xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,'',xCondRota,cbboficina.ItemIndex]));

       end;


    if chbExibirAuxVend.Checked then
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXC.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXD.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXP.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXV.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXC.Data :=
          FAT_FM_R_PVE.FAT_CD_R_PVE_AXC.DataRequest(
                 VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                             xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                             xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,'',xCondRota,cbboficina.ItemIndex]));

        FAT_FM_R_PVE.FAT_CD_R_PVE_AXD.Data :=
          FAT_FM_R_PVE.FAT_CD_R_PVE_AXD.DataRequest(
                 VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                             xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                             xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,'',xCondRota,cbboficina.ItemIndex]));

        FAT_FM_R_PVE.FAT_CD_R_PVE_AXP.Data :=
          FAT_FM_R_PVE.FAT_CD_R_PVE_AXP.DataRequest(
                 VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                             xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                             xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,'',xCondRota,cbboficina.ItemIndex]));

        FAT_FM_R_PVE.FAT_CD_R_PVE_AXV.Data :=
          FAT_FM_R_PVE.FAT_CD_R_PVE_AXV.DataRequest(
                 VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                             xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                             xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,'',xCondRota,cbboficina.ItemIndex]));
      end
    else
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXC.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXD.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXP.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXV.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXC.Open;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXD.Open;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXP.Open;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXV.Open;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXC.EmptyDataSet;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXD.EmptyDataSet;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXP.EmptyDataSet;
        FAT_FM_R_PVE.FAT_CD_R_PVE_AXV.EmptyDataSet;
      end;


     if (codTipoRel = 1) and
         (not (codQuebra1 = 10)) and
         (not (codigoRel='010600')) and
         (not (codigoRel='010507')) and
         (not (codigoRel='010500')) and
         (not (codigoRel='010700'))  and
         (not (codigoRel='010207')) and
         (not (codigoRel='010210')) and
         (not (codigoRel='010702')) then
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_01.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_02.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_03.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_04.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_05.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_06.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_07.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_01.Data :=
           FAT_FM_R_PVE.FAT_CD_R_PVE_01.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,codigoRel{lbxRelatorios.ItemIndex},xCondRota,cbboficina.ItemIndex,rQuebraPorEmp,xCondGrupo,xCondMecanico]));


        if FAT_FM_R_PVE.cbbQuebra.ItemIndex = 10 then
          begin
            FAT_FM_R_PVE.FAT_CD_R_NOT_ROT.Close;
            FAT_FM_R_PVE.FAT_CD_R_NOT_ROT.Data :=
              FAT_FM_R_PVE.FAT_CD_R_NOT_ROT.DataRequest(
                VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondRota, xCondVendedor,cbboficina.ItemIndex]));
          end
        else
          begin
            FAT_FM_R_PVE.FAT_CD_R_NOT_ROT.Close;
            FAT_FM_R_PVE.FAT_CD_R_NOT_ROT.Open;
            FAT_FM_R_PVE.FAT_CD_R_NOT_ROT.EmptyDataSet;
          end;
      end;

  { if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Vendas por Grupo de Item') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Vendas por Item') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Vendas por Fornecedor') then
      begin  }
  { if (codigoRel = '010500') or
      (codigoRel = '010601') or
      (codigoRel = '010400') then
      begin }

    if (codigoRel = '010600') or
      (codigoRel = '010700') or
      (codigoRel = '010500') then
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_01.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_02.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_03.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_04.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_05.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_06.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_07.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_02.Data :=
           FAT_FM_R_PVE.FAT_CD_R_PVE_02.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,codigoRel{lbxRelatorios.ItemIndex},xCondRota,cbboficina.ItemIndex,rQuebraPorEmp,xCondGrupo,xCondMecanico]));
      end;

   {if (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Vendas por Cliente e Item') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Vendas por Item e Cliente') or
      (lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '10 - Vendas por Fornecedor e Item') then
      begin }
   {if (codigoRel = '010101') or
      (codigoRel = '010600') or
      (codigoRel = '010401') then
      begin }

   if (codigoRel = '010207') or
      (codigoRel = '010702') or
      (codigoRel = '010507') then
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_01.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_02.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_03.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_04.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_05.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_06.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_07.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_03.Data :=
           FAT_FM_R_PVE.FAT_CD_R_PVE_03.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,codigoRel{lbxRelatorios.ItemIndex},xCondRota,cbboficina.ItemIndex,rQuebraPorEmp,xCondGrupo,xCondMecanico]));
      end;


   if (codTipoRel = 1) and
      (codQuebra1 = 10) then
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_01.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_02.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_03.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_04.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_05.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_06.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_07.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.Data :=
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               '',xCondRegiao,xCondCliente,'',codigoRel,xCondRota,cbboficina.ItemIndex,rQuebraPorEmp]));
      end;


  { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '11 - Resumo por Vendedor'  then
      begin }
   {if codigoRel = '0001'  then
      begin }
    if codigoRel = '020200'  then
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_01.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_02.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_03.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_04.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_05.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_06.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_07.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_04.Data :=
           FAT_FM_R_PVE.FAT_CD_R_PVE_04.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,codigoRel{lbxRelatorios.ItemIndex},xCondRota,cbboficina.ItemIndex,rQuebraPorEmp,xCondGrupo,xCondMecanico]));
      end;

  { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '12 - Resumo por Grupo'  then
      begin }
  { if codigoRel = '0000'  then
      begin }
    if codigoRel = '020100'  then
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_01.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_02.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_03.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_04.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_05.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_06.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_07.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_05.Data :=
           FAT_FM_R_PVE.FAT_CD_R_PVE_05.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,codigoRel{lbxRelatorios.ItemIndex},xCondRota,cbboficina.ItemIndex,rQuebraPorEmp,xCondGrupo,xCondMecanico]));
      end;

    if codigoRel = '020300'  then
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_01.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_02.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_03.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_04.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_05.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_06.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_07.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_07.Data :=
           FAT_FM_R_PVE.FAT_CD_R_PVE_07.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,xCondRegiao,xCondCliente,codigoRel,xCondRota,cbboficina.ItemIndex,rQuebraPorEmp]));
      end;

    if codigoRel = '010210'  then
      begin
        FAT_FM_R_PVE.FAT_CD_R_PVE_01.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_02.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_03.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_04.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_05.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_06.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_07.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_08.Close;
        FAT_FM_R_PVE.FAT_CD_R_PVE_06.Data :=
           FAT_FM_R_PVE.FAT_CD_R_PVE_06.DataRequest(
                   VarArrayOf([xCondEmpresa, rDtaIni, rDtaFin, xCondTipoEstoque, xCondCfop,
                               xCondCondicaoPagamento,xCondVendedor,xCondPerfilCliente,
                               xCondFornecedor,xCondRegiao,xCondCliente,xCondProduto,codigoRel{lbxRelatorios.ItemIndex},xCondRota,cbboficina.ItemIndex,rQuebraPorEmp,xCondGrupo,xCondMecanico]));
      end;




   if (not FAT_FM_R_PVE.FAT_CD_R_PVE_01.IsEmpty) or (not FAT_FM_R_PVE.FAT_CD_R_PVE_02.IsEmpty) or
      (not FAT_FM_R_PVE.FAT_CD_R_PVE_03.IsEmpty) or (not FAT_FM_R_PVE.FAT_CD_R_PVE_04.IsEmpty) or
      (not FAT_FM_R_PVE.FAT_CD_R_PVE_05.IsEmpty) or (not FAT_FM_R_PVE.FAT_CD_R_PVE_06.IsEmpty) or
      (not FAT_FM_R_PVE.FAT_CD_R_PVE_07.IsEmpty) or (not FAT_FM_R_PVE.FAT_CD_R_PVE_08.IsEmpty) then
      begin
        PathImg := ExtractFilePath(Application.ExeName)+'emp'+dmGeral.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';

         if (codTipoRel = 1) and
            (not (codQuebra1=10)) and
            (not (codigoRel='010600')) and
            (not (codigoRel='010507')) and
            (not (codigoRel='010500')) and
            (not (codigoRel='010700'))  and
            (not (codigoRel='010207')) and
            (not (codigoRel='010210')) and
            (not (codigoRel='010702')) then
            begin

            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport0.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport0.Name,xCodLme,xRevLme,nil);
            groupHeader := TfrxGroupHeader (fastreport0.FindComponent('GroupHeader2'));
            groupFooter := TfrxGroupFooter (fastreport0.FindComponent('GroupFooter2'));

            descQuebra2 := copy(cbbQuebra2.Items[cbbQuebra2.ItemIndex],6,Length(cbbQuebra2.Items[cbbQuebra2.ItemIndex])-5);
            if (codQuebra2=0) or (codQuebra1 = codQuebra2)  then
              begin
                 groupHeader.Visible := false;
                 groupFooter.Visible := false;
                 descQuebra2 := '';
              end
            else
              begin
               groupHeader.Visible := true;
               groupFooter.Visible := true;
              end;

            if FAT_FM_R_PVE.FAT_CD_R_NOT_ROT.IsEmpty then
              FastReport0.Variables['ft_rot'] := QuotedStr('False')
            else
              FastReport0.Variables['ft_rot'] := QuotedStr('True');


            TfrxGroupHeader (fastreport0.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport0.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;

            Fastreport0.Variables['nomeQuebra1'] := QuotedStr(copy(cbbQuebra1.Items[cbbQuebra1.ItemIndex],6,Length(cbbQuebra1.Items[cbbQuebra1.ItemIndex])-5));
            Fastreport0.Variables['nomeQuebra2'] := QuotedStr(descQuebra2);
            Fastreport0.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport0.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport0.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport0.PrepareReport();
            Fastreport0.ShowReport();
          end;


       { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '00 - Vendas por Condição de Pagamento' then
          begin }
       { if codigoRel = '010200' then
          begin

            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport1.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport1.Name,xCodLme,xRevLme,nil);
            Fastreport1.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport1.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport1.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport1.PrepareReport();
            Fastreport1.ShowReport();
          end;  }

        {if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '01 - Vendas por Vendedor' then
          begin }
        {if codigoRel = '010800' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport2.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport2.Name,xCodLme,xRevLme,nil);
            Fastreport2.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport2.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport2.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport2.PrepareReport();
            Fastreport2.ShowReport();
          end;  }

       { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '02 - Vendas por Grupo de Item' then
          begin }
       { if codigoRel = '010500' then
          begin }
         if codigoRel = '010600' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport3.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport3.Name,xCodLme,xRevLme,nil);
            TfrxGroupHeader (fastreport3.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport3.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport3.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport3.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport3.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport3.PrepareReport();
            Fastreport3.ShowReport();
          end;

       { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '03 - Vendas por Estado' then
          begin  }
       { if codigoRel = '010300' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport4.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport4.Name,xCodLme,xRevLme,nil);
            Fastreport4.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport4.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport4.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport4.PrepareReport();
            Fastreport4.ShowReport();
          end;  }

       { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '04 - Vendas por Cliente' then
          begin }
        { if codigoRel = '010100' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport5.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport5.Name,xCodLme,xRevLme,nil);
            Fastreport5.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport5.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport5.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport5.PrepareReport();
            Fastreport5.ShowReport();
          end;  }

        {if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '05 - Vendas por Item' then
          begin }
        {if codigoRel = '010601' then
          begin }
        if codigoRel = '010700' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport6.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport6.Name,xCodLme,xRevLme,nil);
            TfrxGroupHeader (fastreport6.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport6.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport6.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport6.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport6.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport6.PrepareReport();
            Fastreport6.ShowReport();
          end;

       { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '06 - Vendas por Fornecedor' then
          begin }
       { if codigoRel = '010400' then
          begin }
         if codigoRel = '010500' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport7.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport7.Name,xCodLme,xRevLme,nil);
            TfrxGroupHeader (fastreport7.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport7.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport7.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport7.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport7.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport7.PrepareReport();
            Fastreport7.ShowReport();
          end;

        {if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '07 - Vendas por Perfil do Cliente' then
          begin }
        {if codigoRel = '010700' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport8.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport8.Name,xCodLme,xRevLme,nil);
            Fastreport8.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport8.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport8.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport8.PrepareReport();
            Fastreport8.ShowReport();
          end;  }

        {if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '08 - Vendas por Cliente e Item' then
          begin }
        {if codigoRel = '010101' then
          begin }
         if codigoRel = '010207' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport9.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport9.Name,xCodLme,xRevLme,nil);
            TfrxGroupHeader (fastreport9.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport9.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport9.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport9.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport9.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport9.PrepareReport();
            Fastreport9.ShowReport();
          end;

       { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '09 - Vendas por Item e Cliente' then
          begin  }
       { if codigoRel = '010600' then
          begin }
         if codigoRel = '010702' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport10.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport10.Name,xCodLme,xRevLme,nil);
            TfrxGroupHeader (fastreport10.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport10.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport10.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport10.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport10.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport10.PrepareReport();
            Fastreport10.ShowReport();
          end;

        {if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '10 - Vendas por Fornecedor e Item' then
          begin }
        { if codigoRel = '010401' then
          begin }
          if codigoRel = '010507' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport11.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport11.Name,xCodLme,xRevLme,nil);
            TfrxGroupHeader (fastreport11.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport11.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport11.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport11.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport11.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport11.PrepareReport();
            Fastreport11.ShowReport();
          end;

        {if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '11 - Resumo por Vendedor' then
          begin }
        {if codigoRel = '0001' then
          begin}
         if codigoRel = '020200' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport12.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport12.Name,xCodLme,xRevLme,nil);
            TfrxGroupHeader (fastreport12.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport12.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport12.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport12.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport12.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport12.PrepareReport();
            Fastreport12.ShowReport();
          end;



        if (codTipoRel = 1) and   //Quando 1º quebra for 10-Forma de Pagamento em Analitico
           (codQuebra1 = 10)  then
            begin

            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport18.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport18.Name,xCodLme,xRevLme,nil);
            groupHeader := TfrxGroupHeader (fastreport18.FindComponent('GroupHeader2'));
            groupFooter := TfrxGroupFooter (fastreport18.FindComponent('GroupFooter2'));

            descQuebra2 := copy(cbbQuebra2.Items[cbbQuebra2.ItemIndex],6,Length(cbbQuebra2.Items[cbbQuebra2.ItemIndex])-5);
            if (codQuebra2=0) or (codQuebra1 = codQuebra2)  then
              begin
                 groupHeader.Visible := false;
                 groupFooter.Visible := false;
                 descQuebra2 := '';
              end
            else
              begin
               groupHeader.Visible := true;
               groupFooter.Visible := true;
              end;
            TfrxGroupHeader (fastreport18.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport18.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport18.Variables['nomeQuebra1'] := QuotedStr(copy(cbbQuebra1.Items[cbbQuebra1.ItemIndex],6,Length(cbbQuebra1.Items[cbbQuebra1.ItemIndex])-5));
            Fastreport18.Variables['nomeQuebra2'] := QuotedStr(descQuebra2);
            Fastreport18.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport18.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport18.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport18.PrepareReport();
            Fastreport18.ShowReport();
          end;


          //Resumo por Forma de Pagamento
         if codigoRel = '020300' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport17.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;

            dmGeral.BusCodigoRevListMestre(true,false,Fastreport17.Name,xCodLme,xRevLme,nil);
            TfrxGroupHeader (fastreport17.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport17.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport17.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport17.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport17.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport17.PrepareReport();
            Fastreport17.ShowReport();
          end;

        {if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '12 - Resumo por Grupo' then
          begin  }
        {if codigoRel = '0000' then
          begin}
        if codigoRel = '020100' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport13.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport13.Name,xCodLme,xRevLme,nil);
            Fastreport13.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            TfrxGroupHeader (fastreport13.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport13.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;

            FastReport13.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport13.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport13.PrepareReport();
            Fastreport13.ShowReport();
          end;

        if codigoRel = '010210' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport16.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport16.Name,xCodLme,xRevLme,nil);
            TfrxGroupHeader (fastreport16.FindComponent('GroupHeader3')).Visible := chbExibirQtdeCliente.Checked;
            TfrxGroupFooter (fastreport16.FindComponent('GroupFooter3')).Visible := chbExibirQtdeCliente.Checked;


            Fastreport16.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            Fastreport16.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport16.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport16.PrepareReport();
            Fastreport16.ShowReport();
          end;



        {if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '13 - Vendas por Perfil e Região' then
          begin }
        {if codigoRel = '010701' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport14.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport14.Name,xCodLme,xRevLme,nil);
            Fastreport14.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport14.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport14.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport14.PrepareReport();
            Fastreport14.ShowReport();
          end;  }

       { if lbxRelatorios.Items[lbxRelatorios.ItemIndex] = '14 - Vendas por Cidade' then
          begin }
        {if codigoRel = '010000' then
          begin
            if FileExists(PathImg) then
               begin
                  LogoEmpresa := TfrxPictureView(Fastreport14.FindObject('imgEmpresa1'));
                  if Assigned(LogoEmpresa) then
                     LogoEmpresa.Picture.LoadFromFile(PathImg);
               end;
            dmGeral.BusCodigoRevListMestre(true,false,Fastreport15.Name,xCodLme,xRevLme,nil);
            Fastreport15.Variables['ft_codlme'] := QuotedStr(dmGeral.MontarCodRevLme(xCodLme,xRevLme));
            FastReport15.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
            Fastreport15.Variables['Opcoes'] := QuotedStr(xOpcoes);
            Fastreport15.PrepareReport();
            Fastreport15.ShowReport();
          end; }
      end
   else
      begin
         ShowMessage('Nenhum registro foi encontrado.');
      end;
end;
procedure PreencherCondicao(lbxRelatorios,lbxEmpresas,lbxEstoque,lbxCfop,lbxPagamento,lbxVendedor,lbxCliente,lbxFornecedor,
                            lbxEstoqueDisp,lbxCfopDisp,lbxPagamentoDisp,lbxClienteDisp,lbxRegDisp,lbxRegSel,lboxCliente,lboxProduto,lboxRotSel,lboxRotDisp,lboxGrupo,lboxMecanico:TListBox;
                            deInicial,deFinal:TJvDateEdit;chbExibirQtdeCliente,chbVendaFunLog:TCheckBox);
var
  i: integer;
  Cond: String;
  opcoesEmpresa,opcoesFornecedor,opcoesTipoEstoque,opcoesCfop,
  opcoesCondicaoPagamento,opcoesVendedor,opcoesPerfilCliente,opcoesRegiao,opcoesCliente,opcoesProduto,opcoesRota,opcoesGrupo,opcoesMecanico:string;
begin



  // Empresas ------------------------------------------------------------------
  xCondEmpresa := '';
  if lbxEmpresas.Count > 0 then
     begin
       for i := 0 to lbxEmpresas.Count - 1 do
          begin
            if xCondEmpresa <> '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa + ',' +''''+trim(copy(lbxEmpresas.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa +'                                 '+lbxEmpresas.Items[i]+ #13+#10;
               end;
            if xCondEmpresa = '' then
               begin
                 xCondEmpresa :=
                 xCondEmpresa +''''+ trim(copy(lbxEmpresas.Items[i],1,3))+'''';
                 opcoesEmpresa :=
                 opcoesEmpresa + lbxEmpresas.Items[i]+ #13+#10;
               end;
          end;
     end;

  // Tipos de Estoque ----------------------------------------------------------
  xCondTipoEstoque := '';
  if lbxEstoque.Count > 0 then
     begin
      if lbxEstoqueDisp.Count > 0 then
        begin
          for i := 0 to lbxEstoque.Count - 1 do
            begin
              if xCondTipoEstoque <> '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque + ',' +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque +'                                 '+lbxEstoque.Items[i]+ #13+#10;
               end;
              if xCondTipoEstoque = '' then
               begin
                 xCondTipoEstoque :=
                 xCondTipoEstoque +''''+trim(copy(lbxEstoque.Items[i],1,3))+'''';
                 opcoesTipoEstoque :=
                 opcoesTipoEstoque + lbxEstoque.Items[i]+ #13+#10;
               end;
          end;
     end
   else
    begin
      opcoesTipoEstoque:= 'Todos';
    End;
     end
   else
   begin
     opcoesTipoEstoque:= 'Todos';
   end;
  // CFOP ----------------------------------------------------------------------
  xCondCfop := '';
  if lbxCfop.Count > 0 then
     begin
      if lbxCfopDisp.Count > 0 then
        begin
          for i := 0 to lbxCfop.Count - 1 do
            begin
              if xCondCfop <> '' then
                 begin
                 xCondCfop :=
                 xCondCfop + ',' +''''+trim(copy(lbxCfop.Items[i],1,4))+'''';
                 opcoesCfop :=
                 opcoesCfop +'                                 '+copy(lbxCfop.Items[i],1,60)+ #13+#10;
               end;
             if xCondCfop = '' then
               begin
                 xCondCfop :=
                 xCondCfop +''''+trim(copy(lbxCfop.Items[i],1,4))+'''';
                 opcoesCfop :=
                 opcoesCfop + copy(lbxCfop.Items[i],1,60)+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesCfop:= 'Todos';
    End;
     end
  else
    begin
      opcoesCfop:= 'Todos';
    end;

  // Condição de Pagamento -----------------------------------------------------
  xCondCondicaoPagamento := '';
  if lbxPagamento.Count > 0 then
     begin
      if lbxPagamentoDisp.Count > 0 then
        begin
          for i := 0 to lbxPagamento.Count - 1 do
            begin
              if xCondCondicaoPagamento <> '' then
                 begin
                 xCondCondicaoPagamento :=
                 xCondCondicaoPagamento + ',' +''''+trim(copy(lbxPagamento.Items[i],1,3))+'''';
                 opcoesCondicaoPagamento :=
                 opcoesCondicaoPagamento +'                                 '+lbxPagamento.Items[i]+ #13+#10;
                 end;
              if xCondCondicaoPagamento = '' then
                 begin
                 xCondCondicaoPagamento :=
                 xCondCondicaoPagamento +''''+trim(copy(lbxPagamento.Items[i],1,3))+'''';
                 opcoesCondicaoPagamento :=
                 opcoesCondicaoPagamento + lbxPagamento.Items[i]+ #13+#10;
                 end;
          end;
     end
  else
    begin
      opcoesCondicaoPagamento:= 'Todos';
    End;
     end
  else
    begin
      opcoesCondicaoPagamento:= 'Todos';
    end;

  // Vendedores ----------------------------------------------------------------
  if (chbVendaFunLog.Checked=false) then
    begin
      xCondVendedor := '';
      if lbxVendedor.Count > 0 then
         begin
           for i := 0 to lbxVendedor.Count - 1 do
              begin
                if xCondVendedor <> '' then
                   begin
                     xCondVendedor :=
                     xCondVendedor + ',' +''''+trim(copy(lbxVendedor.Items[i],1,6))+'''';
                     opcoesVendedor :=
                     opcoesVendedor +'                                 '+lbxVendedor.Items[i]+ #13+#10;
                   end;
                if xCondVendedor = '' then
                   begin
                     xCondVendedor :=
                     xCondVendedor +''''+trim(copy(lbxVendedor.Items[i],1,6))+'''';
                     opcoesVendedor :=
                     opcoesVendedor + lbxVendedor.Items[i]+ #13+#10;
                   end;
              end;
         end
      else
        begin
          opcoesVendedor:= 'Todos';
        end;
    end
  else
    begin
       xCondVendedor := IntToStr(xFuncionario);
       dmgeral.BusFuncionario(0,IntToStr(xFuncionario));
       opcoesVendedor := IntToStr(xFuncionario)+' - '+ dmGeral.BUS_CD_C_FUN.FieldByName('nome').AsString;
       dmGeral.BUS_CD_C_FUN.Close;
    end;



  // Perfil do Cliente ---------------------------------------------------------
  xCondPerfilCliente := '';
  if lbxCliente.Count > 0 then
     begin
      if lbxClienteDisp.Count > 0 then
        begin
          for i := 0 to lbxCliente.Count - 1 do
            begin
              if xCondPerfilCliente <> '' then
                 begin
                 xCondPerfilCliente :=
                 xCondPerfilCliente + ',' +''''+trim(copy(lbxCliente.Items[i],1,3))+'''';
                 opcoesPerfilCliente :=
                 opcoesPerfilCliente +'                                 '+lbxCliente.Items[i]+ #13+#10;
                 end;
              if xCondPerfilCliente = '' then
                 begin
                 xCondPerfilCliente :=
                 xCondPerfilCliente +''''+trim(copy(lbxCliente.Items[i],1,3))+'''';
                 opcoesPerfilCliente :=
                 opcoesPerfilCliente + lbxCliente.Items[i]+ #13+#10;
                 end;
          end;
     end
  else
    begin
      opcoesPerfilCliente:= 'Todos';
    end;
     end
  else
    begin
      opcoesPerfilCliente:= 'Todos';
    end;

  // Fornecedores --------------------------------------------------------------
  xCondFornecedor := '';
  if lbxFornecedor.Count > 0 then
     begin
       for i := 0 to lbxFornecedor.Count - 1 do
          begin
            if xCondFornecedor <> '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor + ',' +''''+trim(copy(lbxFornecedor.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor +'                                 '+lbxFornecedor.Items[i]+ #13+#10;
               end;
            if xCondFornecedor = '' then
               begin
                 xCondFornecedor :=
                 xCondFornecedor +''''+trim(copy(lbxFornecedor.Items[i],1,6))+'''';
                 opcoesFornecedor :=
                 opcoesFornecedor + lbxFornecedor.Items[i]+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesFornecedor:= 'Todos';
    end;

  // Cliente --------------------------------------------------------------
  xCondCliente := '';
  if lboxCliente.Count > 0 then
     begin
       for i := 0 to lboxCliente.Count - 1 do
          begin
            if xCondCliente <> '' then
               begin
                 xCondCliente :=
                 xCondCliente + ',' +''''+trim(copy(lboxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente +'                                 '+lboxCliente.Items[i]+ #13+#10;
               end;
            if xCondCliente = '' then
               begin
                 xCondCliente :=
                 xCondCliente +''''+trim(copy(lboxCliente.Items[i],1,6))+'''';
                 opcoesCliente :=
                 opcoesCliente + lboxCliente.Items[i]+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesCliente:= 'Todos';
    end;

   // Produto --------------------------------------------------------------
  xCondProduto := '';
  if lboxProduto.Count > 0 then
     begin
       for i := 0 to lboxProduto.Count - 1 do
          begin
            if xCondProduto <> '' then
               begin
                 xCondProduto :=
                 xCondProduto + ',' +''''+trim(copy(lboxProduto.Items[i],1,6))+'''';
                 opcoesProduto :=
                 opcoesProduto +'                                 '+lboxProduto.Items[i]+ #13+#10;
               end;
            if xCondProduto = '' then
               begin
                 xCondProduto :=
                 xCondProduto +''''+trim(copy(lboxProduto.Items[i],1,6))+'''';
                 opcoesProduto :=
                 opcoesProduto + lboxProduto.Items[i]+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesProduto:= 'Todos';
    end;

  //Regiao-------------------------------------------------------------------------------------
  xCondRegiao := '';

   if lbxRegSel.Count > 0 then
     begin
      if lbxRegDisp.Count > 0 then
        begin
          for i := 0 to lbxRegSel.Count - 1 do
            begin
              if xCondRegiao <> '' then
               begin
                 xCondRegiao :=
                 xCondRegiao + ',' +''''+trim(copy(lbxRegSel.Items[i],1,4))+'''';
                 opcoesRegiao :=
                 opcoesRegiao +'                                 '+copy(lbxRegSel.Items[i],1,60)+ #13+#10;
               end;
             if xCondRegiao = '' then
               begin
                 xCondRegiao :=
                 xCondRegiao +''''+trim(copy(lbxRegSel.Items[i],1,4))+'''';
                 opcoesRegiao :=
                 opcoesRegiao + copy(lbxRegSel.Items[i],1,60)+ #13+#10;
               end;
          end;
     end
  else
    begin
      opcoesRegiao:= 'Todos';
    End;
     end
  else
    begin
      opcoesRegiao:= 'Todos';
    end;

  // Rota ----------------------------------------------------------
  xCondRota := '';
  if lboxRotSel.Count > 0 then
    begin
      if lboxRotDisp.Count > 0 then
        begin
          for i := 0 to lboxRotSel.Count - 1 do
            begin
              if xCondRota <> '' then
                begin
                  xCondRota :=
                  xCondRota + ',' +''''+trim(copy(lboxRotSel.Items[i],1,3))+'''';
                  opcoesRota :=
                  opcoesRota +'                                 '+lboxRotSel.Items[i] + #13+#10;
                end;
              if xCondRota = '' then
                begin
                  xCondRota :=
                  xCondRota +''''+trim(copy(lboxRotSel.Items[i],1,3))+'''';
                  opcoesRota :=
                  opcoesRota +lboxRotSel.Items[i] + #13+#10;
                end;
            end;
        end
      else
        begin
          opcoesRota := 'Todos';
        end;
    end
  else
    begin
      opcoesRota := 'Todos';
    end;

  // Grupo ----------------------------------------------------------
  xCondGrupo := '';
  if lboxGrupo.Count > 0 then
     begin
       for i := 0 to lboxGrupo.Count - 1 do
          begin
            if xCondGrupo <> '' then
               begin
                 xCondGrupo :=
                 xCondGrupo + ',' +trim(copy(lboxGrupo.Items[i],1,8));
                 opcoesGrupo :=
                 opcoesGrupo +'                                 '+lboxGrupo.Items[i] + #13+#10;
               end;
            if xCondGrupo = '' then
               begin
                 xCondGrupo :=
                 xCondGrupo +trim(copy(lboxGrupo.Items[i],1,8));
                 opcoesGrupo :=
                 opcoesGrupo +lboxGrupo.Items[i] + #13+#10;
               end;
          end;
    end
  else
    begin
      opcoesGrupo:= 'Todos';
    end;


   // Mecanico ----------------------------------------------------------------
  xCondMecanico := '';
  if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) or
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) or
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true) then
    begin
      if lboxMecanico.Count > 0 then
         begin
           for i := 0 to lboxMecanico.Count - 1 do
              begin
                if xCondMecanico <> '' then
                   begin
                     xCondMecanico :=
                     xCondMecanico + ',' +''''+trim(copy(lboxMecanico.Items[i],1,6))+'''';
                     opcoesMecanico :=
                     opcoesMecanico +'                                 '+lboxMecanico.Items[i]+ #13+#10;
                   end;
                if xCondMecanico = '' then
                   begin
                     xCondMecanico :=
                     xCondMecanico +''''+trim(copy(lboxMecanico.Items[i],1,6))+'''';
                     opcoesMecanico :=
                     opcoesMecanico + lboxMecanico.Items[i]+ #13+#10;
                   end;
              end;
         end
      else
        begin
          opcoesMecanico:= 'Todos';
        end;
    end;

  // Opções --------------------------------------------------------------------
   xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
   xOpcoes := xOpcoes + 'Período........................: ' + deInicial.Text + ' à ' + deFinal.Text + #13+#10;
   if chbExibirQtdeCliente.Checked then
      xOpcoes := xOpcoes + 'Exibir quantidade de clientes..: ' + 'Sim' + #13+#10
   else
      xOpcoes := xOpcoes + 'Exibir quantidade de clientes..: ' + 'Não' + #13+#10;

   xOpcoes := xOpcoes + 'Empresa........................: ' + opcoesEmpresa+#13+#10;
   xOpcoes := xOpcoes + 'Fornecedor.....................: ' + opcoesFornecedor+#13+#10;
   xOpcoes := xOpcoes + 'Tipo de Estoque................: ' + opcoesTipoEstoque+#13+#10;
   xOpcoes := xOpcoes + 'CFOP...........................: ' + opcoesCfop+#13+#10;
   xOpcoes := xOpcoes + 'Condições de Pagamento.........: ' + opcoesCondicaoPagamento+#13+#10;
   xOpcoes := xOpcoes + 'Vendedor.......................: ' + opcoesVendedor+#13+#10;
   xOpcoes := xOpcoes + 'Perfil do Cliente..............: ' + opcoesPerfilCliente+#13+#10;
   xOpcoes := xOpcoes + 'Regiao.........................: ' + opcoesRegiao+#13+#10;
   xOpcoes := xOpcoes + 'Cliente........................: ' + opcoesCliente+#13+#10;
   xOpcoes := xOpcoes + 'Grupo..........................: ' + opcoesGrupo+#13+#10;
   xOpcoes := xOpcoes + 'Produto........................: ' + opcoesProduto+#13+#10;
   xOpcoes := xOpcoes + 'Rota...........................: ' + opcoesRota+#13+#10;

   if (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OTA').AsBoolean=true) or
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OME').AsBoolean=true) or
      (dmGeral.CAD_CD_C_PAR_MOD.FieldByName('OQP').AsBoolean=true) then
      xOpcoes := xOpcoes + 'Mecânico.......................: ' + opcoesMecanico+#13+#10;

end;

function TestarCampos(deInicial , deFinal:TJvDateEdit;EmpresaSel:TlistBox): Boolean;
var
mens: String;
begin
  result := True;

  if (deInicial.Text = '  /  /    ') or (deFinal.Text = '  /  /    ') then
    begin
      ShowMessage('O período deve ser preenchido.');
      result := False;
    end
  else
    begin
      if (deInicial.Date >  deFinal.Date) then
        begin
          mens := mens +  '.Data inicial não pode ser maior que a data final' + #13;
        end;
    end;

  if EmpresaSel.Count = 0 then
    begin
      mens := mens +  '.É necessário selecionar pelos menos 1 empresa' + #13;
    end;

  if trim(mens) <> '' then
    begin
      ShowMessage('Atenção!' + #13 + mens);
      Result := False;
      exit;
    end;
end;
end.
