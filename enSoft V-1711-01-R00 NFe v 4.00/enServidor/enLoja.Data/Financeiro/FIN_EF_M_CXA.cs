using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Financeiro
{
    [Table("FIN_TB_M_CXA")]
    public class FIN_EF_M_CXA : NotifyingObject
    {

        public FIN_EF_M_CXA()
        {
            DTA_FECHAMENTO      = DateTime.Now;
            DTA_FECHAMENTO_HORA = DateTime.Now.TimeOfDay;
        }

        [Key]
        [Display(Name = "Nº Controle")]
        public int ID_ABERTURA
        {
            get { return GetValue(() => ID_ABERTURA); }
            set { SetValue(() => ID_ABERTURA, value); }
        }

        [Display(Name = "Data Abertura")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data de abertura deve ser Informada!")]
        public DateTime DTA_ABERTURA
        {
            get { return GetValue(() => DTA_ABERTURA); }
            set { SetValue(() => DTA_ABERTURA, value); }
        }

        [Display(Name = "Conta corrente")]
        [Required(ErrorMessage = "Conta corrente deve ser informado.")]
        public int ID_CONTA
        {
            get { return GetValue(() => ID_CONTA); }
            set { SetValue(() => ID_CONTA, value); }
        }

        [Display(Name = "Empresa")]
        [Required(ErrorMessage = "Empresa deve ser informada.")]
        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Serial da Impressora")]
        [StringLength(60)]
        [Required(ErrorMessage = "Serial deve ser informado!")]
        public string ECF_SERIAL_IMPRESSORA
        {
            get { return GetValue(() => ECF_SERIAL_IMPRESSORA); }
            set { SetValue(() => ECF_SERIAL_IMPRESSORA, value); }
        }

        [Display(Name = "Funcionário")]
        [Required(ErrorMessage = "Funcionário deve ser informada.")]
        public int ID_FUNCIONARIO
        {
            get { return GetValue(() => ID_FUNCIONARIO); }
            set { SetValue(() => ID_FUNCIONARIO, value); }
        }

        [Display(Name = "Status do lançamento")]
        [Required(ErrorMessage = "Status deve ser informado!")]
        public STATUS_ENUM STATUS 
        {
            get { return GetValue(() => STATUS); }
            set { SetValue(() => STATUS, value); }
        }

        [Display(Name = "Data Abertura")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> DTA_FECHAMENTO
        {
            get { return GetValue(() => DTA_FECHAMENTO); }
            set { SetValue(() => DTA_FECHAMENTO, value); }
        }

        [Display(Name = "Hora")]
        public Nullable<TimeSpan> DTA_FECHAMENTO_HORA 
        {
            get { return GetValue(() => DTA_FECHAMENTO_HORA); }
            set { SetValue(() => DTA_FECHAMENTO_HORA, value); }
        }

    }
}
