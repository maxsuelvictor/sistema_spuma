using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CLI_INF")]
    public class CAD_EF_C_CLI_INF : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }

        [Key, Column(Order = 2)]
        [NotZero(ErrorMessage = "Tipo de Informação deve ser selecionado!")]
        public int ID_CLI_INFORMA
        {
            get { return GetValue(() => ID_CLI_INFORMA); }
            set { SetValue(() => ID_CLI_INFORMA, value); }
        }

        [Key, Column(Order = 3)]
        [Display(Name = "Data Informação")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_INFORMACAO
        {
            get { return GetValue(() => DTA_INFORMACAO); }
            set { SetValue(() => DTA_INFORMACAO, value); }
        }

        [Display(Name = "Cliente Desde")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_CLIENTE
        {
            get { return GetValue(() => DTA_CLIENTE); }
            set { SetValue(() => DTA_CLIENTE, value); }
        }

        [Display(Name = "Data Maior Compra")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_MAIOR_COMPRA
        {
            get { return GetValue(() => DTA_MAIOR_COMPRA); }
            set { SetValue(() => DTA_MAIOR_COMPRA, value); }
        }

        [Display(Name = "Maior Compra")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_MAIOR_COMPRA
        {
            get { return GetValue(() => VLR_MAIOR_COMPRA); }
            set { SetValue(() => VLR_MAIOR_COMPRA, value); }
        }

        [Display(Name = "Limite Liberado")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal VLR_LIM_LIBERADO
        {
            get { return GetValue(() => VLR_LIM_LIBERADO); }
            set { SetValue(() => VLR_LIM_LIBERADO, value); }
        }

        [Display(Name = "Atrasa")]
        public bool ATRASA
        {
            get { return GetValue(() => ATRASA); }
            set { SetValue(() => ATRASA, value); }
        }

        [Display(Name = "Informante")]
        [Column(TypeName = "VARCHAR"),StringLength(20)]
        public string INFORMANTE
        {
            get { return GetValue(() => INFORMANTE); }
            set { SetValue(() => INFORMANTE, value); }
        }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR"), StringLength(800)]
        public string OBS
        {
            get { return GetValue(() => OBS); }
            set { SetValue(() => OBS, value); }
        }

        //FKs

        [ForeignKey("ID_CLIENTE")]
        public virtual CAD_EF_C_CLI CAD_EF_C_CLI
        {
            get { return GetValue(() => CAD_EF_C_CLI); }
            set { SetValue(() => CAD_EF_C_CLI, value); }
        }

        [ForeignKey("ID_CLI_INFORMA")]
        public virtual CAD_EF_C_CIN CAD_EF_C_CIN { get; set; }


    }
}
