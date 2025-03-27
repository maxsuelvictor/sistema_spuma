using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Compras
{
    [Table("CMP_TB_M_SOL")]
    public class CMP_EF_M_SOL : NotifyingObject
    {
        [Key]
        [Display(Name = "Cod.Controle")]
        public int ID_SOLICITACAO
        {
            get { return GetValue(() => ID_SOLICITACAO); }
            set { SetValue(() => ID_SOLICITACAO, value); }
        }

        [Display(Name = "Empresa")]
        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [ForeignKey("ID_SOLICITACAO")]
        public virtual ICollection<CMP_EF_M_SOL_ITE> CMP_EF_M_SOL_ITE
        {
            get { return GetValue(() => CMP_EF_M_SOL_ITE); }
            set { SetValue(() => CMP_EF_M_SOL_ITE, value); }
        }

        [Display(Name = "Funcionario")]
        [Required(ErrorMessage = "Funcionario deve ser Informado!")]
        public int ID_FUNCIONARIO
        {
            get { return GetValue(() => ID_FUNCIONARIO); }
            set { SetValue(() => ID_FUNCIONARIO, value); }
        }

        [Display(Name = "Setor")]
        [Required(ErrorMessage = "Setor deve ser Informado!")]
        public int ID_SETOR
        {
            get { return GetValue(() => ID_SETOR); }
            set { SetValue(() => ID_SETOR, value); }
        }


        [Display(Name = "Data Solicitação")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data deve ser Informada!")]
        public DateTime DTA_SOLICITACAO
        {
            get { return GetValue(() => DTA_SOLICITACAO); }
            set { SetValue(() => DTA_SOLICITACAO, value); }
        }

        [Display(Name = "Status")]
        [Required(ErrorMessage = "Status deve ser Informado!")]
        public int STATUS
        {
            get { return GetValue(() => STATUS); }
            set { SetValue(() => STATUS, value); }
        }

        [Display(Name = "Observação")]
        [StringLength(100)]
        public string OBS
        {
            get { return GetValue(() => OBS); }
            set { SetValue(() => OBS, value); }
        }

        [Display(Name = "Motivo da compra")]
        [StringLength(100)]
        public string MOTIVO
        {
            get { return GetValue(() => MOTIVO); }
            set { SetValue(() => MOTIVO, value); }
        }

        [Display(Name = "Ordem de Produção")]
        public int ID_OP
        {
            get { return GetValue(() => ID_OP); }
            set { SetValue(() => ID_OP, value); }
        }

    }
}
