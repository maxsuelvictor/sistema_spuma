using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;
using enLoja.Model.Helpers;

namespace enLoja.Model.Financeiro
{
    [Table("FIN_TB_M_REC_PAG")]
    public class FIN_EF_M_REC_PAG : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Titulo")]
        public int ID_TITULO 
        {
            get { return GetValue(() => ID_TITULO); }
            set { SetValue(() => ID_TITULO, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Nº Baixa")]
        public int ID_BAIXA 
        {
            get { return GetValue(() => ID_BAIXA); }
            set { SetValue(() => ID_BAIXA, value); }
        }

        [ForeignKey("ID_TITULO")]
        public virtual FIN_EF_M_REC FIN_EF_M_REC
        {
            get { return GetValue(() => FIN_EF_M_REC); }
            set { SetValue(() => FIN_EF_M_REC, value); }
        }

        [Display(Name = "Data Pagamento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de pagamento deve ser Informada!")]
        public DateTime DTA_PAGAMENTO 
        {
            get { return GetValue(() => DTA_PAGAMENTO); }
            set { SetValue(() => DTA_PAGAMENTO, value); }
        }

        [Display(Name = "Vlr.Pagamento")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_PAGAMENTO 
        {
            get { return GetValue(() => VLR_PAGAMENTO); }
            set { SetValue(() => VLR_PAGAMENTO, value); }
        }


        [Display(Name = "%.Juros")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal PER_JUROS
        {
            get { return GetValue(() => PER_JUROS); }
            set { SetValue(() => PER_JUROS, value); }
        }

        [Display(Name = "Vlr.Juros")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_JUROS 
        {
            get { return GetValue(() => VLR_JUROS); }
            set { SetValue(() => VLR_JUROS, value); }
        }

        [Display(Name = "Vlr.Desconto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> VLR_DESCONTO 
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set { SetValue(() => VLR_DESCONTO, value); }
        }

        [Display(Name = "Histórico")]
        [StringLength(100)]
        [Required(ErrorMessage = "Histórico deve ser Informado!")]
        public string HISTORICO 
        {
            get { return GetValue(() => HISTORICO); }
            set { SetValue(() => HISTORICO, value); }
        }

        [Display(Name = "Forma Pagamento")]
        public int ID_FORMA_PAG 
        {
            get { return GetValue(() => ID_FORMA_PAG); }
            set { SetValue(() => ID_FORMA_PAG, value); }
        }

        [Display(Name = "Plano de Contas")]
        [StringLength(11)]
        public string ID_PLANO
        {
            get { return GetValue(() => ID_PLANO); }
            set { SetValue(() => ID_PLANO, value); }
        }

        [Display(Name = "Juros - Plano de Contas")]
        [StringLength(11)]
        public string ID_PLANO_JUROS
        {
            get { return GetValue(() => ID_PLANO_JUROS); }
            set { SetValue(() => ID_PLANO_JUROS, value); }
        }

        [Display(Name = "Situação do Cheque")]
        public int CHP_ID_SITUACAO_CHQ 
        {
            get { return GetValue(() => CHP_ID_SITUACAO_CHQ); }
            set { SetValue(() => CHP_ID_SITUACAO_CHQ, value); }
        }

        [Display(Name = "Vlr.Anterior")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> CHP_VLR_ANTERIOR 
        {
            get { return GetValue(() => CHP_VLR_ANTERIOR); }
            set { SetValue(() => CHP_VLR_ANTERIOR, value); }
        }

        [Display(Name = "Alínea")]
        [StringLength(2)]
        public string ID_ALINEA
        {
            get { return GetValue(() => ID_ALINEA); }
            set { SetValue(() => ID_ALINEA, value); }
        }

        [Display(Name = "Tipo de Ocorrência")]
        [StringLength(1)]
        public string CHP_TIPO_OCORRENCIA 
        {
            get { return GetValue(() => CHP_TIPO_OCORRENCIA); }
            set { SetValue(() => CHP_TIPO_OCORRENCIA, value); }
        }

        [Display(Name = "Usuário")]
        [StringLength(50)]
        public string USUARIO
        {
            get { return GetValue(() => USUARIO); }
            set { SetValue(() => USUARIO, value); }
        }

        [Display(Name = "Com Substituição")]
        public bool COM_SUBSTITUICAO
        {
            get { return GetValue(() => COM_SUBSTITUICAO); }
            set { SetValue(() => COM_SUBSTITUICAO, value); }
        }

    }
}
