using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*   
      CAD : Controle Dimensional de Produto Acabado -Itens do Controle de Produto Acabado
            Conforme Planilha: I 7.5.9-02
      Mariel : 08/10/2013
     */
    [Table("PCP_TB_C_CDP")]
    public class PCP_EF_C_CDP : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Item")]
        [Required(ErrorMessage = "Item deve ser informado!")]
        public int ID_ITEM { get; set; }

        [Display(Name = "Data")]
        public DateTime DTA_LANCAMENTO { get; set; }


        [Display(Name = "Comprimento 01")]
        public double MED_COMP_01 { get; set; }

        [Display(Name = "Comprimento 02")]
        public double MED_COMP_02 { get; set; }

        [Display(Name = "Comprimento 03")]
        public double MED_COMP_03 { get; set; }

        [Display(Name = "Comprimento Media")]
        public double MED_COMP_MEDIA { get; set; }

        [Display(Name = "Largura 01")]
        public double MED_LARGURA_01 { get; set; }

        [Display(Name = "Largura 02")]
        public double MED_LARGURA_02 { get; set; }

        [Display(Name = "Largura 03")]
        public double MED_LARGURA_03 { get; set; }

        [Display(Name = "Largura Media")]
        public double MED_LARGURA_MEDIA { get; set; }

        [Display(Name = "Altura 01")]
        public double MED_ALTURA_01 { get; set; }

        [Display(Name = "Altura 02")]
        public double MED_ALTURA_02 { get; set; }

        [Display(Name = "Altura 03")]
        public double MED_ALTURA_03 { get; set; }

        [Display(Name = "Altura Media")]
        public double MED_ALTURA_MEDIA { get; set; }

        /*True - Aprovado  False - Reprovado */
        [Display(Name = "Situação")]
        public bool SITUACAO { get; set; }


    }
}
