using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Cadastros
{
    [Table("PCP_TB_C_LME_DRP")]
    public class PCP_EF_C_LME_DRP : NotifyingObject
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
        public int ID_LME_DR 
        {
            get { return GetValue(() => ID_LME_DR); }
            set { SetValue(() => ID_LME_DR, value); }
        }

        [Display(Name = "Data")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DATA 
        {
            get { return GetValue(() => DATA); }
            set { SetValue(() => DATA, value); }
        }

        [Display(Name = "Situação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string SITUACAO 
        {
            get { return GetValue(() => SITUACAO); }
            set { SetValue(() => SITUACAO, value); }
        }

        //Fk's
        public virtual PCP_EF_C_LME_DOC PCP_EF_C_LME_D { get; set; }

    }
}
