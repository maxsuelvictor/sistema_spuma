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
    [Table("CMP_TB_M_IQF")]
    public class CMP_EF_M_IQF : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_FORNECEDOR 
        {
            get { return GetValue(() => ID_FORNECEDOR); }
            set { SetValue(() => ID_FORNECEDOR, value); }
        }
        [Key, Column(Order = 2)]
        public int ANO_IQF 
        {
            get { return GetValue(() => ANO_IQF); }
            set { SetValue(() => ANO_IQF, value); }
        }
        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
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
        
        public int ID_RESPONSAVEL 
        {
            get { return GetValue(() => ID_RESPONSAVEL); }
            set { SetValue(() => ID_RESPONSAVEL, value); }
        }
        public Nullable<System.DateTime> DTA_SEMESTRE1 
        {
            get { return GetValue(() => DTA_SEMESTRE1); }
            set { SetValue(() => DTA_SEMESTRE1, value); }
        }

        public int QTDE_NF_SEMESTRE1 
        {
            get { return GetValue(() => QTDE_NF_SEMESTRE1); }
            set { SetValue(() => QTDE_NF_SEMESTRE1, value); }
        }

        public int QTDE_DEMERITOS_SEMESTRE1 
        {
            get { return GetValue(() => QTDE_DEMERITOS_SEMESTRE1); }
            set { SetValue(() => QTDE_DEMERITOS_SEMESTRE1, value); }
        }

        public int QTDE_PLANO_ACAO_SEMESTRE1 
        {
            get { return GetValue(() => QTDE_PLANO_ACAO_SEMESTRE1); }
            set { SetValue(() => QTDE_PLANO_ACAO_SEMESTRE1, value); }
        }

        public double IQF_SEMESTRE1 
        {
            get { return GetValue(() => IQF_SEMESTRE1); }
            set { SetValue(() => IQF_SEMESTRE1, value); }
        }

        public int STATUS_SEMESTRE1 
        {
            get { return GetValue(() => STATUS_SEMESTRE1); }
            set { SetValue(() => STATUS_SEMESTRE1, value); }
        }

        public Nullable<System.DateTime> DTA_SEMESTRE2 
        {
            get { return GetValue(() => DTA_SEMESTRE2); }
            set { SetValue(() => DTA_SEMESTRE2, value); }
        }

        public int QTDE_NF_SEMESTRE2 
        {
            get { return GetValue(() => QTDE_NF_SEMESTRE2); }
            set { SetValue(() => QTDE_NF_SEMESTRE2, value); }
        }

        public int QTDE_DEMERITOS_SEMESTRE2 
        {
            get { return GetValue(() => QTDE_DEMERITOS_SEMESTRE2); }
            set { SetValue(() => QTDE_DEMERITOS_SEMESTRE2, value); }
        }

        public int QTDE_PLANO_ACAO_SEMESTRE2 
        {
            get { return GetValue(() => QTDE_PLANO_ACAO_SEMESTRE2); }
            set { SetValue(() => QTDE_PLANO_ACAO_SEMESTRE2, value); }
        }

        public double IQF_SEMESTRE2 
        {
            get { return GetValue(() => IQF_SEMESTRE2); }
            set { SetValue(() => IQF_SEMESTRE2, value); }
        }

        public int STATUS_SEMESTRE2 
        {
            get { return GetValue(() => STATUS_SEMESTRE2); }
            set { SetValue(() => STATUS_SEMESTRE2, value); }
        }

        public Nullable<System.DateTime> RA_DTA_PREVISTA 
        {
            get { return GetValue(() => RA_DTA_PREVISTA); }
            set { SetValue(() => RA_DTA_PREVISTA, value); }
        }

        public Nullable<System.DateTime> RA_DTA_REALIZADA 
        {
            get { return GetValue(() => RA_DTA_REALIZADA); }
            set { SetValue(() => RA_DTA_REALIZADA, value); }
        }

        public Nullable<double> RA_METODO1_MEDIA_ANUAL 
        {
            get { return GetValue(() => RA_METODO1_MEDIA_ANUAL); }
            set { SetValue(() => RA_METODO1_MEDIA_ANUAL, value); }
        }

        public string RA_METODO1_STATUS 
        {
            get { return GetValue(() => RA_METODO1_STATUS); }
            set { SetValue(() => RA_METODO1_STATUS, value); }
        }

        public string RA_METODO2_ESPECIFICO 
        {
            get { return GetValue(() => RA_METODO2_ESPECIFICO); }
            set { SetValue(() => RA_METODO2_ESPECIFICO, value); }
        }

        public string RA_METODO2_STATUS 
        {
            get { return GetValue(() => RA_METODO2_STATUS); }
            set { SetValue(() => RA_METODO2_STATUS, value); }
        }

        public string RA_OBSERVACAO 
        {
            get { return GetValue(() => RA_OBSERVACAO); }
            set { SetValue(() => RA_OBSERVACAO, value); }
        }

        public string OBSERVACAO_GERAL
        {
            get { return GetValue(() => OBSERVACAO_GERAL); }
            set { SetValue(() => OBSERVACAO_GERAL, value); }
        }

    }
}
