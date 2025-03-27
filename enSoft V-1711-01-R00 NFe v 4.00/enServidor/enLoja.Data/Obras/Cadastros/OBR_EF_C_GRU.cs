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
      OBR :Obras  
      Mariel : 26/11/2013
     */
    [Table("OBR_TB_C_GRU")]
    public class OBR_EF_C_GRU : NotifyingObject
    {
        [Key]
        [Display(Name = "Grupo de Orçamento")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        public string ID_GRUPO_ORCA { get; set; }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO { get; set; }

        [Display(Name = "Ativo")]
        public bool ATIVO { get; set; }

        [Display(Name = "Mês do Cronograma")]
        /* Mes que o serviço deve entrar no cronograma */
        public int MES_CRONOGRAMA { get; set; }


        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }


    }
}
