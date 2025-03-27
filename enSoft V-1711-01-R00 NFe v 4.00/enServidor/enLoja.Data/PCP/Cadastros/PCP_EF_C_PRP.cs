using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Plano de Controle para Recebimento e Preservação de MP e Componentes
            Conforme Planilha: P 7.4-2-03
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_PRP")]
    public class PCP_EF_C_PRP : NotifyingObject
    {

        [Key, Column(Order = 1, TypeName = "CHAR")]
        [Display(Name = "Grupo")]
        [StringLength(11)]
        [Required(ErrorMessage = "Código do Grupo deve ser informado!")]
        [ValidIdGrupo]
        public string ID_GRUPO
        {
            get { return GetValue(() => ID_GRUPO); }
            set { SetValue(() => ID_GRUPO, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }


        [Display(Name = "Carac.Inspecionada")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(300)]
        public string CARACT_INSPECIONADA { get; set; }

        [Display(Name = "Criterio Aceitação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(500)]
        public string CRITERIO_ACEITACAO { get; set; }

        [Display(Name = "Metodo Verificação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(500)]
        public string METODO_VERIFICACAO { get; set; }

        [Display(Name = "Amostragem")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(500)]
        public string AMOSTRAGEM { get; set; }

        [Display(Name = "Manuseio Transporte")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(500)]
        public string MANUSEIO_TRANSPORTE { get; set; }

        [Display(Name = "Armazenamento")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(500)]
        public string ARMAZENAMENTO { get; set; }
        
        [Display(Name = "Preservação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(500)]
        public string PRESERVACAO { get; set; }


    }
}
