using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{

    [Table("CAD_TB_C_FPG")]
    public class CAD_EF_C_FPG : NotifyingObject
    {

        [Key]
        [Display(Name = "Código")]  
        public int ID_FORMA_PAG
        {
            get { return GetValue(() => ID_FORMA_PAG); }
            set { SetValue(() => ID_FORMA_PAG, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Tipo Movimento")]
        [Required(ErrorMessage = "Tipo deve ser informado!")]
        public TIPO_MOV_ES_ENUM TIPO
        {
            get { return GetValue(() => TIPO); }
            set { SetValue(() => TIPO, value); }
        }

        [Display(Name = "Documento Impresso")]
        [Required(ErrorMessage = "Documento impresso ser informado!")]
        public DOC_IMPRESSO_ENUM DOC_IMPRESSO
        {
            get { return GetValue(() => DOC_IMPRESSO); }
            set { SetValue(() => DOC_IMPRESSO, value); }
        }

        [Display(Name = "Débito/Crédito")]
        public DEB_CRE_ENUM CAR_DEB_CRE
        {
            get { return GetValue(() => CAR_DEB_CRE); }
            set { SetValue(() => CAR_DEB_CRE, value); }
        }

        [Display(Name = "Taxa do Cartão")]
        public  Nullable<double> CAR_TAXA
        {
            get { return GetValue(() => CAR_TAXA); }
            set { SetValue(() => CAR_TAXA, value); }
        }

        [Display(Name = "Dia de Crédito")]
        public Nullable<int> CAR_DIA_PAG
        {
            get { return GetValue(() => CAR_DIA_PAG); }
            set { SetValue(() => CAR_DIA_PAG, value); }
        }

        [Display(Name = "Conta a ser creditado.")]
        public Nullable<int> CAR_CONTA
        {
            get { return GetValue(() => CAR_CONTA); }
            set { SetValue(() => CAR_CONTA, value); }
        }

        [Display(Name = "SAC Operadora")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(13)]
        public string CAR_TELEFONE
        {
            get { return GetValue(() => CAR_TELEFONE); }
            set { SetValue(() => CAR_TELEFONE, value); }
        }

        [Display(Name = "Critica cliente em débito?")]
        public bool CRI_DEBI_CLIENTE
        {
            get { return GetValue(() => CRI_DEBI_CLIENTE); }
            set { SetValue(() => CRI_DEBI_CLIENTE, value); }
        }

        // Venda
        [Display(Name = "Vendas - Plano de Contas")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Plano de Contas deve ser informado!")]
        public string VEN_ID_PLANO
        {
            get { return GetValue(() => VEN_ID_PLANO); }
            set { SetValue(() => VEN_ID_PLANO, value); }
        }

        // Compras
        [Display(Name = "Compras - Plano de Contas")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Plano de Contas deve ser informado!")]
        public string COM_ID_PLANO
        {
            get { return GetValue(() => COM_ID_PLANO); }
            set { SetValue(() => COM_ID_PLANO, value); }
        }

        // Contas a Pagar
        [Display(Name = "Contas a Pagar - Plano de Contas")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Plano de Contas deve ser informado!")]
        public string PAG_ID_PLANO
        {
            get { return GetValue(() => PAG_ID_PLANO); }
            set { SetValue(() => PAG_ID_PLANO, value); }
        }

        [Display(Name = "Contas a Pagar - Juros - Plano de Contas")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Plano de Contas deve ser informado!")]
        public string PAG_ID_PLANO_JUROS
        {
            get { return GetValue(() => PAG_ID_PLANO_JUROS); }
            set { SetValue(() => PAG_ID_PLANO_JUROS, value); }
        }

        [Display(Name = "Contas a Pagar - Desconto - Plano de Contas")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Plano de Contas deve ser informado!")]
        public string PAG_ID_PLANO_DESCONTO
        {
            get { return GetValue(() => PAG_ID_PLANO_DESCONTO); }
            set { SetValue(() => PAG_ID_PLANO_DESCONTO, value); }
        }

        // Contas a Receber
        [Display(Name = "Contas a Receber - Plano de Contas")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Plano de Contas deve ser informado!")]
        public string REC_ID_PLANO
        {
            get { return GetValue(() => REC_ID_PLANO); }
            set { SetValue(() => REC_ID_PLANO, value); }
        }

        [Display(Name = "Contas a Pagar - Juros - Plano de Contas")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Plano de Contas deve ser informado!")]
        public string REC_ID_PLANO_JUROS
        {
            get { return GetValue(() => REC_ID_PLANO_JUROS); }
            set { SetValue(() => REC_ID_PLANO_JUROS, value); }
        }

        [Display(Name = "Contas a Pagar - Desconto - Plano de Contas")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Plano de Contas deve ser informado!")]
        public string REC_ID_PLANO_DESCONTO
        {
            get { return GetValue(() => REC_ID_PLANO_DESCONTO); }
            set { SetValue(() => REC_ID_PLANO_DESCONTO, value); }
        }

        [Display(Name = "Centro de Custo")]
        [Required(ErrorMessage = "Centro de Custo deve ser informado!")]
        [NotZero(ErrorMessage = "Centro de Custo não deve ser 0 (zero)!")]
        public int ID_CCUSTO
        {
            get { return GetValue(() => ID_CCUSTO); }
            set { SetValue(() => ID_CCUSTO, value); }
        }

        [Display(Name = "Conta Corrente")]
        [Required(ErrorMessage = "Conta Corrente deve ser informado!")]
        public int ID_CONTA
        {
            get { return GetValue(() => ID_CONTA); }
            set { SetValue(() => ID_CONTA, value); }
        }

        [Display(Name = "Tipo Financeiro")]
        [Required(ErrorMessage = "Tipo Financeiro deve ser informado!")]
        public int ID_TIPO_FINANCEIRO
        {
            get { return GetValue(() => ID_TIPO_FINANCEIRO); }
            set { SetValue(() => ID_TIPO_FINANCEIRO, value); }
        }

        public bool GERA_CAIXA_BANCO
        {
            get { return GetValue(() => GERA_CAIXA_BANCO); }
            set { SetValue(() => GERA_CAIXA_BANCO, value); }
        }


        //FKs

        [ForeignKey("ID_CONTA")]

        public virtual CAD_EF_C_CTC CAD_EF_C_CTC { get; set; }

        [ForeignKey("ID_TIPO_FINANCEIRO")]

        public virtual CAD_EF_C_TIF CAD_EF_C_TIF { get; set; }

        [ForeignKey("ID_CCUSTO")]
        public virtual CAD_EF_C_CCU CAD_EF_C_CCU { get; set; }

    }
}
