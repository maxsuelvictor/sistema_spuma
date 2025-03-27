using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Estoque
{
    [Table("EST_TB_M_FES")]
    public class EST_EF_M_FES : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }
        
        [Key, Column(Order = 2)]
        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        public Nullable<DateTime> DATA_ULT_MOVIMENTO 
        {
            get { return GetValue(() => DATA_ULT_MOVIMENTO); }
            set { SetValue(() => DATA_ULT_MOVIMENTO, value); }
        }

        public Nullable<DateTime> DATA_ULT_INVENTARIO 
        {
            get { return GetValue(() => DATA_ULT_INVENTARIO); }
            set { SetValue(() => DATA_ULT_INVENTARIO, value); }
        }


        [Display(Name = "Qtde de Entrada")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<double> QTDE_ENTRADAS
        {
            get { return GetValue(() => QTDE_ENTRADAS); }
            set { SetValue(() => QTDE_ENTRADAS, value); }
        }

        [Display(Name = "Qtde de Saidas")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<double> QTDE_SAIDAS
        {
            get { return GetValue(() => QTDE_SAIDAS); }
            set { SetValue(() => QTDE_SAIDAS, value); }
        }

        [Display(Name = "Saldo Atual")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<double> SALDO
        {
            get { return GetValue(() => SALDO); }
            set { SetValue(() => SALDO, value); }
        }

        [Display(Name = "Qtde Pedido de Compra")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<double> QTDE_PED_COMPRA 
        {
            get { return GetValue(() => QTDE_PED_COMPRA); }
            set { SetValue(() => QTDE_PED_COMPRA, value); }
        }

        [Display(Name = "Qtde Pedido de Venda")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<double> QTDE_PED_VENDA 
        {
            get { return GetValue(() => QTDE_PED_VENDA); }
            set { SetValue(() => QTDE_PED_VENDA, value); }
        }

        [Display(Name = "Valor do Custo Médio")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> VLR_CUSTO_MEDIO
        {
            get { return GetValue(() => VLR_CUSTO_MEDIO); }
            set { SetValue(() => VLR_CUSTO_MEDIO, value); }
        }

        [Display(Name = "Valor do Custo da Ultima Compra")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> VLR_CUSTO_ULT_COMPRA
        {
            get { return GetValue(() => VLR_CUSTO_ULT_COMPRA); }
            set { SetValue(() => VLR_CUSTO_ULT_COMPRA, value); }
        }

    }
}
