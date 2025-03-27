using System.Collections.ObjectModel;
using enLoja.Model.Cadastros;
using enLoja.Model.Enums;

namespace enLoja.Model.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<enLoja.Model.enLojaContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(enLoja.Model.enLojaContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );

            var cnae = new CAD_EF_C_CNE()
                {
                    ID_CNAE = "CNE01",
                    DESCRICAO = "Teste"
                };

            context.SET_CAD_EF_C_CNE.AddOrUpdate(cnae);


            var ramo = new CAD_EF_C_RAM()
                {                    
                    DESCRICAO = "Ramo Teste",
                    REGIME_TRIBUTARIO = REGIME_TRIBUTARIO_ENUM.SimplesNacional,
                    ID_CNAE = "CNE01"
                };

            context.SET_CAD_EF_C_RAM.AddOrUpdate(ramo);

            var cidade = new CAD_EF_C_CID()
                {
                    ID_CIDADE = "1010101",
                    NOME = "Teste",
                    UF = "RS"
                };
            
            context.SET_CAD_EF_C_CID.AddOrUpdate(cidade);
            context.SaveChanges();

            var empresa = new CAD_EF_C_PAR()
                {
                    EMP_CNPJ = "69332784000151",
                    ID_RAMO = 1,
                    EMP_RAZAO = "Nova Empresa",
                    EMP_ENDERECO = "Endereço",
                    EMP_NUMERO = "555",
                    EMP_COMPLEMENTO = "Comple",
                    EMP_BAIRRO = "Bairro",
                    ID_CIDADE = "1010101",
                    EMP_CEP = "98280000",
                    EMP_TELEFONE = "999999",
                    EMP_FAX = "8888888888",
                    EMP_EMAIL = "email@mail.com",
                    EMP_SITE = "site.com.br",
                    EMP_FANTASIA = "Nome Fantasia",
                    EMP_IM = "IM",
                    EMP_IE = "IE",
                    EMP_SUFRAMA = "SUF",
                    EMP_LOGO = new byte[] { },
                    EMP_NUMERO_JUNTA = "3333",
                    RES_NOME = "Fabio",
                    RES_QUALIFICACAO = "Qualif",
                    RES_CPF = "42923108400",
                    RES_CEP = "98280000",
                    RES_ENDERECO = "Rual Tal",
                    RES_NUMERO = "888",
                    RES_COMPLEMENTO = "Complem.",
                    RES_BAIRRO = "Bairro",
                    RES_CP = "CP",
                    RES_TELEFONE = "88888",
                    RES_FAX = "9999",
                    RES_EMAIL = "email@email.com",
                    CNT_NOME = "Nome",
                    CNT_CPF = "1234567",
                    CNT_CRC = "88888888",
                    CNT_CNPJ = "9999999999999",
                    CNT_CEP = "98280000",
                    CNT_ENDERECO = "endereço",
                    CNT_NUMERO = "987",
                    CNT_COMPLEMENTO = "Comple.",
                    CNT_BAIRRO = "Bairro",
                    CNT_TELEFONE = "4444444",
                    CNT_FAX = "333333",
                    CNT_EMAIL = "contador@email.com",
                    CNT_ID_CIDADE = "PBI",
                    CNT_QUALIFICACAO = "Contador",
                    CNT_CP = "CP"
                };
            empresa.CAD_EF_C_PAR_CTR = new CAD_EF_C_PAR_CTR()
                {
                    ID_EMPRESA = empresa.ID_EMPRESA,
                    PED_CLIENTE = 1,
                    TAX_JUROS_MENSAL = 10,
                    PER_COFINS = 10,
                    PER_PIS = 10,
                    DIA_PROTESTO = 10,
                    PER_IR = 10,
                    PER_CSSL = 10,
                    PER_DESCONTO = 10,
                    VLR_LIM_MAXIMO = 1000,
                    MES_LIMITE = 2,
                    PER_ISS = 10,
                    PED_ACEITA_EST_NEGATIVO = true,
                    PDE_ID_FORMA_PAG = 1,
                    PDE_ID_FORNECDOR = 1,
                    PDE_ID_CCUSTO = 1,
                    PDE_ID_LOCAL_TITULO = 1,
                    PED_ALTERA_PRECO = true,
                    MSG_EMAIL_COTACAO = "Teste",
                    NFE_NUMERO = 1,
                    NFE_MODELO = "NFE",
                    NFE_SERIE = "SER",
                    NFE_SERIE_CONT = "CONT",
                    ECF_MODELO = "MOD",
                    ECF_SERIE = "SER",
                    PDE_ID_TIPO_FINANCEIRO = 1,
                    EFF_LAYOUT = "111",
                    EFF_FINALIDADE = "1",
                    EFF_PERFIL = "1",
                    EFF_ATIVIDADE = "1",
                    EFC_IND_REG_CUM = "1",
                    EFC_LAYOUT = "222",
                    EFC_TIPO_ESCRITURACAO = "1",
                    EFC_SITUA_ESPECIAL = "1",
                    EFC_IND_NAT_PJ = "22",
                    EFC_IND_ATIV = "1",
                    EFC_IND_APRO_CRED = "1",
                    EFC_COD_TIPO_CONT = "1",
                    EFC_COD_INC_TRIB = "1",
                    SEF_LAYOUT = "3334",
                    SEF_COD_FIN = "1",
                    SEF_COD_CTD = "11",
                    SEF_IND_ED = "1",
                    SEF_IND_ARQ = "1",
                    SEF_PRF_ISS = "1",
                    SEF_PRF_ICMS = "1",
                    SEF_PRF_RIDF = "1",
                    SEF_PRF_RUDF = "1",
                    SEF_PRF_LMC = "1",
                    SEF_PRF_RV = "1",
                    SEF_PRF_RI = "1",
                    SEF_IND_EC = "1",
                    SEF_IND_ISS = "1",
                    SEF_IND_RT = "1",
                    SEF_IND_ICMS = "1",
                    SEF_IND_ST = "1",
                    SEF_IND_AT = "1",
                    SEF_IND_IPI = "1",
                    SEF_IND_RI = "1"
                };
            context.SET_CAD_EF_C_PAR.AddOrUpdate(empresa);
            context.SaveChanges();            
            //
        }
    }
}
