using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_CLI_REC")]
    public class CAD_EF_C_CLI_REC : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }

        [Key, Column(Order = 2)]
        [NotZero(ErrorMessage = "Tipo de Informação deve ser selecionado!")]
        public int ID_RECLAMACAO
        {
            get { return GetValue(() => ID_RECLAMACAO); }
            set { SetValue(() => ID_RECLAMACAO, value); }
        }

        [Display(Name = "Data Reclamação")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_REGISTRO
        {
            get { return GetValue(() => DTA_REGISTRO); }
            set { SetValue(() => DTA_REGISTRO, value); }
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
