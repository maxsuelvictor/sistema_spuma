using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_PSC")]
    public class PCP_EF_M_PSC : NotifyingObject
    {
        [Key]
        public int ID_PSC 
        {
            get { return GetValue(() => ID_PSC ); }
            set { SetValue(() => ID_PSC , value); }
        }

        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA ); }
            set { SetValue(() => ID_EMPRESA , value); }
        }

        public string NOME_CLIENTE 
        {
            get { return GetValue(() => NOME_CLIENTE ); }
            set { SetValue(() => NOME_CLIENTE, value); }
        }

        public System.DateTime DATA 
        {
            get { return GetValue(() => DATA ); }
            set { SetValue(() => DATA, value); }
        }

        public string CIDADE 
        {
            get { return GetValue(() => CIDADE ); }
            set { SetValue(() => CIDADE, value); }
        }

        public string ESTADO 
        {
            get { return GetValue(() => ESTADO ); }
            set { SetValue(() => ESTADO, value); }
        }

        public string TELEFONE 
        {
            get { return GetValue(() => TELEFONE ); }
            set { SetValue(() => TELEFONE, value); }
        }

        public string CELULAR 
        {
            get { return GetValue(() => CELULAR ); }
            set { SetValue(() => CELULAR, value); }
        }

        public string OBSERVACAO 
        {
            get { return GetValue(() => OBSERVACAO ); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        public int PERGUNTA_1 
        {
            get { return GetValue(() => PERGUNTA_1 ); }
            set { SetValue(() => PERGUNTA_1, value); }
        }

        public int PERGUNTA_2 
        {
            get { return GetValue(() => PERGUNTA_2 ); }
            set { SetValue(() => PERGUNTA_2, value); }
        }

        public int PERGUNTA_3 
        {
            get { return GetValue(() => PERGUNTA_3 ); }
            set { SetValue(() => PERGUNTA_3, value); }
        }

        public int PERGUNTA_4 
        {
            get { return GetValue(() => PERGUNTA_4 ); }
            set { SetValue(() => PERGUNTA_4, value); }
        }

        public string PERGUNTA_4_RESPOSTA 
        {
            get { return GetValue(() => PERGUNTA_4_RESPOSTA ); }
            set { SetValue(() => PERGUNTA_4_RESPOSTA, value); }
        }

        public int PERGUNTA_5 
        {
            get { return GetValue(() => PERGUNTA_5 ); }
            set { SetValue(() => PERGUNTA_5, value); }
        }

        public string PERGUNTA_5_RESPOSTA 
        {
            get { return GetValue(() => PERGUNTA_5_RESPOSTA ); }
            set { SetValue(() => PERGUNTA_5_RESPOSTA, value); }
        }

        public int ID_RESPONSAVEL 
        {
            get { return GetValue(() => ID_RESPONSAVEL ); }
            set { SetValue(() => ID_RESPONSAVEL, value); }
        }

        public string COD_DOCUMENTACAO 
        {
            get { return GetValue(() => COD_DOCUMENTACAO ); }
            set { SetValue(() => COD_DOCUMENTACAO, value); }
        }

        public string COD_DOCUMENTACAO_REV
        {
            get { return GetValue(() => COD_DOCUMENTACAO_REV); }
            set { SetValue(() => COD_DOCUMENTACAO_REV, value); }
        }

        //FKs
        public virtual ICollection<PCP_EF_M_PSC_PRT> PCP_EF_M_PSC_PRT { get; set; }


    }
}
