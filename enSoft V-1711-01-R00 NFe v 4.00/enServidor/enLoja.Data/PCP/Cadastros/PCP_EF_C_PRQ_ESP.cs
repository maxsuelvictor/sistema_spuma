using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*   
      CAD : PLANO DE CONTROLE PARA RECEBIMENTOE PRESERVAÇÃO - Especificações do Grupo 
            Conforme planilha: P 7.4-2-06
      Mariel : 08/10/2013
     */
    [Table("PCP_TB_C_PRQ_ESP")]
    public class PCP_EF_C_PRQ_ESP : NotifyingObject
    {
        [Key, Column(Order = 1, TypeName ="CHAR" ), ForeignKey("PCP_EF_C_PRQ")]
        [Display(Name = "Grupo de Produtos")]
        [StringLength(11)]
        [Required(ErrorMessage = "Código do Grupo deve ser informado!")]  
        public string ID_GRUPO { get; set; }

        [Key, Column(Order = 2), ForeignKey("PCP_EF_C_PRQ")]
        [Display(Name = "Produto")]
        public int ID_ITEM { get; set; }

        [Key, Column(Order = 3)]
        [Display(Name = "Controle")]
        public int ID_PRQ_ESP { get; set; }

        [Display(Name = "Especificação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]        
        public string ESPECIFICACAO { get; set; }

        [Display(Name = "Verifricação do texto")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string VERIF_TEXTO { get; set; }

        [Display(Name = "Verifrica Minimo")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(15)]
        public string VERIF_MINIMO { get; set; }

        [Display(Name = "Verifrica Maximo")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(15)]
        public string VEFIF_MAXIMO { get; set; }

        [Display(Name = "Verifrica Metodo")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string VERIF_METODO { get; set; }

        [Display(Name = "Amostragem")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string AMOSTRAGEM { get; set; }

        [Display(Name = "Manuseia Transportadora")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string MANUSEIO_TRANSP { get; set; }

        [Display(Name = "Armazenamento")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string ARMAZENAMENTO { get; set; }

        [Display(Name = "Preservação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string PRESERVACAO { get; set; }

        //FKs
        public virtual PCP_EF_C_PRQ PCP_EF_C_PRQ { get; set; }

    }
}
