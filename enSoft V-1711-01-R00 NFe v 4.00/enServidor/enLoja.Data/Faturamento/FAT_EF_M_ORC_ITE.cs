using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    /*   
      MOV : Orçamento de Vendas - Itens
      Mariel : 08/10/2013
     */
    [Table("FAT_TB_M_ORC_ITE")]
    public class FAT_EF_M_ORC_ITE : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Código")]
        public int ID_ORCAMENTO { get; set; }

        [Key, Column(Order = 2)]
        public int ID_ITEM { get; set; }

        public int ID_COR { get; set; }

        public int ID_TAMANHO { get; set; }

        public double QTDE { get; set; } 
        public decimal VLR_UNITARIO { get; set; } 
   
        public decimal VLR_BRUTO { get; set; } 
   
        public decimal VLR_DESCONTO { get; set; } 
   
        public decimal PER_DESCONTO { get; set; }
   
        public decimal VLR_LIQUIDO { get; set; } 
   
        public double EXPORTADA_QTDE { get; set; } 
   
        public double EXPORTADA_SALDO { get; set; }
       
        public int ID_SEQ_ITEM { get; set; } 

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string ID_BUSCA_ITEM { get; set; } 

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string OBSERVACAO { get; set; } 


    }
}
