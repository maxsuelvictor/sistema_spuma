using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Cadastro de Maquinas/Equipamento/Outros
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_MEQ")]
    public class PCP_EF_C_MEQ : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_MEQ
        {
            get { return GetValue(() => ID_MEQ); }
            set { SetValue(() => ID_MEQ, value); }
        }

        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Cod.Equipamento no Ativo imobilizado")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(15)]
        public string COD_EQUIPAMENTO { get; set; }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string DESCRICAO { get; set; }

        public int ID_MDE { get; set; }

        public int ID_FABRICANTE { get; set; }

        [Display(Name = "Nº Serie")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        public string NRO_SERIE { get; set; }

        public System.DateTime DTA_CADASTRO { get; set; }

        public System.DateTime DTA_COMPRA { get; set; }

        public int NUMERO_NF { get; set; }

        [Display(Name = "Data do termino da garantia")]
        public System.DateTime GARA_VALIDADE { get; set; }

        [Display(Name = "Tem Garantia")]
        public bool GARA_EXISTE { get; set; }

        public int ID_RESP_LANCTO { get; set; }


        [Display(Name = "Tipo")]
        //0 - Máquina  1 - Equipamento   2 - Outros
        //Quando for "2 - Outros", somente o campo DESCRIÇÃO habilitado.
        public int TIPO_MEI { get; set; }


    }
}
