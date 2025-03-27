using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Compras
{
    [Table("CMP_TB_M_COT")]
    public class CMP_EF_M_COT : NotifyingObject
    {
        [Key]
        public int ID_COTACAO
        {
            get { return GetValue(() => ID_COTACAO); }
            set { SetValue(() => ID_COTACAO, value); }
        }

        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        public System.DateTime DTA_COTACAO
        {
            get { return GetValue(() => DTA_COTACAO); }
            set { SetValue(() => DTA_COTACAO, value); }
        }

        public string OBS 
        {
            get { return GetValue(() => OBS); }
            set { SetValue(() => OBS, value); }
        }

        public string IP_LANCADOR 
        {
            get { return GetValue(() => IP_LANCADOR); }
            set { SetValue(() => IP_LANCADOR, value); }
        }

        public int ID_FUNCIONARIO
        {
            get { return GetValue(() => ID_FUNCIONARIO); }
            set { SetValue(() => ID_FUNCIONARIO, value); }
        }

        //FKs

        public virtual ICollection<CMP_EF_M_COT_ITE> CMP_EF_M_COT_ITE { get; set; }
        public virtual ICollection<CMP_EF_M_COT_FOR> CMP_EF_M_COT_FOR { get; set; }

    }
}
