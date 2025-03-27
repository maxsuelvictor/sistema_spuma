using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CLI_BCO")]
    public class CAD_EF_C_CLI_BCO : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }

        [Key, Column(Order = 2)]
        [NotZero(ErrorMessage = "Tipo de Informação deve ser selecionado!")]
        public int ID_BANCO_INFO
        {
            get { return GetValue(() => ID_BANCO_INFO); }
            set { SetValue(() => ID_BANCO_INFO, value); }
        }

        [Display(Name = "Data Informacao")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_INFORMACAO
        {
            get { return GetValue(() => DTA_INFORMACAO); }
            set { SetValue(() => DTA_INFORMACAO, value); }
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



    }
}
