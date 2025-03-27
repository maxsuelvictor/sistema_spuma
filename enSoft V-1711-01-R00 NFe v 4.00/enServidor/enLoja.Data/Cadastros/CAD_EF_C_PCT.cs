using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Valida��es;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_PCT")]
    public class CAD_EF_C_PCT : NotifyingObject
    {
        [Key]
        [Display(Name = "C�digo")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "C�digo deve ser informado!")]
        public string ID_PLANO
        {
            get { return GetValue(() => ID_PLANO); }
            set { SetValue(() => ID_PLANO, value); }
        }

        [Display(Name = "Descri��o")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descri��o deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Natureza da Conta")]
        public NATUREZA_CONTA_ENUM TIPO 
        {
            get { return GetValue(() => TIPO); }
            set { SetValue(() => TIPO, value); }
        }

        [Display(Name = "Classifica��o da Conta")]
        public CLASSIFICA_CONTA_ENUM TIPO_MOV 
        {
            get { return GetValue(() => TIPO_MOV); }
            set { SetValue(() => TIPO_MOV, value); }
        }

        [Display(Name = "Tipo de Despesa")]
        public TIPO_DESPESA_ENUM TIPO_DESP
        {
            get { return GetValue(() => TIPO_DESP); }
            set { SetValue(() => TIPO_DESP, value); }
        }

    }
}
