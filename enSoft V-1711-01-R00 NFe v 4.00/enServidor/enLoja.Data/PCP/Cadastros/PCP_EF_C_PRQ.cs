using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*   
      CAD : PLANO DE CONTROLE PARA RECEBIMENTOE PRESERVAÇÃO 
            Conforme planilha: P 7.4-2-06
      Mariel : 08/10/2013
     */
    [Table("PCP_TB_C_PRQ")]
    public class PCP_EF_C_PRQ : NotifyingObject
    {
        [Key, Column(Order = 1, TypeName = "CHAR")]
        [Display(Name = "Grupo de Produtos")]
        [StringLength(11)]
        [Required(ErrorMessage = "Código do Grupo deve ser informado!")]  
        public string ID_GRUPO { get; set; }

        [Key, Column(Order = 2)]
        [Display(Name = "Produto")]
        public int ID_ITEM { get; set; }

        [Display(Name = "Responsavel")]
        public int ID_RESPONSAVEL { get; set; }

        [Display(Name = "Data de Cadastro")]
        public DateTime DTA_CADASTRO { get; set; }

        //FKs
        public virtual ICollection<PCP_EF_C_PRQ_ESP> PCP_EF_C_PRQ_ESP { get; set; }
    }
}
