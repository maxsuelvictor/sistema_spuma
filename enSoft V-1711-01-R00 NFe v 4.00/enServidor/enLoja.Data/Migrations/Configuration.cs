using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using enLoja.Model.Cadastros;
using enLoja.Model.Enums;
using enLoja.Model.Estoque;
using enLoja.Model.Helpers;
using enLoja.Model.PCP.Cadastros;

namespace enLoja.Model.Migrations
{
    using System.Data.Entity;
    using System.Data.Entity.Migrations;

    internal sealed class Configuration : DbMigrationsConfiguration<enLoja.Model.enLojaContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(enLoja.Model.enLojaContext context)
        {


            //var seq = new CAD_EF_C_SEQ()
            //    {
            //        ID_TABELA = "CMP_TB_M_SOL",
            //        SEQUENCIA = 1
            //    };
            //context.SET_CAD_EF_C_SEQ.AddOrUpdate(seq);

            //var seq1 = new CAD_EF_C_SEQ()
            //{
            //    ID_TABELA = "CMP_TB_M_PED",
            //    SEQUENCIA = 2
            //};
            //context.SET_CAD_EF_C_SEQ.AddOrUpdate(seq1);

            //var seq2 = new CAD_EF_C_SEQ()
            //{
            //    ID_TABELA = "FAT_TB_M_NFE",
            //    SEQUENCIA = 3
            //};
            //context.SET_CAD_EF_C_SEQ.AddOrUpdate(seq2);

            //var seq3 = new CAD_EF_C_SEQ()
            //{
            //    ID_TABELA = "FAT_TB_M_NFE_ITE",
            //    SEQUENCIA = 4
            //};
            //context.SET_CAD_EF_C_SEQ.AddOrUpdate(seq3);


            //var seq4 = new CAD_EF_C_SEQ()
            //{
            //    ID_TABELA = "FAT_TB_M_PED",
            //    SEQUENCIA = 4
            //};
            //context.SET_CAD_EF_C_SEQ.AddOrUpdate(seq4);


            //var cnae = new CAD_EF_C_CNE()
            //    {
            //        ID_CNAE = "CNE01",
            //        DESCRICAO = "Teste"
            //    };

            //context.SET_CAD_EF_C_CNE.AddOrUpdate(cnae);



            //var ramo = new CAD_EF_C_RAM()
            //    {
            //        DESCRICAO = "Ramo Teste",
            //        REGIME_TRIBUTARIO = REGIME_TRIBUTARIO_ENUM.SimplesNacional,
            //        ID_CNAE = "CNE01"
            //    };

            //context.SET_CAD_EF_C_RAM.AddOrUpdate(ramo);

            //var cidade = new CAD_EF_C_CID()
            //    {
            //        ID_CIDADE = "1010101",
            //        NOME = "Teste",
            //        UF = "RS",
            //        CEP = "56300000"
            //    };

            //context.SET_CAD_EF_C_CID.AddOrUpdate(cidade);

            //// Informações de Clientes
            //var inf = new CAD_EF_C_CIN()
            //{
            //    DESCRICAO = "Teste de Informação"
            //};
            //context.SET_CAD_EF_C_CIN.AddOrUpdate(inf);

            //// Perfil do Cliente
            //var perfil = new CAD_EF_C_PEC()
            //{
            //    DESCRICAO = "Perfil 1",
            //    PER_DESCONTO = 10
            //};
            //context.SET_CAD_EF_C_PEC.AddOrUpdate(perfil);

            //// Plano de Contas
            //var plano = new CAD_EF_C_PCT()
            //{
            //    ID_PLANO = "10",
            //    DESCRICAO = "Despesa diversas",
            //    TIPO = NATUREZA_CONTA_ENUM.Analitico,
            //    TIPO_MOV = CLASSIFICA_CONTA_ENUM.Fixa,
            //    TIPO_DESP = TIPO_DESPESA_ENUM.Despesas
            //};
            //context.SET_CAD_EF_C_PCT.AddOrUpdate(plano);


            //// Centro de Custo
            //var ccusto = new CAD_EF_C_CCU()
            //{
            //    DESCRICAO = "Custo do Centro"
            //};
            //context.SET_CAD_EF_C_CCU.AddOrUpdate(ccusto);


            //// Conta Corrente
            //var conta = new CAD_EF_C_CTC()
            //{
            //    AGENCIA = "0966",
            //    CEDENTE_COD = "1",
            //    CEDENTE_NOM = "Jorgite",
            //    CEDENTE_MAIL = "jor@mail.com"
            //};
            //context.SET_CAD_EF_C_CTC.AddOrUpdate(conta);

            //// Local de Título
            //var local = new CAD_EF_C_LTO()
            //{
            //    DESCRICAO = "Em carteira"
            //};
            //context.SET_CAD_EF_C_LTO.AddOrUpdate(local);

            //// Tipo Financeiro
            //var tipofinanceiro = new CAD_EF_C_TIF()
            //{
            //    DESCRICAO = "Recebimentos",
            //    NATUREZA = DEB_CRE_ENUM.Crédito,
            //    SIGLA = "REC"
            //};
            //context.SET_CAD_EF_C_TIF.AddOrUpdate(tipofinanceiro);

            //// Natureza da Operação
            //var natureza = new CAD_EF_C_NAT()
            //{
            //    CLASSE = "N00",
            //    DESCRICAO = "Natureza teste"
            //};
            //context.SET_CAD_EF_C_NAT.AddOrUpdate(natureza);
            //SaveChanges(context);

            //// CFOP
            //var cfo = new CAD_EF_C_CFO()
            //{
            //    ID_CFO = "1102",
            //    DESCRICAO = "Compra para Comercialização",
            //    DESC_REDUZIDA = "Compra",
            //    CLASSE = "N00",
            //    TIPO = "C"
            //};
            //context.SET_CAD_EF_C_CFO.AddOrUpdate(cfo);
            //SaveChanges(context);

            //// Tipo de Movimento de Estoque
            //var tipomovimento = new CAD_EF_C_TME()
            //{
            //    DESCRICAO = "Venda a Vista",
            //    TIPO_MOVIMENTO = TME_TIPO_MOV_ENUM.Saida,
            //    ATIVO = true,
            //    ESTO_CRITICA = true,
            //    ESTO_MOVIMENTA = true,
            //    CFO_INTERNO_PF = "5102",
            //    CFO_INTERNO_PJ = "5102",
            //    CFO_EXTERNO_PF = "5102",
            //    CFO_EXTERNO_PJ = "5102"
            //};
            //context.SET_CAD_EF_C_TME.AddOrUpdate(tipomovimento);

            //var tipomovimento1 = new CAD_EF_C_TME()
            //{
            //    DESCRICAO = "Entrada por Compra",
            //    TIPO_MOVIMENTO = TME_TIPO_MOV_ENUM.Entrada,
            //    ATIVO = true,
            //    ESTO_CRITICA = true,
            //    ESTO_MOVIMENTA = true,
            //    CFO_INTERNO_PF = "1102",
            //    CFO_INTERNO_PJ = "1102",
            //    CFO_EXTERNO_PF = "1102",
            //    CFO_EXTERNO_PJ = "1102"
            //};
            //context.SET_CAD_EF_C_TME.AddOrUpdate(tipomovimento1);




            //// Forma de Pagamento
            //var formapag = new CAD_EF_C_FPG()
            //{
            //    DESCRICAO = "Boleto Bancario",
            //    VEN_ID_PLANO = "10",
            //    COM_ID_PLANO = "10",
            //    PAG_ID_PLANO = "10",
            //    PAG_ID_PLANO_JUROS = "10",
            //    PAG_ID_PLANO_DESCONTO = "10",
            //    REC_ID_PLANO = "10",
            //    REC_ID_PLANO_JUROS = "10",
            //    REC_ID_PLANO_DESCONTO = "10",
            //    ID_CCUSTO = 1,
            //    ID_CONTA = 1,
            //    ID_TIPO_FINANCEIRO = 1,
            //    TIPO = TIPO_MOV_ES_ENUM.Saida,
            //    DOC_IMPRESSO = DOC_IMPRESSO_ENUM.Boleto,
            //    CAR_DEB_CRE = DEB_CRE_ENUM.Crédito,
            //    CAR_TAXA = 10,
            //    CAR_DIA_PAG = 0,
            //    CAR_CONTA = 1,
            //    CAR_TELEFONE = "55611663",
            //    CRI_DEBI_CLIENTE = true
            //};
            //context.SET_CAD_EF_C_FPG.AddOrUpdate(formapag);


            //// Unidade de Medida
            //var unidade = new CAD_EF_C_UND()
            //{
            //    ID_UNIDADE = "PCT",
            //    DESCRICAO = "Pacote"
            //};
            //context.SET_CAD_EF_C_UND.AddOrUpdate(unidade);


            //// NCM
            //var ncm = new CAD_EF_C_NCM()
            //{
            //    ID_NCM = "02",
            //    DESCRICAO = "Outros"
            //};
            //context.SET_CAD_EF_C_NCM.AddOrUpdate(ncm);

            //// Tributos
            //var tributo = new CAD_EF_C_TRI()
            //{
            //    DESCRICAO = "Base Reduzida"
            //};
            //context.SET_CAD_EF_C_TRI.AddOrUpdate(tributo);

            //// Rota
            //var rota = new PCP_EF_C_ROT()
            //{
            //    DESCRICAO = "Juazeiro"
            //};
            //context.SET_PCP_EF_C_ROT.AddOrUpdate(rota);


            //SaveChanges(context);


            //// Grupo de Produtos
            //var grupo = new CAD_EF_C_GRU()
            // {
            //     ID_GRUPO = "1",
            //     DESCRICAO = "Grupo Diversos",
            //     ORIGEM_MERCADORIA = "0",
            //     TIPO = NATUREZA_CONTA_ENUM.Analitico,
            //     NIVEL = 0,
            //     TIPO_ITEM = "00",
            //     ID_TRIBUTO = 1,
            //     MVA = 0,
            //     ID_ST_PIS_ENTRADA = "01",
            //     ID_ST_COF_ENTRADA = "01",
            //     ID_ST_IPI_ENTRADA = "01",
            //     ID_ST_PIS_SAIDA = "01",
            //     ID_ST_COF_SAIDA = "01",
            //     ID_ST_IPI_SAIDA = "01",
            //     PROMO_ATIVA = false,
            //     PROMO_PERC = 0,
            //     ALI_INTERNA_ICMS = 17

            // };
            //context.SET_CAD_EF_C_GRU.AddOrUpdate(grupo);

            //// Informações para o Fisco
            //var fisco = new CAD_EF_C_INF()
            //{
            //    DESCRICAO = "Isento conforme artigo xxx do RICMS zzzz"
            //};
            //context.SET_CAD_EF_C_INF.AddOrUpdate(fisco);


            //// Situação de Cheque
            //var scheque = new CAD_EF_C_CHS()
            //{
            //    DESCRICAO = "Situação 1",
            //    EM_ABERTO = true,
            //    PAGO = false,
            //    PAGO_PARCIAL = false,
            //    PENDENTE = false,
            //    RESGATADO = false,
            //    TIPO_DEVOLVIDO = false
            //};
            //context.SET_CAD_EF_C_CHS.AddOrUpdate(scheque);


            //// Histórico de Cheque
            //var hcheque = new CAD_EF_C_CHH()
            //{
            //    DESCRICAO = "Histórico 1",
            //    TIPO_MOVIMENTO = 1,
            //    ID_CHS_ORIGEM = 1,
            //    ID_CHS_DESTINO = 1,
            //    ID_TIPO_FINANCEIRO = 1,
            //    ID_TIPO_FINANCEIRO_FAC = 1
            //};
            //context.SET_CAD_EF_C_CHH.AddOrUpdate(hcheque);


            //// Condição de Pagamento
            //var condicao = new CAD_EF_C_CPG()
            //{
            //    ATIVO = true,
            //    DESCRICAO = "A Vista",
            //    TIPO_PAGAMENTO = IND_PAGAMENTO_ENUM.AVista,
            //    FATOR_PRECO = 1,
            //    PRAZO = 30,
            //    UTILIZA_PRAZO = true
            //};
            //context.SET_CAD_EF_C_CPG.AddOrUpdate(condicao);
            //SaveChanges(context);

            //// Condição de Pagamento
            //var condicao1 = new CAD_EF_C_CPG()
            //{
            //    ATIVO = true,
            //    DESCRICAO = "A Prazo",
            //    TIPO_PAGAMENTO = IND_PAGAMENTO_ENUM.APrazo,
            //    FATOR_PRECO = 1,
            //    PRAZO = 30,
            //    UTILIZA_PRAZO = true
            //};
            //context.SET_CAD_EF_C_CPG.AddOrUpdate(condicao1);
            //SaveChanges(context);



            //// Cliente
            //var cliente = new CAD_EF_C_CLI()
            //{
            //    NOME = "Rodrigo Castro",
            //    PESSOA = PESSOA_ENUM.Física,
            //    ENDERECO = "Rua das Favas",
            //    CEP = "56330545",
            //    NUMERO = "10",
            //    BAIRRO = "Caminho do Sol",
            //    ID_CIDADE = "1010101",
            //    ID_ROTA = 1,
            //    ATIVO = true,
            //    LIM_VALOR = 10,
            //    LIM_SALDO = 12,
            //    LIM_VALIDADE = DateTime.Now.AddYears(20),
            //    SEXO = SEXO_ENUM.Feminino,
            //    SITUACAO = CLI_SITUACAO_ENUM.Normal,
            //    DTA_NASCIMENTO = DateTime.Now,
            //    DTA_CADASTRO = DateTime.Now,
            //    TIPO_CLIENTE = TIPO_CLIENTE_ENUM.Consumidor,
            //    DTA_ULT_COMPRA = DateTime.Now,
            //    DTA_PRI_COMPRA = DateTime.Now,
            //    ID_PERFIL_CLI = 1
            //};
            //context.SET_CAD_EF_C_CLI.AddOrUpdate(cliente);

            //// Fornecedor
            //var fornecedor = new CAD_EF_C_FOR()
            //{
            //    DESCRICAO = "Fornecedor de Papel LTDA",
            //    FANTASIA = "Papelandia",
            //    ENDERECO = "Rua dos Mamilos",
            //    CEP = "56330555",
            //    NUMERO = "21",
            //    BAIRRO = "Castlevania",
            //    ID_CIDADE = "1010101",
            //    ATIVO = true,
            //    LIM_VALOR = 10,
            //    DTA_FUNDACAO = DateTime.Now,
            //    DTA_CADASTRO = DateTime.Now,
            //    TRANSPORTADORA = false
            //};
            //context.SET_CAD_EF_C_FOR.AddOrUpdate(fornecedor);
            //SaveChanges(context);


            //// Item
            //var item = new CAD_EF_C_ITE()
            //{
            //    ATIVO = true,
            //    CARDAPIO = false,
            //    DESCRICAO = "Farinha",
            //    FANTASIA = "Mandioca",
            //    ID_FORNECEDOR = 1,
            //    ID_GRUPO = "1",
            //    ID_NCM = "02",
            //    ID_UND_COMPRA = "PCT",
            //    ID_UND_VENDA = "PCT",
            //    PES_LIQUIDO = 10,
            //    PES_BRUTO = 10,
            //    EST_MINIMO = 10
            //};
            //context.SET_CAD_EF_C_ITE.AddOrUpdate(item);

            //var item1 = new CAD_EF_C_ITE()
            //{
            //    ATIVO = true,
            //    CARDAPIO = false,
            //    DESCRICAO = "Acucar",
            //    FANTASIA = "Cana",
            //    ID_FORNECEDOR = 1,
            //    ID_GRUPO = "1",
            //    ID_NCM = "02",
            //    ID_UND_VENDA = "PCT",
            //    ID_UND_COMPRA = "PCT",
            //    PES_LIQUIDO = 15,
            //    PES_BRUTO = 18,
            //    EST_MINIMO = 50
            //};
            //context.SET_CAD_EF_C_ITE.AddOrUpdate(item1);





            //var perfilSegurança = new CAD_EF_C_PES
            //{
            //    DESCRICAO = "Administrador",
            //    CAD_EF_C_PES_MOD = new List<CAD_EF_C_PES_MOD>
            //    {
            //        new CAD_EF_C_PES_MOD
            //        {
            //            FORMULARIO = "CAD_PG_C_PES",
            //            DESCRICAO = "Cadastro de Clientes",
            //            CHAVE = Criptografia.Criptografar("CAD_PG_C_PES" + 1),
            //            MENU = "Tabelas",
            //            ATIVO = true
            //        }
            //    },
            //};
            //context.SET_CAD_EF_C_PES.AddOrUpdate(perfilSegurança);
            //SaveChanges(context);

            //var funcionario = new CAD_EF_C_FUN()
            //    {

            //        ATIVO = true,
            //        NOME = "Mariel",
            //        ENDERECO = "Rua 03",
            //        CEP = "56300-000",
            //        NUMERO = "10",
            //        TEL_FIXO = "87",
            //        TEL_MOVEL = "87",
            //        DOC_CPF = "23862444589",
            //        DOC_IDENTIDADE = "122",
            //        BAIRRO = "Bairro",
            //        ID_CIDADE = "1010101",
            //        ESTADO = "BA",
            //        EMAIL = "email@email.com",
            //        FOTO = new byte[] { },
            //        SEXO = 0,
            //        DTA_NASCIMENTO = DateTime.Now,
            //        DTA_CADASTRO = DateTime.Now,
            //        LOGIN = "admin",
            //        SENHA = Criptografia.Criptografar("senha"),
            //        DTA_SENHA_EXPIRA = DateTime.Now.AddYears(20),
            //        ID_PERFIL_SEG = 1,
            //        SEG_ALT_LIM_CLI = false,
            //        SEG_ALT_SIT_CLI = false,
            //        SEG_ALT_PRE_PRO = false,
            //        SEG_HAB_BOT_EXC = false
            //    };

            //context.SET_CAD_EF_C_FUN.AddOrUpdate(funcionario);
            //SaveChanges(context);

            //var empresa = new CAD_EF_C_PAR()
            //    {
            //        EMP_CNPJ = "69332784000151",
            //        ID_RAMO = 1,
            //        EMP_RAZAO = "Nova Empresa",
            //        EMP_ENDERECO = "Endereço",
            //        EMP_NUMERO = "555",
            //        EMP_COMPLEMENTO = "Comple",
            //        EMP_BAIRRO = "Bairro",
            //        ID_CIDADE = "1010101",
            //        EMP_CEP = "98280000",
            //        EMP_TELEFONE = "999999",
            //        EMP_FAX = "8888888888",
            //        EMP_EMAIL = "email@mail.com",
            //        EMP_SITE = "site.com.br",
            //        EMP_FANTASIA = "Nome Fantasia",
            //        EMP_IM = "IM",
            //        EMP_IE = "IE",
            //        EMP_SUFRAMA = "SUF",
            //        EMP_LOGO = new byte[] { },
            //        EMP_NUMERO_JUNTA = "3333",
            //        RES_NOME = "Fabio",
            //        RES_QUALIFICACAO = "Qualif",
            //        RES_CPF = "42923108400",
            //        RES_CEP = "98280000",
            //        RES_ENDERECO = "Rual Tal",
            //        RES_NUMERO = "888",
            //        RES_COMPLEMENTO = "Complem.",
            //        RES_BAIRRO = "Bairro",
            //        RES_CP = "CP",
            //        RES_TELEFONE = "88888",
            //        RES_FAX = "9999",
            //        RES_EMAIL = "email@email.com",
            //        CNT_NOME = "Nome",
            //        CNT_CPF = "1234567",
            //        CNT_CRC = "88888888",
            //        CNT_CNPJ = "9999999999999",
            //        CNT_CEP = "98280000",
            //        CNT_ENDERECO = "endereço",
            //        CNT_NUMERO = "987",
            //        CNT_COMPLEMENTO = "Comple.",
            //        CNT_BAIRRO = "Bairro",
            //        CNT_TELEFONE = "4444444",
            //        CNT_FAX = "333333",
            //        CNT_EMAIL = "contador@email.com",
            //        CNT_ID_CIDADE = "PBI",
            //        CNT_QUALIFICACAO = "Contador",
            //        CNT_CP = "CP"
            //    };
            //empresa.CAD_EF_C_PAR_CTR = new CAD_EF_C_PAR_CTR()
            //    {
            //        ID_EMPRESA = empresa.ID_EMPRESA,
            //        PED_CLIENTE = 1,
            //        TAX_JUROS_MENSAL = 10,
            //        ATIVA_PRODUCAO = false,
            //        PER_COFINS = 10,
            //        PER_PIS = 10,
            //        DIA_PROTESTO = 10,
            //        PER_IR = 10,
            //        PER_CSSL = 10,
            //        PER_DESCONTO = 10,
            //        VLR_LIM_MAXIMO = 1000,
            //        MES_LIMITE = 2,
            //        PER_ISS = 10,
            //        PED_ACEITA_EST_NEGATIVO = true,
            //        PDE_ID_FORMA_PAG = 1,
            //        PDE_ID_FORNECDOR = 1,
            //        PDE_ID_CCUSTO = 1,
            //        PDE_ID_LOCAL_TITULO = 1,
            //        PED_ALTERA_PRECO = true,
            //        MSG_EMAIL_COTACAO = "Teste",
            //        NFE_MODELO = "55",
            //        ECF_MODELO = "MOD",
            //        ECF_SERIE = "SER",
            //        PDE_ID_TIPO_FINANCEIRO = 1,
            //        EFF_LAYOUT = "111",
            //        EFF_FINALIDADE = "1",
            //        EFF_PERFIL = "1",
            //        EFF_ATIVIDADE = "1",
            //        EFC_IND_REG_CUM = "1",
            //        EFC_LAYOUT = "222",
            //        EFC_TIPO_ESCRITURACAO = "1",
            //        EFC_SITUA_ESPECIAL = "1",
            //        EFC_IND_NAT_PJ = "22",
            //        EFC_IND_ATIV = "1",
            //        EFC_IND_APRO_CRED = "1",
            //        EFC_COD_TIPO_CONT = "1",
            //        EFC_COD_INC_TRIB = "1",
            //        SEF_LAYOUT = "3334",
            //        SEF_COD_FIN = "1",
            //        SEF_COD_CTD = "11",
            //        SEF_IND_ED = "1",
            //        SEF_IND_ARQ = "1",
            //        SEF_PRF_ISS = "1",
            //        SEF_PRF_ICMS = "1",
            //        SEF_PRF_RIDF = "1",
            //        SEF_PRF_RUDF = "1",
            //        SEF_PRF_LMC = "1",
            //        SEF_PRF_RV = "1",
            //        SEF_PRF_RI = "1",
            //        SEF_IND_EC = "1",
            //        SEF_IND_ISS = "1",
            //        SEF_IND_RT = "1",
            //        SEF_IND_ICMS = "1",
            //        SEF_IND_ST = "1",
            //        SEF_IND_AT = "1",
            //        SEF_IND_IPI = "1",
            //        SEF_IND_RI = "1"
            //    };
            //empresa.CAD_EF_C_PAR_SER = new CAD_EF_C_PAR_SER()
            //    {
            //        ID_EMPRESA = empresa.ID_EMPRESA,
            //        NFE_SERIE = "DEV",
            //        NFE_NUMERO = 0
            //    };
            //context.SET_CAD_EF_C_PAR.AddOrUpdate(empresa);
            //SaveChanges(context);


        }

        //Criei este método que quando tem um problema de validação ele exibe no Package Manager Console o que está com problema.
        private void SaveChanges(DbContext context)
        {
            try
            {
                context.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                var sb = new StringBuilder();

                foreach (var failure in ex.EntityValidationErrors)
                {
                    sb.AppendFormat("{0} failed validation\n", failure.Entry.Entity.GetType());
                    foreach (var error in failure.ValidationErrors)
                    {
                        sb.AppendFormat("- {0} : {1}", error.PropertyName, error.ErrorMessage);
                        sb.AppendLine();
                    }
                }

                throw new DbEntityValidationException(
                    "Entity Validation Failed - errors follow:\n" +
                    sb.ToString(), ex
                ); // Add the original exception as the innerException
            }
        }
    }
}
