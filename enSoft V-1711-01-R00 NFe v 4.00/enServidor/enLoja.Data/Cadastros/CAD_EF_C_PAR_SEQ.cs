using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_PAR_SEQ")]
    public class CAD_EF_C_PAR_SEQ : NotifyingObject
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


        [Display(Name = "Sequencia de Cotação de Compras")]
        public int SEQ_CMP_COT
        {
            get { return GetValue(() => SEQ_CMP_COT); }
            set { SetValue(() => SEQ_CMP_COT, value); }
        }


    }
}
