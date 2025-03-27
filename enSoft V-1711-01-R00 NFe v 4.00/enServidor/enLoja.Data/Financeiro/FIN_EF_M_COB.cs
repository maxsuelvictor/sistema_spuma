using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Financeiro
{
    [Table("FIN_TB_M_COB")]
    public class FIN_EF_M_COB : NotifyingObject
    {

        [Key]
        [Display(Name = "Nº Controle")]
        public int ID_CONTROLE
        {
            get { return GetValue(() => ID_CONTROLE); }
            set { SetValue(() => ID_CONTROLE, value); }
        }

        [ForeignKey("ID_CONTROLE")]
        public virtual ICollection<FIN_EF_M_COB_TIT> FIN_EF_M_COB_TIT
        {
            get { return GetValue(() => FIN_EF_M_COB_TIT); }
            set { SetValue(() => FIN_EF_M_COB_TIT, value); }
        }

        [Display(Name = "Data Cobrança")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de cobrança deve ser Informada!")]
        public DateTime DTA_COBRANCA
        {
            get { return GetValue(() => DTA_COBRANCA); }
            set { SetValue(() => DTA_COBRANCA, value); }
        }

        [Display(Name = "Tipo de Contato")]
        [Required(ErrorMessage = "Contato deve ser informado!")]
        public int TIPO_CONTATO
        {
            get { return GetValue(() => TIPO_CONTATO); }
            set { SetValue(() => TIPO_CONTATO, value); }
        }

        [Display(Name = "Observação")]
        [Required(ErrorMessage = "Observação deve ser informado.")]
        [StringLength(800)]
        public string OBSERVACAO
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        [Display(Name = "Hora da Cobrança")]
        public Nullable<TimeSpan> HOR_COBRANCA
        {
            get { return GetValue(() => HOR_COBRANCA); }
            set { SetValue(() => HOR_COBRANCA, value); }
        }

        [Display(Name = "Houve Acordo")]
        public bool ACORDO
        {
            get { return GetValue(() => ACORDO); }
            set { SetValue(() => ACORDO, value); }
        }



        [Display(Name = "Responsavel")]
        [Required(ErrorMessage = "Funcionário deve ser informada.")]
        public int ID_FUNCIONARIO
        {
            get { return GetValue(() => ID_FUNCIONARIO); }
            set { SetValue(() => ID_FUNCIONARIO, value); }
        }

        [Display(Name = "%.Juros")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal PER_JUROS_NEGOCIADO
        {
            get { return GetValue(() => PER_JUROS_NEGOCIADO); }
            set { SetValue(() => PER_JUROS_NEGOCIADO, value); }
        }



    }
}
