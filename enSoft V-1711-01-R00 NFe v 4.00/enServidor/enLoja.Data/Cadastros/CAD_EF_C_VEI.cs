using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using enLoja.Model.PCP.Movimentacoes;

namespace enLoja.Model.Cadastros
{
    /*   
      CAD : Veiculo
      Mariel : 08/10/2013
     */
    [Table("CAD_TB_C_VEI")]
    public class CAD_EF_C_VEI : NotifyingObject
    {
        [Key]
        [Display(Name = "Controle")]
        public int ID_VEICULO { get; set; }

        [Display(Name = "Placa")]
        [Column(TypeName = "CHAR")]
        [StringLength(8)]  
        public string ID_PLACA { get; set; }
        
        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string DESCRICAO { get; set; }
        
        [Display(Name = "Modelo do Veiculo")]
        public int ID_MVE { get; set; }

        [Display(Name = "Cor do Veiculo")]
        public int ID_CVE { get; set; }


        [Display(Name = "KM Aquisição")]
        public Nullable<double> KM_AQUISICAO { get; set; }

        [Display(Name = "Data de Aquisição")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_AQUISICAO
        {
            get { return GetValue(() => DTA_AQUISICAO); }
            set { SetValue(() => DTA_AQUISICAO, value); }
        }

        [Display(Name = "KM Atual")]
        public Nullable<double> KM_ATUAL { get; set; }

        [Display(Name = "Chassi")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string CHASSI { get; set; }

        [Display(Name = "Ano Modelo")]
        [Column(TypeName = "CHAR")]
        [StringLength(4)]
        public string ANO_MODELO { get; set; }

        [Display(Name = "Ano Fabricação")]
        [Column(TypeName = "CHAR")]
        [StringLength(4)]
        public string ANO_FABRICACAO { get; set; }

        [Display(Name = "Renavam")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string RENAVAM { get; set; }

        [Display(Name = "Alimentação")]
        /*
         0 - Injeção Eletrônica
         1 - Carburador
         2 - Bomba Injetora
         */
        public int ALIMENTACAO { get; set; }

        [Display(Name = "Combustivel")]
        /*
         0-Gasolina
         1-Alcool
         2-Diesel
         3-Gas Natural
         4-Eletrico
         5-Flex
         */
        public int COMBUSTIVEL { get; set; }


        [Display(Name = "Serie")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(11)]
        public string SERIE { get; set; }

        [Display(Name = "Motor")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(11)]
        public string MOTOR { get; set; }

        [Display(Name = "Numero Motor")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string MOTOR_NUM { get; set; }

        [Display(Name = "Rastreado")]
        public bool RASTREADO { get; set; }

        [Display(Name = "Tipo Veiculo")]
        /*
         0 - Veiculo
         1 - Trator
         2 - Imploemento
         */
        public int TIPO { get; set; }

        [Display(Name = "Status Trator")]
        /*
         0 - Aberto - Em aberto na empresa - Quando cadastrado ele entra com status de aberto.
         1 - Vendido - Vendido pela empresa - muda o status no faturamento deste trator para o cliente
         2 - Oficina - Trator cadastrado para manutenção
         */
        public int STATUS { get; set; }


        //FKs
        [ForeignKey("ID_MVE")]
        public virtual CAD_EF_C_MVE CAD_EF_C_MVE { get; set; }

        [ForeignKey("ID_CVE")]
        public virtual CAD_EF_C_CVE CAD_EF_C_CVE { get; set; }

        
        public virtual ICollection<PCP_EF_M_VVE> PCP_EF_M_VVE { get; set; }

    }
}
