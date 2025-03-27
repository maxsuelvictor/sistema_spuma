using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_ECF")]
    public class CAD_EF_C_ECF : NotifyingObject
    {
        [Key]
        [Display(Name = "Serial da Impressora")]
        [Column(TypeName = "VARCHAR"), StringLength(60)]
        [Required(ErrorMessage = "Serial deve ser informado!")]
        public string ECF_SERIAL_IMPRESSORA
        {
            get { return GetValue(() => ECF_SERIAL_IMPRESSORA); }
            set { SetValue(() => ECF_SERIAL_IMPRESSORA, value); }
        }

        [Display(Name = "Marca da Impressora")]
        [Column(TypeName = "VARCHAR"), StringLength(50)]
        public string ECF_MARCA_IMPRESSORA
        {
            get { return GetValue(() => ECF_MARCA_IMPRESSORA); }
            set { SetValue(() => ECF_MARCA_IMPRESSORA, value); }
        }

        [Display(Name = "Modelo da Impressora")]
        [Column(TypeName = "VARCHAR"), StringLength(50)]
        public string ECF_MODELO_IMPRESSORA
        {
            get { return GetValue(() => ECF_MODELO_IMPRESSORA); }
            set { SetValue(() => ECF_MODELO_IMPRESSORA, value); }
        }

        [Display(Name = "Caixa que o Cupom foi emitido")]
        [Column(TypeName = "CHAR"), StringLength(3)]
        public string ECF_CAIXA
        {
            get { return GetValue(() => ECF_CAIXA); }
            set { SetValue(() => ECF_CAIXA, value); }
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID
        {
            get { return GetValue(() => ID); }
            set { SetValue(() => ID, value); }
        }

    }
}
