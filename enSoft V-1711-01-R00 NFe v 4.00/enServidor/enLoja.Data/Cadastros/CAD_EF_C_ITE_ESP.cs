using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_ITE_ESP")]
    public class CAD_EF_C_ITE_ESP : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_ESPECIFICACAO 
        {
            get { return GetValue(() => ID_ESPECIFICACAO); }
            set { SetValue(() => ID_ESPECIFICACAO, value); }
        }

        //FKs
        [ForeignKey("ID_ITEM")]
        public virtual CAD_EF_C_ITE CAD_EF_C_ITE
        {
            get { return GetValue(() => CAD_EF_C_ITE); }
            set { SetValue(() => CAD_EF_C_ITE, value); }
        }

    }
}
