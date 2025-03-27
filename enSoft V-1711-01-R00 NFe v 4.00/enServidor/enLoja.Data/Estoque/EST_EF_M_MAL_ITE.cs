using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Estoque;

namespace enLoja.Model.Estoque
{
    [Table("EST_TB_M_MAL_ITE")]  //CONTROLE DE ALMOXARIFADO
    public class EST_EF_M_MAL_ITE : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_MAL
        {
            get { return GetValue(() => ID_MAL); }
            set { SetValue(() => ID_MAL, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_SEQUENCIA 
        {
            get { return GetValue(() => ID_SEQUENCIA); }
            set { SetValue(() => ID_SEQUENCIA, value); }
        }

        [Key, Column(Order = 3)]
        public int ID_PRODUTO
        {
            get { return GetValue(() => ID_PRODUTO); }
            set { SetValue(() => ID_PRODUTO, value); }
        }


        public double QTDE
        {
            get { return GetValue(() => QTDE); }
            set { SetValue(() => QTDE, value); }
        }

        public string NUM_LOTE 
        {
            get { return GetValue(() => NUM_LOTE); }
            set { SetValue(() => NUM_LOTE, value); }
        }


        public string OBSERVACAO 
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }


    }
}
