using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Valida��es;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_TRI")]
    public partial class CAD_EF_C_TRI : NotifyingObject
    {
        [Key]
        public int ID_TRIBUTO
        {
            get { return GetValue(() => ID_TRIBUTO); }
            set { SetValue(() => ID_TRIBUTO, value); }
        }

        [Display(Name = "Descri��o")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(40)]
        [Required(ErrorMessage = "Descri��o deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }  

        //FKs
        [ForeignKey("ID_TRIBUTO")]
        public virtual ICollection<CAD_EF_C_TRI_REG> CAD_EF_C_TRI_REG
        {
            get { return GetValue(() => CAD_EF_C_TRI_REG); }
            set { SetValue(() => CAD_EF_C_TRI_REG, value); }
        }


    }
}
