using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Estoque
{
    [Table("EST_TB_M_INV")]
    public class EST_EF_M_INV : NotifyingObject
    {

        [Key, Column(Order = 1)]
        public DateTime DTA_INVENTARIO
        {
            get { return GetValue(() => DTA_INVENTARIO); }
            set { SetValue(() => DTA_INVENTARIO, value); }
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

        [Key, Column(Order = 3)]
        [NotZero(ErrorMessage = "Empresa não deve ser 0 (zero)!")]
        [Display(Name = "Empresa")]
        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        public float QTDE
        {
            get { return GetValue(() => QTDE); }
            set { SetValue(() => QTDE, value); }
        }

        public float CUSTO
        {
            get { return GetValue(() => CUSTO); }
            set { SetValue(() => CUSTO, value); }
        }

    }
}
