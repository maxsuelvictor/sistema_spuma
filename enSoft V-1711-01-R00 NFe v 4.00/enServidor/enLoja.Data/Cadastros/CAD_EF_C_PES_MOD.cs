using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_PES_MOD")]
    public partial class CAD_EF_C_PES_MOD : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Código")]
        public int ID_PERFIL_SEG
        {
            get { return GetValue(() => ID_PERFIL_SEG); }
            set { SetValue(() => ID_PERFIL_SEG, value); }
        }

        [ForeignKey("ID_PERFIL_SEG")]
        public virtual CAD_EF_C_PES CAD_EF_C_PES
        {
            get { return GetValue(() => CAD_EF_C_PES); }
            set { SetValue(() => CAD_EF_C_PES, value); }
        }

        [Key, Column(Order = 2, TypeName = "VARCHAR")]
        [StringLength(100)]
        [Display(Name = "Formulário")]
        [Required(ErrorMessage = "Formulario deve ser informado!")]
        public string FORMULARIO
        {
            get { return GetValue(() => FORMULARIO); }
            set { SetValue(() => FORMULARIO, value); }
        }

        [Display(Name = "Ativo")]
        [Required(ErrorMessage = "Ativo deve ser informado!")]
        public bool ATIVO
        {
            get { return GetValue(() => ATIVO); }
            set { SetValue(() => ATIVO, value); }
        }

        [Display(Name = "Chave de Controle")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string CHAVE 
        {
            get { return GetValue(() => CHAVE); }
            set { SetValue(() => CHAVE, value); }
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

        [Display(Name = "Menu")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string MENU
        {
            get { return GetValue(() => MENU); }
            set { SetValue(() => MENU, value); }
        }

        [Display(Name = "Modulo")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        public string MODULO
        {
            get { return GetValue(() => MODULO); }
            set { SetValue(() => MODULO, value); }
        }

    }
}
