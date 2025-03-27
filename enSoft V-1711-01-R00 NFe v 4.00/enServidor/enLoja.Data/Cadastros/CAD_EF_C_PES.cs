using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{

    [Table("CAD_TB_C_PES")]
    public class CAD_EF_C_PES : NotifyingObject
    {

        [Key]
        [Display(Name = "Código")]
        public int ID_PERFIL_SEG
        {
            get { return GetValue(() => ID_PERFIL_SEG); }
            set { SetValue(() => ID_PERFIL_SEG, value); }
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

        //FKs
        [ForeignKey("ID_PERFIL_SEG")]
        public virtual IList<CAD_EF_C_PES_MOD> CAD_EF_C_PES_MOD
        {
            get { return GetValue(() => CAD_EF_C_PES_MOD); }
            set { SetValue(() => CAD_EF_C_PES_MOD, value); }
        } 

    
    }
}
