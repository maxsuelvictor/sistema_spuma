using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ACR_ITE")]
    public class PCP_EF_M_ACR_ITE : NotifyingObject
    {
        [Key, Column(Order = 0), ForeignKey("PCP_EF_M_ACR")]
        public int ID_ACR
        {
            get { return GetValue(() => ID_ACR); }
            set { SetValue(() => ID_ACR, value); }
        }

        [Key, Column(Order = 1)]
        public int ID_ACR_P
        {
            get { return GetValue(() => ID_ACR_P); }
            set { SetValue(() => ID_ACR_P, value); }
        }

        [Display(Name = "Item")]
        [NotZero(ErrorMessage = "Código do Item não deve ser 0 (zero)!")]
        [ExistItem]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Display(Name = "Defieto do produto")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string DEFEITO_PRODUTO
        {
            get { return GetValue(() => DEFEITO_PRODUTO); }
            set { SetValue(() => DEFEITO_PRODUTO, value); }
        }

        [Display(Name = "Garantia")]
        public bool GARANTIA
        {
            get { return GetValue(() => GARANTIA); }
            set { SetValue(() => GARANTIA, value); }
        }

        [Display(Name = "Data de Validade")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DATA_VALIDADE
        {
            get { return GetValue(() => DATA_VALIDADE); }
            set { SetValue(() => DATA_VALIDADE, value); }
        }

        [Display(Name = "Data de Fabricação")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public System.DateTime DATA_FABRICACAO
        {
            get { return GetValue(() => DATA_FABRICACAO); }
            set { SetValue(() => DATA_FABRICACAO, value); }
        }

        [Display(Name = "Data da Venda")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public System.DateTime DATA_VENDA
        {
            get { return GetValue(() => DATA_VENDA); }
            set { SetValue(() => DATA_VENDA, value); }
        }

        public int ID_DIS
        {
            get { return GetValue(() => ID_DIS); }
            set { SetValue(() => ID_DIS, value); }
        }

        [Display(Name = "Defeito Procede")]
        public bool DEFEITO_PROCEDE
        {
            get { return GetValue(() => DEFEITO_PROCEDE); }
            set { SetValue(() => DEFEITO_PROCEDE, value); }
        }

        [Display(Name = "Defeito Constatado")]
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Defeito deve ser informado!")]
        [StringLength(200)]
        public string DEFEITO_CONSTATADO
        {
            get { return GetValue(() => DEFEITO_CONSTATADO); }
            set { SetValue(() => DEFEITO_CONSTATADO, value); }
        }

        [Display(Name = "Motivo não procede")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string MOTIVO_NAO_PROCEDE
        {
            get { return GetValue(() => MOTIVO_NAO_PROCEDE); }
            set { SetValue(() => MOTIVO_NAO_PROCEDE, value); }
        }

        [Display(Name = "Comentarios")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string COMENTARIOS
        {
            get { return GetValue(() => COMENTARIOS); }
            set { SetValue(() => COMENTARIOS, value); }
        }

        [Display(Name = "Data de Abertura")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<System.DateTime> DATA_MONITOR_ABERT
        {
            get { return GetValue(() => DATA_MONITOR_ABERT); }
            set { SetValue(() => DATA_MONITOR_ABERT, value); }
        }

        [Display(Name = "Hora de Aberura")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<System.DateTime> HORA_MONITOR_ABERT
        {
            get { return GetValue(() => HORA_MONITOR_ABERT); }
            set { SetValue(() => HORA_MONITOR_ABERT, value); }
        }

        [Display(Name = "Data de Encerramento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<System.DateTime> DATA_MONITOR_ENCER
        {
            get { return GetValue(() => DATA_MONITOR_ENCER); }
            set { SetValue(() => DATA_MONITOR_ENCER, value); }
        }

        [Display(Name = "Hora de Encerramento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<System.DateTime> HORA_MONITOR_ENCER
        {
            get { return GetValue(() => HORA_MONITOR_ENCER); }
            set { SetValue(() => HORA_MONITOR_ENCER, value); }
        }

        [Display(Name = "Responsável")]
        public Nullable<int> ID_RESP_MONITOR
        {
            get { return GetValue(() => ID_RESP_MONITOR); }
            set { SetValue(() => ID_RESP_MONITOR, value); }
        }

        //FKs

        public virtual PCP_EF_M_ACR PCP_EF_M_ACR { get; set; }

        public virtual ICollection<PCP_EF_M_ACR_ITE_PCN> PCP_EF_M_ACR_ITE_PCN { get; set; }
        public virtual ICollection<PCP_EF_M_ACR_ITE_PDT> PCP_EF_M_ACR_ITE_PDT { get; set; }
        public virtual ICollection<PCP_EF_M_ACR_ITE_PCR> PCP_EF_M_ACR_ITE_PCR { get; set; }
        public virtual ICollection<PCP_EF_M_ACR_ITE_PRC> PCP_EF_M_ACR_ITE_PRC { get; set; }

        [ForeignKey("ID_RESP_MONITOR")]
        public virtual CAD_EF_C_FUN CAD_EF_C_FUN { get; set; }


    }
}
