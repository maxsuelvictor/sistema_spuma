using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CHH")]
    public partial class CAD_EF_C_CHH : NotifyingObject
    {
        [Key]
        public int ID_CHH
        {
            get { return GetValue(() => ID_CHH); }
            set { SetValue(() => ID_CHH, value); }
        }

        [Display(Name = "Descrição")]
        [StringLength(30)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Tipo Movimento")]
        public int TIPO_MOVIMENTO 
        {
            get { return GetValue(() => TIPO_MOVIMENTO); }
            set { SetValue(() => TIPO_MOVIMENTO, value); }
        }

        [Display(Name = "Situação Origem")]
        public int ID_CHS_ORIGEM 
        {
            get { return GetValue(() => ID_CHS_ORIGEM); }
            set { SetValue(() => ID_CHS_ORIGEM, value); }
        }

        [Display(Name = "Situação Destino")]
        public int ID_CHS_DESTINO 
        {
            get { return GetValue(() => ID_CHS_DESTINO); }
            set { SetValue(() => ID_CHS_DESTINO, value); }
        }

        [Display(Name = "Tipo Financeiro")]
        public int ID_TIPO_FINANCEIRO 
        {
            get { return GetValue(() => ID_TIPO_FINANCEIRO); }
            set { SetValue(() => ID_TIPO_FINANCEIRO, value); }
        }

        [Display(Name = "Tipo Financeiro Facturing")]
        public int ID_TIPO_FINANCEIRO_FAC
        {
            get { return GetValue(() => ID_TIPO_FINANCEIRO_FAC); }
            set { SetValue(() => ID_TIPO_FINANCEIRO_FAC, value); }
        }

    }
}
