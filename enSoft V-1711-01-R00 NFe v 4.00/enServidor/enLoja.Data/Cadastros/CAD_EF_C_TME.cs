using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_TME")]
    public class CAD_EF_C_TME : NotifyingObject
    {

        [Key]
        [Display(Name = "Código")]
        public int ID_TIPO_MOV_ESTOQUE
        {
            get { return GetValue(() => ID_TIPO_MOV_ESTOQUE); }
            set { SetValue(() => ID_TIPO_MOV_ESTOQUE, value); }
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

        [Display(Name = "Tipo do Movimento")]
        /*
         0 - Entrada
         1 - Saida
         */
        public TME_TIPO_MOV_ENUM TIPO_MOVIMENTO 
        {
            get { return GetValue(() => TIPO_MOVIMENTO); }
            set { SetValue(() => TIPO_MOVIMENTO, value); }
        }

        [Display(Name = "Ativo")]
        public bool ATIVO
        {
            get { return GetValue(() => ATIVO); }
            set { SetValue(() => ATIVO, value); }
        }

        [Display(Name = "Critica Estoque")]
        public bool ESTO_CRITICA
        {
            get { return GetValue(() => ESTO_CRITICA); }
            set { SetValue(() => ESTO_CRITICA, value); }
        }

        [Display(Name = "Movimenta Estoque")]
        public bool ESTO_MOVIMENTA
        {
            get { return GetValue(() => ESTO_MOVIMENTA); }
            set { SetValue(() => ESTO_MOVIMENTA, value); }
        }

        [Display(Name = "CFOP Interno P.Física")]
        [Column(TypeName = "CHAR")]
        [StringLength(5)]
        [Required(ErrorMessage = "CFOP deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "Só é permitido numeros.")]
        public string CFO_INTERNO_PF
        {
            get { return GetValue(() => CFO_INTERNO_PF); }
            set { SetValue(() => CFO_INTERNO_PF, value); }
        }

        [Display(Name = "CFOP Interno P.Juridica")]
        [Column(TypeName = "CHAR")]
        [StringLength(5)]
        [Required(ErrorMessage = "CFOP deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "Só é permitido numeros.")]
        public string CFO_INTERNO_PJ
        {
            get { return GetValue(() => CFO_INTERNO_PJ); }
            set { SetValue(() => CFO_INTERNO_PJ, value); }
        }

        [Display(Name = "CFOP Externo P.Física")]
        [Column(TypeName = "CHAR")]
        [StringLength(5)]
        [Required(ErrorMessage = "CFOP deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "Só é permitido numeros.")]
        public string CFO_EXTERNO_PF
        {
            get { return GetValue(() => CFO_EXTERNO_PF); }
            set { SetValue(() => CFO_EXTERNO_PF, value); }
        }

        [Display(Name = "CFOP Externo P.Juridica")]
        [Column(TypeName = "CHAR")]
        [StringLength(5)]
        [Required(ErrorMessage = "CFOP deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "Só é permitido numeros.")]
        public string CFO_EXTERNO_PJ
        {
            get { return GetValue(() => CFO_EXTERNO_PJ); }
            set { SetValue(() => CFO_EXTERNO_PJ, value); }
        }

        [Display(Name = "Indicador")]   //Campo vai ser utilizado na movimentação de estoque, neste caso so vamos ter uma tela de entrada e uma de saida
        public TME_TIPO_INDICADOR_ENUM INDICADOR
        {
            get { return GetValue(() => INDICADOR); }
            set { SetValue(() => INDICADOR, value); }
        }

    }
}
