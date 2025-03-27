using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Globalization;
using System.Linq;
using enLoja.Model.Validações;
using enLoja.Model.Estoque;

namespace enLoja.Model.Estoque
{
    [Table("EST_TB_M_CTE_ITE")]
    public class EST_EF_M_CTE_ITE : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Pedido")]
        public int ID_CONTROLE
        {
            get { return GetValue(() => ID_CONTROLE); }
            set { SetValue(() => ID_CONTROLE, value); }
        }

        [ForeignKey("ID_CONTROLE")]
        public virtual EST_EF_M_CTE EST_EF_M_CTE
        {
            get { return GetValue(() => EST_EF_M_CTE); }
            set { SetValue(() => EST_EF_M_CTE, value); }
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

        [Display(Name = "Código de Barra")]
        [StringLength(50)]
        public string COD_BARRA
        {
            get { return GetValue(() => COD_BARRA); }
            set { SetValue(() => COD_BARRA, value); }
        }

        public float CONTAGEM
        {
            get { return GetValue(() => CONTAGEM); }
            set { SetValue(() => CONTAGEM, value); }
        }




    }
}
