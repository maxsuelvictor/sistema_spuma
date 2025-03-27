using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Tabela de Especificações  
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_ESP")]
    public class PCP_EF_C_ESP : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_ESPECIFICACAO
        {
            get { return GetValue(() => ID_ESPECIFICACAO); }
            set { SetValue(() => ID_ESPECIFICACAO, value); }
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
    }
}
