using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.Cadastros
{
    //Tabela responsavel pelo controle de modulos que a empresa vai ter, PCP,OFICINA...
    [Table("CAD_TB_C_PAR_MOD")]
    public class CAD_EF_C_PAR_MOD : NotifyingObject
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

        [Display(Name = "Cadastros")]
        public bool CAD { get; set; }

        [Display(Name = "Compras")]
        public bool CMP { get; set; }


        [Display(Name = "Estoque")]
        public bool EST {get; set;}

        [Display(Name = "Financeiro")]
        public bool FIN { get; set; }

        [Display(Name = "Oficina Mecanica")]
        public bool OME { get; set; }

        [Display(Name = "Oficina Tratores")]
        public bool OTA { get; set; }


        [Display(Name = "Produção de Colchoes")]
        public bool PCC { get; set; }

        [Display(Name = "Chave")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string CHAVE { get; set; }


    }
}
