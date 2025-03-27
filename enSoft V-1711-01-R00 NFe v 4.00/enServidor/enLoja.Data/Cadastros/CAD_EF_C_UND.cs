using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Valida��es;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_UND")]
    public class CAD_EF_C_UND : NotifyingObject
    {
        [Key]
        [Display(Name = "C�digo")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        public string ID_UNIDADE
        {
            get { return GetValue(() => ID_UNIDADE); }
            set { SetValue(() => ID_UNIDADE, value); }
        }

        [Display(Name = "Descri��o")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        [Required(ErrorMessage = "Descri��o deve ser informado!")]
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
