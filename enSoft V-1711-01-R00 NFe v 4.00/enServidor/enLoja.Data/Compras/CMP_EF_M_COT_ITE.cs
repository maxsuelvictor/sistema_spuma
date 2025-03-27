using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Compras
{
    [Table("CMP_TB_M_COT_ITE")]
    public class CMP_EF_M_COT_ITE : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_COTACAO 
        {
            get { return GetValue(() => ID_COTACAO); }
            set { SetValue(() => ID_COTACAO, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_ITEM 
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        public double QTDE
        {
            get { return GetValue(() => QTDE); }
            set { SetValue(() => QTDE, value); }
        }

        //FKs

        public virtual CMP_EF_M_COT CMP_EF_M_COT { get; set; }



    }
}
