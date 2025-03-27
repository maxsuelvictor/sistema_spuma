using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using enLoja.Model.Cadastros;
using enLoja.Model.Estoque;
using enLoja.Model.Faturamento;
using enLoja.Model.Financeiro;
using enLoja.Model.Compras;
using enLoja.Model.PCP;
using enLoja.Model.PCP.Cadastros;
using enLoja.Model.Obras.Cadastros;
using enLoja.Model.PCP.Movimentacoes;




namespace enLoja.Model
{
    public class enLojaContext : DbContext
    {        
        //Tabelas
        public DbSet<CAD_EF_C_CLI> SET_CAD_EF_C_CLI { get; set; }
        public DbSet<CAD_EF_C_CLI_INF> SET_CAD_EF_C_CLI_INF { get; set; }
        public DbSet<CAD_EF_C_CLI_CTO> SET_CAD_EF_C_CLI_CTO { get; set; }
        public DbSet<CAD_EF_C_CIN> SET_CAD_EF_C_CIN { get; set; }
        public DbSet<CAD_EF_C_CID> SET_CAD_EF_C_CID { get; set; }
        public DbSet<CAD_EF_C_CNE> SET_CAD_EF_C_CNE { get; set; }
        public DbSet<CAD_EF_C_RAM> SET_CAD_EF_C_RAM { get; set; }
        public DbSet<CAD_EF_C_PEC> SET_CAD_EF_C_PEC { get; set; }
        public DbSet<CAD_EF_C_PCT> SET_CAD_EF_C_PCT { get; set; }
        public DbSet<CAD_EF_C_CCU> SET_CAD_EF_C_CCU { get; set; }
        public DbSet<CAD_EF_C_CTC> SET_CAD_EF_C_CTC { get; set; }
        public DbSet<CAD_EF_C_LTO> SET_CAD_EF_C_LTO { get; set; }
        public DbSet<CAD_EF_C_TIF> SET_CAD_EF_C_TIF { get; set; }
        public DbSet<CAD_EF_C_CPG> SET_CAD_EF_C_CPG { get; set; }
        public DbSet<CAD_EF_C_FPG> SET_CAD_EF_C_FPG { get; set; }
        public DbSet<CAD_EF_C_PES> SET_CAD_EF_C_PES { get; set; }
        public DbSet<CAD_EF_C_UND> SET_CAD_EF_C_UND { get; set; }
        public DbSet<CAD_EF_C_NCM> SET_CAD_EF_C_NCM { get; set; }
        public DbSet<CAD_EF_C_INF> SET_CAD_EF_C_INF { get; set; }
        public DbSet<CAD_EF_C_TRI> SET_CAD_EF_C_TRI { get; set; }
        public DbSet<CAD_EF_C_TRI_REG> SET_CAD_EF_C_TRI_REG { get; set; }
        public DbSet<CAD_EF_C_GRU> SET_CAD_EF_C_GRU { get; set; }
        public DbSet<CAD_EF_C_GFO> SET_CAD_EF_C_GFO { get; set; }
        public DbSet<CAD_EF_C_FUN> SET_CAD_EF_C_FUN { get; set; }      //MODELO
        public DbSet<CAD_EF_C_FOR> SET_CAD_EF_C_FOR { get; set; }
        public DbSet<CAD_EF_C_FOR_REP> SET_CAD_EF_C_FOR_REP { get; set; }
        public DbSet<CAD_EF_C_ITE> SET_CAD_EF_C_ITE { get; set; }
        public DbSet<CAD_EF_C_ITE_PRE> SET_CAD_EF_C_ITE_PRE { get; set; }
        public DbSet<CAD_EF_C_ITE_COM> SET_CAD_EF_C_ITE_COM { get; set; }
        public DbSet<CAD_EF_C_ITE_LOT> SET_CAD_EF_C_ITE_LOT { get; set; }
        public DbSet<CAD_EF_C_ITE_ESP> SET_CAD_EF_C_ITE_ESP { get; set; }
        public DbSet<CAD_EF_C_NAT> SET_CAD_EF_C_NAT { get; set; }
        public DbSet<CAD_EF_C_CFO> SET_CAD_EF_C_CFO { get; set; }
        public DbSet<CAD_EF_C_PAR> SET_CAD_EF_C_PAR { get; set; }
        public DbSet<CAD_EF_C_PAR_CTR> SET_CAD_EF_C_PAR_CTR { get; set; }
        public DbSet<CAD_EF_C_PAR_SER> SET_CAD_EF_C_PAR_SER { get; set; }
        public DbSet<CAD_EF_C_TME> SET_CAD_EF_C_TME { get; set; }
        public DbSet<CAD_EF_C_CHS> SET_CAD_EF_C_CHS { get; set; }
        public DbSet<CAD_EF_C_CHH> SET_CAD_EF_C_CHH { get; set; }
        public DbSet<CAD_EF_C_ECF> SET_CAD_EF_C_ECF { get; set; }
        public DbSet<CAD_EF_C_SET> SET_CAD_EF_C_SET { get; set; }
        public DbSet<CAD_EF_C_COR> SET_CAD_EF_C_COR { get; set; }
        public DbSet<CAD_EF_C_SEQ> SET_CAD_EF_C_SEQ { get; set; }

        public DbSet<CAD_EF_C_MVE> SET_CAD_EF_C_MVE { get; set; }
        public DbSet<CAD_EF_C_CVE> SET_CAD_EF_C_CVE { get; set; }
        public DbSet<CAD_EF_C_SET_TDS> SET_CAD_EF_C_SET_TDS { get; set; }
        public DbSet<CAD_EF_C_VEI> SET_CAD_EF_C_VEI { get; set; }
        public DbSet<CAD_EF_C_TDF> SET_CAD_EF_C_TDF { get; set; }
        public DbSet<CAD_EF_C_ALM> SET_PCP_EF_C_ALM { get; set; }


        //Movimentações - Faturamento
        public DbSet<FAT_EF_M_PED> SET_FAT_EF_M_PED { get; set; }
        public DbSet<FAT_EF_M_PED_ITE> SET_FAT_EF_M_PED_ITE { get; set; }
        public DbSet<FAT_EF_M_PED_TIT> SET_FAT_EF_M_PED_TIT { get; set; }
        
        public DbSet<FAT_EF_M_NFE> SET_FAT_EF_M_NFE { get; set; }
        public DbSet<FAT_EF_M_NFE_ITE> SET_FAT_EF_M_NFE_ITE { get; set; }
        public DbSet<FAT_EF_M_NFE_TIT> SET_FAT_EF_M_NFE_TIT { get; set; }
        public DbSet<FAT_EF_M_NFE_DEV> SET_FAT_EF_M_NFE_DEV { get; set; }
        public DbSet<FAT_EF_M_NFE_DEV_ITE> SET_FAT_EF_M_NFE_ITE_DEV { get; set; }
        public DbSet<FAT_EF_M_NFE_NFF> SET_FAT_EF_M_NFE_NFF { get; set; }
        public DbSet<FAT_EF_M_NFE_ANA> SET_FAT_EF_M_NFE_ANA { get; set; }
        public DbSet<FAT_EF_M_NFE_IQM> SET_FAT_EF_M_NFE_IQM { get; set; }

        public DbSet<FAT_EF_M_ROM> SET_FAT_EF_M_ROM { get; set; }
        public DbSet<FAT_EF_M_ROM_LOT> SET_FAT_EF_M_ROM_LOT { get; set; }
        public DbSet<FAT_EF_M_ROM_PED> SET_FAT_EF_M_ROM_PED { get; set; }
        public DbSet<FAT_EF_M_ROM_PED_ITE> SET_FAT_EF_M_ROM_PED_ITE { get; set; }
        public DbSet<FAT_EF_M_POS> SET_FAT_EF_M_POS { get; set; }
        public DbSet<FAT_EF_M_POS_ITE> SET_FAT_EF_M_POS_ITE { get; set; }

        public DbSet<FAT_EF_M_ORC> SET_FAT_EF_M_ORC { get; set; }
        public DbSet<FAT_EF_M_ORC_ITE> SET_FAT_EF_M_ORC_ITE { get; set; }


        //Movimentações - Financeiro
        public DbSet<FIN_EF_M_REC> SET_FIN_EF_M_REC { get; set; }
        public DbSet<FIN_EF_M_REC_PAG> SET_FIN_EF_M_REC_PAG { get; set; }
        public DbSet<FIN_EF_M_RBX> SET_FIN_EF_M_RBX { get; set; }
        public DbSet<FIN_EF_M_RBX_TIT> SET_FIN_EF_M_RBX_TIT { get; set; }
        public DbSet<FIN_EF_M_RBX_GER> SET_FIN_EF_M_RBX_GER { get; set; }
        public DbSet<FIN_EF_M_RCR> SET_FIN_EF_M_RCR { get; set; }
        public DbSet<FIN_EF_M_CXA> SET_FIN_EF_M_CXA { get; set; }
        public DbSet<FIN_EF_M_CXA_MOV> SET_FIN_EF_M_CXA_MOV { get; set; }
        public DbSet<FIN_EF_M_COB> SET_FIN_EF_M_COB { get; set; }
        public DbSet<FIN_EF_M_COB_TIT> SET_FIN_EF_M_COB_TIT { get; set; }
        public DbSet<FIN_EF_M_PAG> SET_FIN_EF_M_PAG { get; set; }
        public DbSet<FIN_EF_M_PAG_PAG> SET_FIN_EF_M_PAG_PAG { get; set; }
  
        
        
        //Estoque
        public DbSet<EST_EF_M_FES> SET_EST_EF_M_FES { get; set; }
        public DbSet<EST_EF_M_FES_ALM> SET_EST_EF_M_FES_ALM { get; set; }
        public DbSet<EST_EF_M_FEA> SET_EST_EF_M_FEA { get; set; }
        public DbSet<EST_EF_M_CTE> SET_EST_EF_M_CTE { get; set; }
        public DbSet<EST_EF_M_CTE_ITE> SET_EST_EF_M_CTE_ITE { get; set; }
        public DbSet<EST_EF_M_INV> SET_EST_EF_M_INV { get; set; }

        public DbSet<EST_EF_M_MAL> SET_EST_EF_M_MAL { get; set; }
        public DbSet<EST_EF_M_MAL_ITE> SET_EST_EF_M_MAL_ITE { get; set; }



        //Compras
        public DbSet<CMP_EF_M_SOL> SET_CMP_EF_M_SOL { get; set; }
        public DbSet<CMP_EF_M_SOL_ITE> SET_CMP_EF_M_SOL_ITE { get; set; }
        public DbSet<CMP_EF_M_COT> SET_CMP_EF_M_COT { get; set; }
        public DbSet<CMP_EF_M_COT_FIT> SET_CMP_EF_M_COT_FIT { get; set; }
        public DbSet<CMP_EF_M_COT_FOR> SET_CMP_EF_M_COT_FOR { get; set; }
        public DbSet<CMP_EF_M_COT_ITE> SET_CMP_EF_M_COT_ITE { get; set; }
        public DbSet<CMP_EF_M_PED> SET_CMP_EF_M_PED { get; set; }
        public DbSet<CMP_EF_M_PED_ITE> SET_CMP_EF_M_PED_ITE { get; set; }
        public DbSet<CMP_EF_M_IQF> SET_CMP_EF_M_IQF { get; set; }
        public DbSet<CMP_EF_M_RAA> SET_CMP_EF_M_RAA { get; set; }
        public DbSet<CMP_EF_M_RAA_ITE> SET_CMP_EF_M_RAA_I { get; set; }

        //PCP

        public DbSet<PCP_EF_C_PRQ> SET_PCP_EF_C_PRQ { get; set; }
        public DbSet<PCP_EF_C_PRQ_ESP> SET_PCP_EF_C_PRQ_ESP { get; set; }
        public DbSet<PCP_EF_C_CDP> SET_PCP_EF_C_CDP { get; set; }
        public DbSet<PCP_EF_C_INS> SET_PCP_EF_C_INS { get; set; }
        public DbSet<PCP_EF_C_CIN> SET_PCP_EF_C_CIN { get; set; }
        public DbSet<PCP_EF_C_CIN_LNS> SET_PCP_EF_C_CIN_LNS { get; set; }
        public DbSet<PCP_EF_C_MDE> SET_PCP_EF_C_MDE { get; set; }
        public DbSet<PCP_EF_C_MEQ> SET_PCP_EF_C_MEQ { get; set; }
        public DbSet<PCP_EF_C_PRP> SET_PCP_EF_C_PRP { get; set; }
        public DbSet<PCP_EF_C_RPT> SET_PCP_EF_C_RPT { get; set; }
        public DbSet<PCP_EF_C_TPP> SET_PCP_EF_C_TPP { get; set; }
        public DbSet<PCP_EF_C_TPP_SET> SET_PCP_EF_C_TPP_SET { get; set; }
        public DbSet<PCP_EF_C_TIN> SET_PCP_EF_C_TIN { get; set; }


        public DbSet<PCP_EF_C_TLM> SET_PCP_EF_C_TLM { get; set; }
        public DbSet<PCP_EF_C_LME> SET_PCP_EF_C_LME { get; set; }
        public DbSet<PCP_EF_C_LME_DOC> SET_PCP_EF_C_LME_D { get; set; }
        public DbSet<PCP_EF_C_LME_DPG> SET_PCP_EF_C_LME_DP { get; set; }
        public DbSet<PCP_EF_C_LME_DRP> SET_PCP_EF_C_LME_DR { get; set; }
        public DbSet<PCP_EF_C_LME_DRV> SET_PCP_EF_C_LME_DV { get; set; }
        public DbSet<PCP_EF_C_CDR> SET_PCP_EF_C_CDR { get; set; }
        public DbSet<PCP_EF_C_CNF> SET_PCP_EF_C_CNF { get; set; }
        public DbSet<PCP_EF_C_DIS> SET_PCP_EF_C_DIS { get; set; }
        public DbSet<PCP_EF_C_ESP> SET_PCP_EF_C_ESP { get; set; }
        public DbSet<PCP_EF_C_MET> SET_PCP_EF_C_MET { get; set; }
        public DbSet<PCP_EF_C_ROT> SET_PCP_EF_C_ROT { get; set; }
        public DbSet<PCP_EF_C_REG> SET_PCP_EF_C_REG { get; set; }
        public DbSet<PCP_EF_C_MTA> SET_PCP_EF_C_MTA { get; set; }
        public DbSet<PCP_EF_C_CRG> SET_PCP_EF_C_CRG { get; set; }
        public DbSet<PCP_EF_C_CLA> SET_PCP_EF_C_CLA { get; set; }


        public DbSet<PCP_EF_M_ACR> SET_PCP_EF_M_ACR { get; set; }
        public DbSet<PCP_EF_M_ACR_ITE> SET_PCP_EF_M_ACR_P { get; set; }
        public DbSet<PCP_EF_M_ACR_ITE_PDT> SET_PCP_EF_M_ACR_PD { get; set; }
        public DbSet<PCP_EF_M_ACR_ITE_PCR> SET_PCP_EF_M_ACR_PH { get; set; }
        public DbSet<PCP_EF_M_ACR_ITE_PCN> SET_PCP_EF_M_ACR_PN { get; set; }
        public DbSet<PCP_EF_M_ACR_ITE_PRC> SET_PCP_EF_M_ACR_PR { get; set; }

        //Ordem de Produção
        public DbSet<PCP_EF_M_OPR> SET_PCP_EF_M_OPR { get; set; }
        public DbSet<PCP_EF_M_OPR_IPA> SET_PCP_EF_M_OPR_IPA { get; set; }
        public DbSet<PCP_EF_M_OPR_OPP> SET_PCP_EF_M_OPR_OPP { get; set; }
        public DbSet<PCP_EF_M_OPR_PED> SET_PCP_EF_M_OPR_PED { get; set; }
        public DbSet<PCP_EF_M_OPR_OPS> SET_PCP_EF_M_OPR_OPS { get; set; }
        public DbSet<PCP_EF_M_OPR_OPS_IPS> SET_PCP_EF_M_OPR_OPS_IPS { get; set; }
        public DbSet<PCP_EF_M_OPR_REQ> SET_PCP_EF_M_OPR_REQ { get; set; }
        public DbSet<PCP_EF_M_OPR_REQ_ITE> SET_PCP_EF_M_OPR_REQ_ITE { get; set; }


        //Controle de Recipientes
        public DbSet<PCP_EF_M_CRP> SET_PCP_EF_M_CRP { get; set; }
        public DbSet<PCP_EF_M_CRP_ITE> SET_PCP_EF_M_CRP_ITE { get; set; }
        public DbSet<PCP_EF_M_CRP_ITE_BXI> SET_PCP_EF_M_CRP_ITE_BXI { get; set; }

        //Laminação de Bloco Rentangular/Cilínndrico
        public DbSet<PCP_EF_M_LBE> SET_PCP_EF_M_LBE { get; set; }
        public DbSet<PCP_EF_M_LBE_BLO> SET_PCP_EF_M_LBE_BLO { get; set; }

        //Ordem de Produção de Bloco de Espuma
        public DbSet<PCP_EF_M_OPB> SET_PCP_EF_M_OPB { get; set; }
        public DbSet<PCP_EF_M_OPB_OPR> SET_PCP_EF_M_OPB_OPR { get; set; }
        public DbSet<PCP_EF_M_OPB_OPE> SET_PCP_EF_M_OPB_OPE { get; set; }
        public DbSet<PCP_EF_M_OPB_OPE_IBE> SET_PCP_EF_M_OPB_OPE_IBE { get; set; }

        //Controle de Ação Corretiva/Preventiva
        public DbSet<PCP_EF_M_CAC> SET_PCP_EF_M_CAC { get; set; }
        public DbSet<PCP_EF_M_CAC_ANA> SET_PCP_EF_M_CAC_ANA { get; set; }
        public DbSet<PCP_EF_M_CAC_PLA> SET_PCP_EF_M_CAC_PLA { get; set; }

        //Cronograma de Manutenção de Máquinas/Equipamentos
        public DbSet<PCP_EF_M_CME> SET_PCP_EF_M_CME { get; set; }
        public DbSet<PCP_EF_M_CME_MEQ> SET_PCP_EF_M_CME_MEQ { get; set; }

        //Controle de Registros da Qualidade
        public DbSet<PCP_EF_M_CRQ> SET_PCP_EF_M_CRQ { get; set; }
        public DbSet<PCP_EF_M_CRQ_REG> SET_PCP_EF_M_CRQ_REG { get; set; }

        //Tabela de lista de presença
        public DbSet<PCP_EF_M_LPR> SET_PCP_EF_M_LPR { get; set; }
        public DbSet<PCP_EF_M_LPR_FUN> SET_PCP_EF_M_LPR_FUN { get; set; }

        //Registro de Manutenção Corretiva e Preventiva
        public DbSet<PCP_EF_M_MCP> SET_PCP_EF_M_MCP { get; set; }
        public DbSet<PCP_EF_M_MCP_IVE> SET_PCP_EF_M_MCP_IVE { get; set; }
        public DbSet<PCP_EF_M_MCP_SER> SET_PCP_EF_M_MCP_SER { get; set; }

        //Controle de Não Conformidade
        public DbSet<PCP_EF_M_NCF> SET_PCP_EF_M_NCF { get; set; }
        public DbSet<PCP_EF_M_NCF_DIS> SET_PCP_EF_M_NCF_DIS { get; set; }

        //Controle de Defeitos na Revisão dos Colchões
        public DbSet<PCP_EF_M_RVC> SET_PCP_EF_M_RVC { get; set; }
        public DbSet<PCP_EF_M_RVC_ITE> SET_PCP_EF_M_RVC_ITE { get; set; }
        public DbSet<PCP_EF_M_RVC_ITE_SET> SET_PCP_EF_M_RVC_ITE_SET { get; set; }
        public DbSet<PCP_EF_M_RVC_ITE_SET_DEF> SET_PCP_EF_M_RVC_ITE_SET_DEF { get; set; }


        public DbSet<PCP_EF_M_PSC> SET_PCP_EF_M_PSC { get; set; }
        public DbSet<PCP_EF_M_PSC_PRT> SET_PCP_EF_M_PSC_I { get; set; }

        public DbSet<PCP_EF_M_REC> SET_PCP_EF_M_REC { get; set; }
        public DbSet<PCP_EF_M_REC_IPP> SET_PCP_EF_M_REC_P { get; set; }

        //Ordem de Saida
        public DbSet<PCP_EF_M_ORS> SET_PCP_EF_M_ORS { get; set; }
        public DbSet<PCP_EF_M_ORS_ITE> SET_PCP_EF_M_ORS_ITE { get; set; }
        public DbSet<PCP_EF_M_ORS_TIT> SET_PCP_EF_M_ORS_TIT { get; set; }

        //Romaneio de Carga
        public DbSet<PCP_EF_M_ROM> SET_PCP_EF_M_ROM { get; set; }
        public DbSet<PCP_EF_M_ROM_LOT> SET_PCP_EF_M_ROM_LOT { get; set; }
        public DbSet<PCP_EF_M_ROM_ORS> SET_PCP_EF_M_ROM_ORS { get; set; }
        public DbSet<PCP_EF_M_ROM_ORS_ITE> SET_PCP_EF_M_ROM_ORS_ITE { get; set; }



        //OBRAS
        public DbSet<OBR_EF_C_OBR> SET_OBR_EF_C_OBR { get; set; }
        public DbSet<OBR_EF_C_GRU> SET_OBR_EF_C_GRU { get; set; }
        public DbSet<OBR_EF_C_EQP> SET_OBR_EF_C_EQP { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {

            modelBuilder.Entity<CAD_EF_C_CLI>().Property(m => m.DOC_CNPJ_CPF).IsOptional();
            modelBuilder.Entity<FAT_EF_M_PED_TIT>().HasRequired(c => c.CAD_EF_C_CPG).WithMany().WillCascadeOnDelete(false);

            //Não gera campo identity.
            modelBuilder.Entity<CMP_EF_M_SOL>().Property(t => t.ID_SOLICITACAO).HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);
            modelBuilder.Entity<CMP_EF_M_PED>().Property(t => t.ID_PEDIDO).HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);
            modelBuilder.Entity<FAT_EF_M_PED>().Property(t => t.ID_PEDIDO).HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(t => t.ID_FISCAL).HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            //Definição de Chave estrangeira sem Cascade.
            //Cadastros
            modelBuilder.Entity<PCP_EF_C_CDR>().HasRequired(c => c.CAD_EF_C_GRU).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<PCP_EF_C_CDR>().HasRequired(c => c.CAD_EF_C_COR).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<PCP_EF_C_CRG>().HasRequired(c => c.CAD_EF_C_SET).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<PCP_EF_C_REG>().HasRequired(c => c.PCP_EF_C_ROT).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<PCP_EF_C_LME>().HasRequired(c => c.CAD_EF_C_FUN).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<PCP_EF_C_LME_DOC>().HasRequired(c => c.PCP_EF_C_TLM).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<PCP_EF_M_ACR>().HasRequired(c => c.CAD_EF_C_CID).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<PCP_EF_M_ACR_ITE_PCN>().HasRequired(c => c.CAD_EF_C_FUN).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<PCP_EF_M_ACR_ITE_PCN>().HasRequired(c => c.CAD_EF_C_ITE).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<PCP_EF_M_ACR_ITE>().HasRequired(c => c.CAD_EF_C_FUN).WithMany().WillCascadeOnDelete(false);

            modelBuilder.Entity<CAD_EF_C_ITE>().HasRequired(c => c.CAD_EF_C_GRU).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_ITE>().HasRequired(c => c.CAD_EF_C_FOR).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_ITE>().HasRequired(c => c.CAD_EF_C_UND_C).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_ITE>().HasRequired(c => c.CAD_EF_C_UND_V).WithMany().WillCascadeOnDelete(false);

            modelBuilder.Entity<CAD_EF_C_ITE>().HasRequired(c => c.CAD_EF_C_NCM).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_ITE_PRE>().HasRequired(c => c.CAD_EF_C_PEC).WithMany().WillCascadeOnDelete(false);

            modelBuilder.Entity<CAD_EF_C_GRU>().HasRequired(c => c.CAD_EF_C_TRI).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_FPG>().HasRequired(c => c.CAD_EF_C_CCU).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_FPG>().HasRequired(c => c.CAD_EF_C_CTC).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_FPG>().HasRequired(c => c.CAD_EF_C_TIF).WithMany().WillCascadeOnDelete(false);

            modelBuilder.Entity<CAD_EF_C_FUN>().HasRequired(c => c.CAD_EF_C_CID).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_FUN>().HasRequired(c => c.CAD_EF_C_PES).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_RAM>().HasRequired(c => c.CAD_EF_C_CNE).WithMany().WillCascadeOnDelete(false);

            modelBuilder.Entity<CAD_EF_C_VEI>().HasRequired(c => c.CAD_EF_C_MVE).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_VEI>().HasRequired(c => c.CAD_EF_C_CVE).WithMany().WillCascadeOnDelete(false);

            modelBuilder.Entity<CAD_EF_C_TRI_REG>().HasRequired(c => c.CAD_EF_C_TME).WithMany().WillCascadeOnDelete(false);

            
            modelBuilder.Entity<CAD_EF_C_CFO>().HasRequired(c => c.CAD_EF_C_NAT).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_FOR>().HasRequired(c => c.CAD_EF_C_CID).WithMany().WillCascadeOnDelete(false);

            modelBuilder.Entity<CAD_EF_C_CLI>().HasRequired(c => c.CAD_EF_C_PEC).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_CLI>().HasRequired(c => c.CAD_EF_C_CID).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CAD_EF_C_CLI_INF>().HasRequired(c => c.CAD_EF_C_CIN).WithMany().WillCascadeOnDelete(false);


            //Movimentações
            modelBuilder.Entity<FAT_EF_M_PED_TIT>().HasRequired(c => c.CAD_EF_C_CPG).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().HasRequired(c => c.CAD_EF_C_ITE).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().HasRequired(c => c.CAD_EF_C_CFO).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().HasRequired(c => c.CAD_EF_C_TRI).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().HasRequired(c => c.CAD_EF_C_NCM).WithMany().WillCascadeOnDelete(false);
            modelBuilder.Entity<CMP_EF_M_SOL_ITE>().HasRequired(c => c.CAD_EF_C_ITE).WithMany().WillCascadeOnDelete(false);


            ////Definicção de Campos numerico(18,4)
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_ACRESCIMO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_ANTECIPACAO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_DESCONTO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_ISENTA).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_LIQUIDO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_MERCADORIA).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_OUTRAS).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_OUTRAS_DESP).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_SEGURO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.ICM_N_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.ICM_N_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.ICM_S_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.ICM_S_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.IPI_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.ISS_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.PIS_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.PIS_VALOR_ST).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.FRE_CUSTO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.FRE_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.COF_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.COF_VALOR_ST).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.IMP_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.VLR_ICM_SER_NAO_INCIDE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.COF_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE>().Property(m => m.PIS_BASE).HasPrecision(18, 4);



            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.VLR_ANTECIPACAO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.VLR_DESCONTO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.VLR_ISENTAS).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.VLR_LIQUIDO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.VLR_MERCADORIA).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.VLR_OUTRAS).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.VLR_SEGURO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.VLR_UNITARIO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.COF_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.COF_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.COF_VALOR_ST).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.PIS_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.PIS_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.PIS_VALOR_ST).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.ICM_N_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.ICM_N_DIF_ALIQ).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.ICM_N_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.ICM_N_VLR_DIF_ALIQ).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.ICM_S_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.ICM_S_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.IPI_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.IPI_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.ISS_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.ISS_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.FRE_BASE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.FRE_CUSTO).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.FRE_DIF_ALIQ_ICM).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.FRE_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.FRE_VLR_DIF_ICM).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.IMP_VALOR).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_ITE>().Property(m => m.VLR_ICM_SER_NAO_INCIDE).HasPrecision(18, 4);

            modelBuilder.Entity<FAT_EF_M_NFE_TIT>().Property(m => m.VLR_TITULO).HasPrecision(18, 4);


            modelBuilder.Entity<FAT_EF_M_NFE_NFF>().Property(m => m.VLR_FRETE).HasPrecision(18, 4);
            modelBuilder.Entity<FAT_EF_M_NFE_NFF>().Property(m => m.VLR_NOTA).HasPrecision(18, 4);

            modelBuilder.Entity<FAT_EF_M_PED_TIT>().Property(m => m.VLR_TITULO).HasPrecision(18, 4);



            modelBuilder.Entity<CMP_EF_M_PED>().Property(m => m.VLR_BRUTO).HasPrecision(18, 4);
            modelBuilder.Entity<CMP_EF_M_PED>().Property(m => m.VLR_DESCONTO).HasPrecision(18, 4);
            modelBuilder.Entity<CMP_EF_M_PED>().Property(m => m.VLR_FRETE).HasPrecision(18, 4);
            modelBuilder.Entity<CMP_EF_M_PED>().Property(m => m.VLR_IPI).HasPrecision(18, 4);
            modelBuilder.Entity<CMP_EF_M_PED>().Property(m => m.VLR_LIQUIDO).HasPrecision(18, 4);

            modelBuilder.Entity<CMP_EF_M_PED_ITE>().Property(m => m.VLR_BRUTO).HasPrecision(18, 4);
            modelBuilder.Entity<CMP_EF_M_PED_ITE>().Property(m => m.VLR_DESCONTO).HasPrecision(18, 4);
            modelBuilder.Entity<CMP_EF_M_PED_ITE>().Property(m => m.VLR_FRETE).HasPrecision(18, 4);
            modelBuilder.Entity<CMP_EF_M_PED_ITE>().Property(m => m.VLR_IPI).HasPrecision(18, 4);
            modelBuilder.Entity<CMP_EF_M_PED_ITE>().Property(m => m.VLR_LIQUIDO).HasPrecision(18, 4);
            modelBuilder.Entity<CMP_EF_M_PED_ITE>().Property(m => m.VLR_UNITARIO).HasPrecision(18, 4);




            base.OnModelCreating(modelBuilder);
        }
        
    }    
}
