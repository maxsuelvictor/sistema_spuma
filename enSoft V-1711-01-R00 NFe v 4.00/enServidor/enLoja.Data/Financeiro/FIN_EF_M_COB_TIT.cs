using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Financeiro
{
    [Table("FIN_TB_M_COB_TIT")]
    public class FIN_EF_M_COB_TIT : NotifyingObject
    {

        [Key, Column(Order = 1)]
        [Display(Name = "Nº Controle")]
        public int ID_CONTROLE
        {
            get { return GetValue(() => ID_CONTROLE); }
            set { SetValue(() => ID_CONTROLE, value); }
        }

        [ForeignKey("ID_CONTROLE")]
        public virtual FIN_EF_M_COB FIN_EF_M_COB
        {
            get { return GetValue(() => FIN_EF_M_COB); }
            set { SetValue(() => FIN_EF_M_COB, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Nº Titulo")]
        public int ID_TITULO
        {
            get { return GetValue(() => ID_TITULO); }
            set { SetValue(() => ID_TITULO, value); }
        }

        [Display(Name = "Data Acordo")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_ACORDO
        {
            get { return GetValue(() => DTA_ACORDO); }
            set { SetValue(() => DTA_ACORDO, value); }
        }

        [Display(Name = "Vlr.Negociado")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_NEGOCIADO
        {
            get { return GetValue(() => VLR_NEGOCIADO); }
            set { SetValue(() => VLR_NEGOCIADO, value); }
        }


    }
}
