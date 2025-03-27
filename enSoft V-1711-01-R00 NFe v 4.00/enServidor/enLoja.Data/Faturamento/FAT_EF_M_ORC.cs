using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    /*   
      MOV : Orçamento de Vendas 
      Mariel : 08/10/2013
     */
    [Table("FAT_TB_M_ORC")]
    public class FAT_EF_M_ORC : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_ORCAMENTO  { get; set; }
        public int ID_EMPRESA { get; set; }
        public int ID_CLIENTE { get; set; } 
        public DateTime DTA_ORCAMENTO { get; set; } 
        public int ID_FUNCIONARIO { get; set; } 
        public DateTime DTA_ENTREGA { get; set; }   
        public DateTime DTA_VALIDADE { get; set; } 
        public int ID_FORMA_PAG { get; set; }
   
        [Display(Name = "Cond.Pagamento")]
        [NotZero(ErrorMessage = "Condição de Pagamento deve ser informada!")]
        public int ID_CONDICAO_PAG { get; set; }
    
        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(800)]   
        public string OBS { get; set; }

        [Display(Name = "Tipo de Estoque")]
        [Required(ErrorMessage = "Tipo de estoque deve ser informado!")]
        [NotZero(ErrorMessage = "Tipo de estoque não deve ser 0 (zero)!")]
        public int ID_TIPO_MOV_ESTOQUE
        {
            get { return GetValue(() => ID_TIPO_MOV_ESTOQUE); }
            set { SetValue(() => ID_TIPO_MOV_ESTOQUE, value); }
        }  
   
        public int STATUS { get; set; } 
      
        public int ID_PEDIDO { get; set; }

        public decimal VLR_SERVICOS_BRU { get; set; }
   
        public decimal VLR_PRODUTOS_BRU { get; set; }

        public decimal PER_DESCONTO_PRO { get; set; }
        public decimal PER_DESCONTO_SER { get; set; }  

        public decimal VLR_DESCONTO_PRO { get; set; }

        public decimal VLR_DESCONTO_SER { get; set; }

        public decimal VLR_SERVICOS_LIQ { get; set; }

        public decimal VLR_PRODUTOS_LIQ { get; set; }
        public decimal VLR_TOTAL { get; set; } 

    }
}
