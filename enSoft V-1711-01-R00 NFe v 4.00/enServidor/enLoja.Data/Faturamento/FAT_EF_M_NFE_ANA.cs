using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Reflection.Emit;
using System.Text;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using System.Linq;
using enLoja.Model.Validações.Faturamento;

namespace enLoja.Model.Faturamento
{

    [Table("FAT_TB_M_NFE_ANA")]
    public class FAT_EF_M_NFE_ANA : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Fiscal")]
        public int ID_FISCAL
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }
        
        [Key, Column(Order = 2)]
        [Display(Name = "Sequencia")]
        public int ID_SEQUENCIA
        {
            get { return GetValue(() => ID_SEQUENCIA); }
            set { SetValue(() => ID_SEQUENCIA, value); }
        }

        [Key, Column(Order = 3)]
        [Display(Name = "Plano de Ação")]
        public int NUM_PLANO_ACAO 
        {
            get { return GetValue(() => NUM_PLANO_ACAO); }
            set { SetValue(() => NUM_PLANO_ACAO, value); }
        }

        
        public System.DateTime DTA_EMISSAO { get; set; }
        public int ID_ITEM { get; set; }
        public string ESPECIFICADO { get; set; }
        public string ENCONTRADO { get; set; }
        public string OBSERVACAO { get; set; }
        public double QTDE_NC { get; set; }
        public double QTDE_TOTAL { get; set; }
        public double PERC_NC { get; set; }
        public double QTDE_DEVOLVIDA { get; set; }
        public int ID_RESPONSAVEL { get; set; }
        public int ID_SETOR { get; set; }
        public string CAUSA_DO_PROBLEMA_FORN { get; set; }
        public string RESOLUCAO_PROBLEMA_FORN { get; set; }
        public string RESPONSAVEL_FORN { get; set; }
        public string CARGO_RESP_FORN { get; set; }
        public Nullable<System.DateTime> DATA_INF_FORN { get; set; }
        public Nullable<int> ACAO_TOMADA_ANALISE { get; set; }
        public Nullable<int> NAO_CONFORM_ANALISE { get; set; }
        public Nullable<int> REQUER_NOVA_ACAO_ANALISE { get; set; }
        public string COMENTARIOS_ANALISE { get; set; }
        public Nullable<int> ID_RESP_ANALISE { get; set; }
        public Nullable<System.DateTime> DATA_ANALISE { get; set; }


        //FKs

        [ForeignKey("ID_FISCAL")]
        public virtual FAT_EF_M_NFE FAT_EF_M_NFE
        {
            get { return GetValue(() => FAT_EF_M_NFE); }
            set { SetValue(() => FAT_EF_M_NFE, value); }
        }

        //public virtual CNF_TB_C_FUN CNF_TB_C_FUN { get; set; }
        //public virtual CNF_TB_C_SET CNF_TB_C_SET { get; set; }
        //public virtual EST_TB_C_PRO EST_TB_C_PRO { get; set; }
        //public virtual EST_TB_M_NFE_S EST_TB_M_NFE_S { get; set; }
    }

}
