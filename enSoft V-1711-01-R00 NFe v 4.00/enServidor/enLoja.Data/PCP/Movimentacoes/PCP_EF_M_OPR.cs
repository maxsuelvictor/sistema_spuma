using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_OPR")]
    public class PCP_EF_M_OPR : NotifyingObject
    {
        [Key]
        public int ID_OPR { get; set; }
        
        public DateTime DTA_EMISSAO { get; set; }

        [Display(Name = "Obs. Administrativa")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string OBS_ADMINISTRATIVA { get; set; }

        [Display(Name = "Obs. Produção")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string OBS_PRODUCAO { get; set; }

        public int ID_RESPONSAVEL { get; set; }

        public int SITUACAO { get; set; }
        
        public int ID_EMPRESA { get; set; }
        
        public int ID_TPP { get; set; }
        
        public double CUB_PRODUZIR { get; set; }
        
        public double CUB_PEDIDOS { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_M_OPR_IPA> PCP_EF_M_OPR_IPA { get; set; }
        public virtual ICollection<PCP_EF_M_OPR_OPP> PCP_EF_M_OPR_OPP { get; set; }
        public virtual ICollection<PCP_EF_M_OPR_PED> PCP_EF_M_OPR_PED { get; set; }


    }
}
