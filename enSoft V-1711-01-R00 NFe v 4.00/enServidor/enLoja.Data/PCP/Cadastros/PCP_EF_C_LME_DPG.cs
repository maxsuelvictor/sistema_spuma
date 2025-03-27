using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Cadastros
{
    [Table("PCP_TB_C_LME_DPG")]
    public class PCP_EF_C_LME_DPG : NotifyingObject
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
        public int ID_LME_DP 
        {
            get { return GetValue(() => ID_LME_DP); }
            set { SetValue(() => ID_LME_DP, value); }
        }

        [Display(Name = "Data Cadastro")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DATA_CADASTRO 
        {
            get { return GetValue(() => DATA_CADASTRO); }
            set { SetValue(() => DATA_CADASTRO, value); }
        }

        [Display(Name = "Nome do Formulario")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(40)]
        public string NOME_FORMULARIO 
        {
            get { return GetValue(() => NOME_FORMULARIO); }
            set { SetValue(() => NOME_FORMULARIO, value); }
        }

        //Fk's
        public virtual PCP_EF_C_LME_DOC PCP_EF_C_LME_D { get; set; }




    }
}
