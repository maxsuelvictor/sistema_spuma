using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Cadastros
{
    [Table("PCP_TB_C_LME_DRV")]
    public class PCP_EF_C_LME_DRV : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [ForeignKey("PCP_EF_C_LME_D")]
        public int ID_LME
        {
            get { return GetValue(() => ID_LME); }
            set { SetValue(() => ID_LME, value); }
        }

        [Key, Column(Order = 2)]
        [ForeignKey("PCP_EF_C_LME_D")]
        public int ID_LME_D 
        {
            get { return GetValue(() => ID_LME_D); }
            set { SetValue(() => ID_LME_D, value); }
        }

        [Key, Column(Order = 3)]
        public int ID_LME_DV 
        {
            get { return GetValue(() => ID_LME_DV); }
            set { SetValue(() => ID_LME_DV, value); }
        }

        [Display(Name = "Data da Revisão")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DATA_REVISAO 
        {
            get { return GetValue(() => DATA_REVISAO); }
            set { SetValue(() => DATA_REVISAO, value); }
        }

        [Display(Name = "Revisão")]
        public int REVISAO 
        {
            get { return GetValue(() => REVISAO); }
            set { SetValue(() => REVISAO, value); }
        }

        [Display(Name = "Histórico da revisão")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string HISTORICO_ALTERACAO 
        {
            get { return GetValue(() => HISTORICO_ALTERACAO); }
            set { SetValue(() => HISTORICO_ALTERACAO, value); }
        }

        //Fk's
        public virtual PCP_EF_C_LME_DOC PCP_EF_C_LME_D { get; set; }


    }
}
