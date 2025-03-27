using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Compras
{
    [Table("CMP_TB_M_SOL_ITE")]
    public class CMP_EF_M_SOL_ITE : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Solcitação")]
        public int ID_SOLICITACAO
        {
            get { return GetValue(() => ID_SOLICITACAO); }
            set { SetValue(() => ID_SOLICITACAO, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Item")]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }




        [Display(Name = "Qtde")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Quantidade não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Quantidade deve ser informado!")]
        public double QTDE
        {
            get { return GetValue(() => QTDE); }
            set { SetValue(() => QTDE, value); }
        }

        [Display(Name = "Observação")]
        [StringLength(100)]
        public string OBS
        {
            get { return GetValue(() => OBS); }
            set { SetValue(() => OBS, value); }
        }

        //FKs
        [ForeignKey("ID_SOLICITACAO")]
        public virtual CMP_EF_M_SOL CMP_EF_M_SOL
        {
            get { return GetValue(() => CMP_EF_M_SOL); }
            set { SetValue(() => CMP_EF_M_SOL, value); }
        }


        [ForeignKey("ID_ITEM")]
        public virtual CAD_EF_C_ITE CAD_EF_C_ITE { get; set; }

    }
}
