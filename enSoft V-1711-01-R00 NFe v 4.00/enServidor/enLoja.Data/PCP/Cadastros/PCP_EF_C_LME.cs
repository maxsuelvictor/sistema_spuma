using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Runtime.InteropServices.ComTypes;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Tabela Lista mestra 
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_LME")]
    public class PCP_EF_C_LME : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_LME
        {
            get { return GetValue(() => ID_LME); }
            set { SetValue(() => ID_LME, value); }
        }

        [Display(Name = "Data")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data deve ser informado!")]  
        public DateTime DATA 
        {
            get { return GetValue(() => DATA); }
            set { SetValue(() => DATA, value); }
        }

        [NotZero(ErrorMessage = "Responsavel")]
        [Required(ErrorMessage = "Responsavel deve ser informado!")]
        public int ID_RESPONSAVEL 
        {
            get { return GetValue(() => ID_RESPONSAVEL); }
            set { SetValue(() => ID_RESPONSAVEL, value); }
        }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string OBSERVACAO 
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID
        {
            get { return GetValue(() => ID); }
            set { SetValue(() => ID, value); }
        }



        //Fk's
        [ForeignKey("ID_LME")]
        public virtual ICollection<PCP_EF_C_LME_DOC> PCP_EF_C_LME_DOC { get; set; }

        [ForeignKey("ID_RESPONSAVEL")]
        public virtual CAD_EF_C_FUN CAD_EF_C_FUN { get; set; }


    }
}
