using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Estoque
{
    //Ficha sintetica de produtos por almoxarifado- Antiga EST...SLD_AL
    [Table("EST_TB_M_FES_ALM")]
    public class EST_EF_M_FES_ALM : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_PRODUTO
        {
            get { return GetValue(() => ID_PRODUTO); }
            set { SetValue(() => ID_PRODUTO, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_ALMOXARIFADO 
        {
            get { return GetValue(() => ID_ALMOXARIFADO); }
            set { SetValue(() => ID_ALMOXARIFADO, value); }
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

        [Display(Name = "Qtde Inventario")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<double> QTDE_ULT_INVENTARIO 
        {
            get { return GetValue(() => QTDE_ULT_INVENTARIO); }
            set { SetValue(() => QTDE_ULT_INVENTARIO, value); }
        }

        [Display(Name = "Qtde de Entrada")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public double QTDE_ENTRADA
        {
            get { return GetValue(() => QTDE_ENTRADA); }
            set { SetValue(() => QTDE_ENTRADA, value); }
        }

        [Display(Name = "Qtde de Saidas")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]        
        public double QTDE_SAIDA
        {
            get { return GetValue(() => QTDE_SAIDA); }
            set { SetValue(() => QTDE_SAIDA, value); }
        }

        [Display(Name = "Saldo Atual")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public double SALDO_ATUAL_FISICO 
        {
            get { return GetValue(() => SALDO_ATUAL_FISICO); }
            set { SetValue(() => SALDO_ATUAL_FISICO, value); }
        }

    }
}
