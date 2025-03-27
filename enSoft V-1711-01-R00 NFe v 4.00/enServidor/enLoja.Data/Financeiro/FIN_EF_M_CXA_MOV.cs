using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Financeiro
{
    [Table("FIN_TB_M_CXA_MOV")]
    public class FIN_EF_M_CXA_MOV : NotifyingObject
    {

        [Key]
        [Display(Name = "Nº Controle")]
        public int ID_CONTROLE
        {
            get { return GetValue(() => ID_CONTROLE); }
            set { SetValue(() => ID_CONTROLE, value); }
        }

        [Display(Name = "Empresa")]
        [Required(ErrorMessage = "Empresa deve ser informada.")]
        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Nº Abertura")]
        public Nullable<int> ID_ABERURA
        {
            get { return GetValue(() => ID_ABERURA); }
            set { SetValue(() => ID_ABERURA, value); }
        }

        [Display(Name = "Tipo do Lançamento")]
        [Required(ErrorMessage = "Tipo do lançamento deve ser informado.")]  // 0- Caixa, 1 -Banco
        public CXA_TIPO_LANCA_ENUM TIPO_LANCAMENTO
        {
            get { return GetValue(() => TIPO_LANCAMENTO); }
            set { SetValue(() => TIPO_LANCAMENTO, value); }
        }

        [Display(Name = "Data Lançamento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de lançamento deve ser Informada!")]
        public DateTime DTA_LANCAMENTO
        {
            get { return GetValue(() => DTA_LANCAMENTO); }
            set { SetValue(() => DTA_LANCAMENTO, value); }
        }

        [Display(Name = "Numero do documento")]
        [Required(ErrorMessage = "Numero do documento deve ser informado.")]  
        public int NUM_DOC
        {
            get { return GetValue(() => NUM_DOC); }
            set { SetValue(() => NUM_DOC, value); }
        }

        [Display(Name = "Plano de Contas")]
        [Required(ErrorMessage = "Plano de contas deve ser informado.")]
        public string ID_PLANO
        {
            get { return GetValue(() => ID_PLANO); }
            set { SetValue(() => ID_PLANO, value); }
        }

        [Display(Name = "Natureza da conta")]
        [Required(ErrorMessage = "Natureza deve ser informado.")]
        public DEB_CRE_ENUM DEB_CRE
        {
            get { return GetValue(() => DEB_CRE); }
            set { SetValue(() => DEB_CRE, value); }
        }



        [Display(Name = "Historico")]
        [Required(ErrorMessage = "Historico deve ser informado.")]
        [StringLength(100)]
        public string HISTORICO
        {
            get { return GetValue(() => HISTORICO); }
            set { SetValue(() => HISTORICO, value); }
        }

        [Display(Name = "Vlr.Lançamento")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_LANCAMENTO
        {
            get { return GetValue(() => VLR_LANCAMENTO); }
            set { SetValue(() => VLR_LANCAMENTO, value); }
        }

        [Display(Name = "Status do lançamento")]
        [Required(ErrorMessage = "Status deve ser informado!")]
        public STATUS_ENUM STATUS
        {
            get { return GetValue(() => STATUS); }
            set { SetValue(() => STATUS, value); }
        }

        [Display(Name = "Origem do lançamento")]
        [Required(ErrorMessage = "Origem deve ser informado!")]
        public ORIGEM_ENUM ORIGEM
        {
            get { return GetValue(() => ORIGEM); }
            set { SetValue(() => ORIGEM, value); }
        }

        [Display(Name = "Conta corrente - Somente Rotina de mov.bancario")]
        public Nullable<int> ID_CONTA
        {
            get { return GetValue(() => ID_CONTA); }
            set { SetValue(() => ID_CONTA, value); }
        }

        [Display(Name = "Tipo Financeiro")]
        [Required(ErrorMessage = "Tipo financeiro deve ser informado.")]
        public int ID_TIPO_FINANCEIRO
        {
            get { return GetValue(() => ID_TIPO_FINANCEIRO); }
            set { SetValue(() => ID_TIPO_FINANCEIRO, value); }
        }

        [Display(Name = "Numero")]
        public Nullable<int> CONC_NUMERO
        {
            get { return GetValue(() => CONC_NUMERO); }
            set { SetValue(() => CONC_NUMERO, value); }
        }

        [Display(Name = "Tipo Financeiro")]
        public Nullable<int> CONC_TIPO_FINANCEIRO
        {
            get { return GetValue(() => CONC_TIPO_FINANCEIRO); }
            set { SetValue(() => CONC_TIPO_FINANCEIRO, value); }
        }

        [Display(Name = "Plano de Contas")]
        public string CONC_ID_PLANO
        {
            get { return GetValue(() => CONC_ID_PLANO); }
            set { SetValue(() => CONC_ID_PLANO, value); }
        }

        [Display(Name = "Vlr.Lançamento")]
        public Nullable<decimal> CONC_VLR_LANCAMENTO
        {
            get { return GetValue(() => CONC_VLR_LANCAMENTO); }
            set { SetValue(() => CONC_VLR_LANCAMENTO, value); }
        }

        [Display(Name = "Nº Controle Destino")]
        public int EXP_ID_CONTROLE
        {
            get { return GetValue(() => EXP_ID_CONTROLE); }
            set { SetValue(() => EXP_ID_CONTROLE, value); }
        }

        [Display(Name = "Exporta Tipo Financeiro")]
        public int EXP_ID_TIPO_FINANCEIRO
        {
            get { return GetValue(() => EXP_ID_TIPO_FINANCEIRO); }
            set { SetValue(() => EXP_ID_TIPO_FINANCEIRO, value); }
        }

        [Display(Name = "Exporta Plano de Contas")]
        public string EXP_ID_PLANO
        {
            get { return GetValue(() => EXP_ID_PLANO); }
            set { SetValue(() => EXP_ID_PLANO, value); }
        }

        [Display(Name = "Exporta Conta corrente")]
        public int EXP_ID_CONTA
        {
            get { return GetValue(() => EXP_ID_CONTA); }
            set { SetValue(() => EXP_ID_CONTA, value); }
        }


    }
}
