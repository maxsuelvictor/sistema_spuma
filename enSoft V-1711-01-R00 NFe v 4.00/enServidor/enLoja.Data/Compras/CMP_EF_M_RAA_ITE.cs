using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;


namespace enLoja.Model.Compras
{
    [Table("CMP_TB_M_RAA_ITE")]
    public class CMP_EF_M_RAA_ITE : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_RAA 
        {
            get { return GetValue(() => ID_RAA); }
            set { SetValue(() => ID_RAA, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_RAA_I 
        {
            get { return GetValue(() => ID_RAA_I); }
            set { SetValue(() => ID_RAA_I, value); }
        }

        public string ACAO_NECESSARIA 
        {
            get { return GetValue(() => ACAO_NECESSARIA); }
            set { SetValue(() => ACAO_NECESSARIA, value); }
        }

        public int ID_RESPONSAVEL 
        {
            get { return GetValue(() => ID_RESPONSAVEL); }
            set { SetValue(() => ID_RESPONSAVEL, value); }
        }

        public System.DateTime DTA_PRAZO 
        {
            get { return GetValue(() => DTA_PRAZO); }
            set { SetValue(() => DTA_PRAZO, value); }
        }

        public Nullable<System.DateTime> DTA_EXECUTADO 
        {
            get { return GetValue(() => DTA_EXECUTADO); }
            set { SetValue(() => DTA_EXECUTADO, value); }
        }

        public string OBSERVACAO
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        //FKs

        [ForeignKey("ID_RAA")]
        public virtual CMP_EF_M_RAA CMP_EF_M_RAA
        {
            get { return GetValue(() => CMP_EF_M_RAA); }
            set { SetValue(() => CMP_EF_M_RAA, value); }
        }



    }
}
