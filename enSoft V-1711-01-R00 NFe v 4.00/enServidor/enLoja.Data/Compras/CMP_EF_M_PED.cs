using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;
using enLoja.Model.Enums;

namespace enLoja.Model.Compras
{
    [Table("CMP_TB_M_PED")]
    public class CMP_EF_M_PED : NotifyingObject
    {
        [Key]
        [Display(Name = "Nº Pedido")]
        public int ID_PEDIDO 
        {
            get { return GetValue(() => ID_PEDIDO); }
            set { SetValue(() => ID_PEDIDO, value); }
        }


        [Display(Name = "Empresa")]
        public int ID_EMPRESA         
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Fornecedor")]
        [Required(ErrorMessage = "Fornecedor deve ser Informado!")]
        [NotZero(ErrorMessage = "Fornecedor não deve ser 0 (zero)!")]
        public int ID_FORNECEDOR 
        {
            get { return GetValue(() => ID_FORNECEDOR); }
            set { SetValue(() => ID_FORNECEDOR, value); }
        }

        [Display(Name = "Representante")]
        [Required(ErrorMessage = "Representante deve ser Informado!")]
        [NotZero(ErrorMessage = "Representante não deve ser 0 (zero)!")]
        public int ID_REPRESENTANTE
        {
            get { return GetValue(() => ID_REPRESENTANTE); }
            set { SetValue(() => ID_REPRESENTANTE, value); }
        }


        [Display(Name = "Pedido Sequencial")]
        [Required(ErrorMessage = "Pedido deve ser Informado!")]
        [NotZero(ErrorMessage = "Pedido não deve ser 0 (zero)!")]
        public int NRO_PEDIDO 
        {
            get { return GetValue(() => NRO_PEDIDO); }
            set { SetValue(() => NRO_PEDIDO, value); }
        }

        [Display(Name = "Codificação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string COD_DOCUMENTACAO 
        {
            get { return GetValue(() => COD_DOCUMENTACAO); }
            set { SetValue(() => COD_DOCUMENTACAO, value); }
        }

        [Display(Name = "Revisão")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(5)]
        public string COD_DOCUMENTACAO_REV 
        {
            get { return GetValue(() => COD_DOCUMENTACAO_REV); }
            set { SetValue(() => COD_DOCUMENTACAO_REV, value); }
        }

        [Display(Name = "Data Pedido")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data do Pedido deve ser Informada!")]
        public DateTime DTA_PEDIDO 
        {
            get { return GetValue(() => DTA_PEDIDO); }
            set { SetValue(() => DTA_PEDIDO, value); }
        }

        [Display(Name = "Data de Entrega")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DATA_ENTREGA 
        {
            get { return GetValue(() => DATA_ENTREGA); }
            set { SetValue(() => DATA_ENTREGA, value); }
        }

        [Display(Name = "Responsavel")]
        [Required(ErrorMessage = "Responsavel deve ser informado!")]
        [NotZero(ErrorMessage = "Responsavel não deve ser 0 (zero)!")]
        [ExistVendedor]
        public int ID_RESPONSAVEL 
        {
            get { return GetValue(() => ID_RESPONSAVEL); }
            set { SetValue(() => ID_RESPONSAVEL, value); }
        }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(300)]
        public string OBSERVACAO 
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        public int STATUS 
        {
            get { return GetValue(() => STATUS); }
            set { SetValue(() => STATUS, value); }
        }


        [Display(Name = "Vlr.IPI")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_IPI 
        {
            get { return GetValue(() => VLR_IPI); }
            set { SetValue(() => VLR_IPI, value); }
        }


        [Display(Name = "Vlr.Bruto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_BRUTO 
        {
            get { return GetValue(() => VLR_BRUTO); }
            set { SetValue(() => VLR_BRUTO, value); }
        }

        [Display(Name = "Vlr.Desconto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_DESCONTO 
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set { SetValue(() => VLR_DESCONTO, value); }
        }

        [Display(Name = "Vlr.Liquido")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_LIQUIDO 
        {
            get { return GetValue(() => VLR_LIQUIDO); }
            set { SetValue(() => VLR_LIQUIDO, value); }
        }

        public int APROVADO_POR 
        {
            get { return GetValue(() => APROVADO_POR); }
            set { SetValue(() => APROVADO_POR, value); }
        }

        [Display(Name = "Data de Aprovação")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<System.DateTime> DTA_APROVACAO 
        {
            get { return GetValue(() => DTA_APROVACAO); }
            set { SetValue(() => DTA_APROVACAO, value); }
        }


        [Display(Name = "Condição de Pagamento")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(60)]
        public string CONDICOES_PAGAMENTO 
        {
            get { return GetValue(() => CONDICOES_PAGAMENTO); }
            set { SetValue(() => CONDICOES_PAGAMENTO, value); }
        }

        public Nullable<int> ID_FISCAL 
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }


        [Display(Name = "Motivo da Reprovação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string MOTIVO_REPROVACAO 
        {
            get { return GetValue(() => MOTIVO_REPROVACAO); }
            set { SetValue(() => MOTIVO_REPROVACAO, value); }
        }

        [Display(Name = "Tipo do Frete")]
        public TIPO_FRETE_ENUM TIPO_FRETE 
        {
            get { return GetValue(() => TIPO_FRETE); }
            set { SetValue(() => TIPO_FRETE, value); }
        }

        [Display(Name = "Vlr.Frete")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_FRETE 
        {
            get { return GetValue(() => VLR_FRETE); }
            set { SetValue(() => VLR_FRETE, value); }
        }

        [Display(Name = "Tipo de Estoque")]
        [Required(ErrorMessage = "Campo deve ser informado!")]
        [NotZero(ErrorMessage = "Campo não deve ser 0 (zero)!")]
        [ExistTipoEstoque]
        public int ID_TIPO_ESTOQUE
        {
            get { return GetValue(() => ID_TIPO_ESTOQUE); }
            set { SetValue(() => ID_TIPO_ESTOQUE, value); }
        }

        //FKs
        [ForeignKey("ID_PEDIDO")]
        public virtual ObservableCollection<CMP_EF_M_PED_ITE> CMP_EF_M_PED_ITE
        {
            get { return GetValue(() => CMP_EF_M_PED_ITE); }
            set { SetValue(() => CMP_EF_M_PED_ITE, value); }
        }

    }
}
