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
    [Table("CMP_TB_M_RAA")]
    public class CMP_EF_M_RAA : NotifyingObject
    {
        [Key]
        public int ID_RAA 
        {
            get { return GetValue(() => ID_RAA); }
            set { SetValue(() => ID_RAA, value); }
        }

        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        public System.DateTime DTA_EMISSAO 
        {
            get { return GetValue(() => DTA_EMISSAO); }
            set { SetValue(() => DTA_EMISSAO, value); }
        }

        public string COD_DOCUMENTACAO 
        {
            get { return GetValue(() => COD_DOCUMENTACAO); }
            set { SetValue(() => COD_DOCUMENTACAO, value); }
        }

        public string COD_DOCUMENTACAO_REV 
        {
            get { return GetValue(() => COD_DOCUMENTACAO_REV); }
            set { SetValue(() => COD_DOCUMENTACAO_REV, value); }
        }

        public string NRO_RAA 
        {
            get { return GetValue(() => NRO_RAA); }
            set { SetValue(() => NRO_RAA, value); }
        }

        public int ID_PRODUTO 
        {
            get { return GetValue(() => ID_PRODUTO); }
            set { SetValue(() => ID_PRODUTO, value); }
        }

        public System.DateTime DTA_RECEBIMENTO_ITEM 
        {
            get { return GetValue(() => DTA_RECEBIMENTO_ITEM); }
            set { SetValue(() => DTA_RECEBIMENTO_ITEM, value); }
        }

        public string CODIGO_FABRICA 
        {
            get { return GetValue(() => CODIGO_FABRICA); }
            set { SetValue(() => CODIGO_FABRICA, value); }
        }


        public int ID_FORNECEDOR 
        {
            get { return GetValue(() => ID_FORNECEDOR); }
            set { SetValue(() => ID_FORNECEDOR, value); }
        }

        public int ID_FABRICANTE 
        {
            get { return GetValue(() => ID_FABRICANTE); }
            set { SetValue(() => ID_FABRICANTE, value); }
        }

        public double QTDE_AMOSTRA 
        {
            get { return GetValue(() => QTDE_AMOSTRA); }
            set { SetValue(() => QTDE_AMOSTRA, value); }
        }

        public int ID_SETOR 
        {
            get { return GetValue(() => ID_SETOR); }
            set { SetValue(() => ID_SETOR, value); }
        }

        public int ID_CLA 
        {
            get { return GetValue(() => ID_CLA); }
            set { SetValue(() => ID_CLA, value); }
        }

        public int PERGUNTA_1 
        {
            get { return GetValue(() => PERGUNTA_1); }
            set { SetValue(() => PERGUNTA_1, value); }
        }

        public int PERGUNTA_2 
        {
            get { return GetValue(() => PERGUNTA_2); }
            set { SetValue(() => PERGUNTA_2, value); }
        }

        public int PERGUNTA_3 
        {
            get { return GetValue(() => PERGUNTA_3); }
            set { SetValue(() => PERGUNTA_3, value); }
        }

        public int PERGUNTA_4 
        {
            get { return GetValue(() => PERGUNTA_4); }
            set { SetValue(() => PERGUNTA_4, value); }
        }

        public int PERGUNTA_5 
        {
            get { return GetValue(() => PERGUNTA_5); }
            set { SetValue(() => PERGUNTA_5, value); }
        }

        public int PERGUNTA_6 
        {
            get { return GetValue(() => PERGUNTA_6); }
            set { SetValue(() => PERGUNTA_6, value); }
        }

        public int PERGUNTA_7 
        {
            get { return GetValue(() => PERGUNTA_7); }
            set { SetValue(() => PERGUNTA_7, value); }
        }

        public int PERGUNTA_8 
        {
            get { return GetValue(() => PERGUNTA_8); }
            set { SetValue(() => PERGUNTA_8, value); }
        }

        public int RESULTADO 
        {
            get { return GetValue(() => RESULTADO); }
            set { SetValue(() => RESULTADO, value); }
        }

        public int INCORPORA_ITEM 
        {
            get { return GetValue(() => INCORPORA_ITEM); }
            set { SetValue(() => INCORPORA_ITEM, value); }
        }

        public int ID_ANALISTA 
        {
            get { return GetValue(() => ID_ANALISTA); }
            set { SetValue(() => ID_ANALISTA, value); }
        }

        public Nullable<System.DateTime> DTA_ANALISE 
        {
            get { return GetValue(() => DTA_ANALISE); }
            set { SetValue(() => DTA_ANALISE, value); }
        }

        public string OBSERVACAO
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        //FKs
        [ForeignKey("ID_RAA")]
        public virtual ObservableCollection<CMP_EF_M_RAA_ITE> CMP_EF_M_RAA_ITE
        {
            get { return GetValue(() => CMP_EF_M_RAA_ITE); }
            set { SetValue(() => CMP_EF_M_RAA_ITE, value); }
        }


    }
}
