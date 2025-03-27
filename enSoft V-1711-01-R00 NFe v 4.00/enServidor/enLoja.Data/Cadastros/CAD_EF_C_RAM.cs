using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_RAM")]
    public class CAD_EF_C_RAM : NotifyingObject
    {
        [Key]
        public int ID_RAMO
        {
            get { return GetValue(() => ID_RAMO); }
            set { SetValue(() => ID_RAMO, value); }
        }

        [ForeignKey("ID_RAMO")]
        public virtual ICollection<CAD_EF_C_PAR> CAD_EF_C_PAR
        {
            get { return GetValue(() => CAD_EF_C_PAR); }
            set { SetValue(() => CAD_EF_C_PAR, value); }
        }


        [Display(Name = "CNAE")]
        [Column(TypeName = "CHAR")]
        [StringLength(14)]
        [Required(ErrorMessage = "CNAE deve ser informado!")]
        public string ID_CNAE
        {
            get { return GetValue(() => ID_CNAE); }
            set { SetValue(() => ID_CNAE, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Regime Tributário")]
        public REGIME_TRIBUTARIO_ENUM REGIME_TRIBUTARIO
        {
            get { return GetValue(() => REGIME_TRIBUTARIO); }
            set { SetValue(() => REGIME_TRIBUTARIO, value); }
        }        
        
        //FKs
        [ForeignKey("ID_CNAE")]
        public virtual CAD_EF_C_CNE CAD_EF_C_CNE { get; set; }


    
    }
}
