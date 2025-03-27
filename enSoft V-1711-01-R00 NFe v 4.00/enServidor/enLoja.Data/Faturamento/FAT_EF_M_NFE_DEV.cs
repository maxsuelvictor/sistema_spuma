using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;
using enLoja.Model.Enums;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_NFE_DEV")]
    public class FAT_EF_M_NFE_DEV : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Fiscal")]
        public int ID_FISCAL
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        [ForeignKey("ID_FISCAL")]
        public virtual FAT_EF_M_NFE FAT_EF_M_NFE
        {
            get { return GetValue(() => FAT_EF_M_NFE); }
            set { SetValue(() => FAT_EF_M_NFE, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Item")]
        [NotZero(ErrorMessage = "Código do Item não deve ser 0 (zero)!")]
        [ExistItem]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Display(Name = "Nº Fiscal de Devolução")]
        public int ID_FISCAL_DEV
        {
            get { return GetValue(() => ID_FISCAL_DEV); }
            set { SetValue(() => ID_FISCAL_DEV, value); }
        }

    }
}
