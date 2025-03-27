using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_NCM")]
    public partial class CAD_EF_C_NCM : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        public string ID_NCM
        {
            get { return GetValue(() => ID_NCM); }
            set { SetValue(() => ID_NCM, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID
        {
            get { return GetValue(() => ID); }
            set { SetValue(() => ID, value); }
        }


    }
}
