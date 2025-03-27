using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Tipos de Programação da Produção
             
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_TPP")]
    public class PCP_EF_C_TPP : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_TPP
        {
            get { return GetValue(() => ID_TPP); }
            set { SetValue(() => ID_TPP, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        //FKs

        [ForeignKey("ID_TPP")]
        public virtual ICollection<PCP_EF_C_TPP_SET> PCP_EF_C_TPP_SET { get; set; }

    }
}
