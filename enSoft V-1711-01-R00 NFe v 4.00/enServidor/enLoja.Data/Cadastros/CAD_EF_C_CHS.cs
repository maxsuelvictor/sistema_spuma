using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CHS")]
    public partial class CAD_EF_C_CHS : NotifyingObject
    {
        [Key]
        public int ID_CHS
        {
            get { return GetValue(() => ID_CHS); }
            set { SetValue(() => ID_CHS, value); }
        }

        [Display(Name = "Descrição")]
        [StringLength(30)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Em aberto")]        
        public bool EM_ABERTO 
        {
            get { return GetValue(() => EM_ABERTO); }
            set { SetValue(() => EM_ABERTO, value); }
        }

        public CAD_EF_C_CHS()
        {
            EM_ABERTO=false;
            PAGO = false;
        }


        [Display(Name = "Pago")]
        public bool PAGO 
        {
            get { return GetValue(() => PAGO); }
            set { SetValue(() => PAGO, value); }
        }
        
        [Display(Name = "Pago parcial")]
        public bool PAGO_PARCIAL 
        {
            get { return GetValue(() => PAGO_PARCIAL); }
            set { SetValue(() => PAGO_PARCIAL, value); }
        }

        [Display(Name = "Pendente")]
        public bool PENDENTE 
        {
            get { return GetValue(() => PENDENTE); }
            set { SetValue(() => PENDENTE, value); }
        }

        [Display(Name = "Resgatado")]
        public bool RESGATADO 
        {
            get { return GetValue(() => RESGATADO); }
            set { SetValue(() => RESGATADO, value); }
        }

        [Display(Name = "Devolução")]
        public bool TIPO_DEVOLVIDO 
        {
            get { return GetValue(() => TIPO_DEVOLVIDO); }
            set { SetValue(() => TIPO_DEVOLVIDO, value); }
        }

    }
}
