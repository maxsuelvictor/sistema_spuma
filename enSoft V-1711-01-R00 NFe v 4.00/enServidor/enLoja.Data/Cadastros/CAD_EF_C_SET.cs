using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_SET")]
    public class CAD_EF_C_SET : NotifyingObject
    {
        [Key]                
        public int ID_SETOR { get; set; }
                   

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informada!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Ativo")]
        public bool LOTE_CONTROLA
        {
            get { return GetValue(() => LOTE_CONTROLA); }
            set { SetValue(() => LOTE_CONTROLA, value); }
        }

        [Display(Name = "Tipo")]    
        // 1 - Laminação
        // 2 - Bordadeira
        // 3 - Colagem
        // 4 - Costura
        // 5 - Alfinetagem
        // 6 - Outros'
        public TIPO_SETOR_ENUM TIPO
        {
            get { return GetValue(() => TIPO); }
            set { SetValue(() => TIPO, value); }
        }

        //FKs
        [ForeignKey("ID_SETOR")]
        public virtual ICollection<CAD_EF_C_SET_TDS> CAD_EF_C_SET_TDS { get; set; }

    }
}
