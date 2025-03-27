using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_PAR_SER")]
    public class CAD_EF_C_PAR_SER : NotifyingObject
    {
        [Key, ForeignKey("CAD_EF_C_PAR")]
        [Display(Name = "Código")]
        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        public virtual CAD_EF_C_PAR CAD_EF_C_PAR
        {
            get { return GetValue(() => CAD_EF_C_PAR); }
            set { SetValue(() => CAD_EF_C_PAR, value); }
        }


        [Display(Name = "Serie da Nota Fiscal Eletrônica")]
        [Required(ErrorMessage = "Série da nota fiscal deve ser informado!")]
        public string NFE_SERIE
        {
            get { return GetValue(() => NFE_SERIE); }
            set { SetValue(() => NFE_SERIE, value); }
        }


        [Display(Name = "Número da Última Nota Emitida")]
        [Required(ErrorMessage = "Ultima nota fiscal deve ser informado!")]
        public int NFE_NUMERO
        {
            get { return GetValue(() => NFE_NUMERO); }
            set { SetValue(() => NFE_NUMERO, value); }
        }



    }
}
