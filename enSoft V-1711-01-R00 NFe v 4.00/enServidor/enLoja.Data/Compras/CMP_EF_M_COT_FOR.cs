using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Compras
{
    [Table("CMP_TB_M_COT_FOR")]
    public class CMP_EF_M_COT_FOR : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_COTACAO
        {
            get { return GetValue(() => ID_COTACAO); }
            set { SetValue(() => ID_COTACAO, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_FORNECEDOR 
        {
            get { return GetValue(() => ID_FORNECEDOR); }
            set { SetValue(() => ID_FORNECEDOR, value); }
        }

        public Nullable<System.DateTime> DTA_LANCAMENTO
        {
            get { return GetValue(() => DTA_LANCAMENTO); }
            set { SetValue(() => DTA_LANCAMENTO, value); }
        }
 
        public decimal VLR_TOTAL
        {
            get { return GetValue(() => VLR_TOTAL); }
            set { SetValue(() => VLR_TOTAL, value); }
        }

        public int STATUS
        {
            get { return GetValue(() => STATUS); }
            set { SetValue(() => STATUS, value); }
        }

        //FKs

        public virtual CMP_EF_M_COT CMP_EF_M_COT { get; set; }

        //FKs

        public virtual ICollection<CMP_EF_M_COT_FIT> CMP_EF_M_COT_FIT { get; set; }


    }
}
