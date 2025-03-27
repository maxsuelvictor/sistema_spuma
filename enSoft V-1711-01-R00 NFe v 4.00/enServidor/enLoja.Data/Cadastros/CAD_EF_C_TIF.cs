using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Valida��es;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_TIF")]
    public class CAD_EF_C_TIF : NotifyingObject
    {
        [Key]
        [Display(Name = "C�digo")]
        public int ID_TIPO_FINANCEIRO
        {
            get { return GetValue(() => ID_TIPO_FINANCEIRO); }
            set { SetValue(() => ID_TIPO_FINANCEIRO, value); }
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

        [Display(Name = "Natureza da Conta")]        
        [Required(ErrorMessage = "Natureza deve ser informada!")]
        public DEB_CRE_ENUM NATUREZA
        {
            get { return GetValue(() => NATUREZA); }
            set { SetValue(() => NATUREZA, value); }
        }

        [Display(Name = "Sigla")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        [Required(ErrorMessage = "Sigla deve ser informado!")]
        public string SIGLA
        {
            get { return GetValue(() => SIGLA); }
            set { SetValue(() => SIGLA, value); }
        }




    }
}
