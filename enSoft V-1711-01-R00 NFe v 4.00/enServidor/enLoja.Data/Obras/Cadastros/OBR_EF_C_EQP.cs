using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Obras.Cadastros
{
    /*   
      OBR :Equipamentos  
      Mariel : 28/11/2013
     */
    [Table("OBR_TB_C_EQP")]
    public class OBR_EF_C_EQP : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_EQUIPAMENTO { get; set; }


        [Display(Name = "Nº Controle")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(15)]
        public string CONTROLE { get; set; }


        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO { get; set; }

        [Display(Name = "Especificação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string ESPECIFICACAO { get; set; }

        [Display(Name = "Modelo")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string MODELO { get; set; }

        [Display(Name = "Fabricante")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string FABRICANTE { get; set; }

        [Display(Name = "Tipo")]
        //0-Eqipamento, 1-Veiculo
        public int TIPO { get; set; }

        [Display(Name = "Data Compra")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_COMPRA { get; set; }

        [Display(Name = "Local da Compra")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string LOCAL_COMPRA { get; set; }

        [Display(Name = "Vlr.Compra")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_COMPRA { get; set; }

        [Display(Name = "Garantia em Meses")]
        public int GARANTIA { get; set; }

    }
}
