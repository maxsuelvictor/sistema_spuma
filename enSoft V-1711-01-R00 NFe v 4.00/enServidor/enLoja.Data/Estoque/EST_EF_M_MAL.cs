using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Estoque;

namespace enLoja.Model.Estoque
{
    [Table("EST_TB_M_MAL")]  //CONTROLE DE ALMOXARIFADO
    public class EST_EF_M_MAL : NotifyingObject
    {
        [Key]
        public int ID_MAL 
        {
            get { return GetValue(() => ID_MAL); }
            set { SetValue(() => ID_MAL, value); }
        }

        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        public System.DateTime DATA 
        {
            get { return GetValue(() => DATA); }
            set { SetValue(() => DATA, value); }
        }

        public int ID_ALMOXARIFADO 
        {
            get { return GetValue(() => ID_ALMOXARIFADO); }
            set { SetValue(() => ID_ALMOXARIFADO, value); }
        }

        public int ID_TIPO_ESTOQUE 
        {
            get { return GetValue(() => ID_TIPO_ESTOQUE); }
            set { SetValue(() => ID_TIPO_ESTOQUE, value); }
        }

        public int ID_SETOR 
        {
            get { return GetValue(() => ID_SETOR); }
            set { SetValue(() => ID_SETOR, value); }
        }

        public int ID_RESPONSAVEL 
        {
            get { return GetValue(() => ID_RESPONSAVEL); }
            set { SetValue(() => ID_RESPONSAVEL, value); }
        }

        public string OBSERVACAO 
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        public Nullable<int> TIPO
        {
            get { return GetValue(() => TIPO); }
            set { SetValue(() => TIPO, value); }
        }

    }
}
