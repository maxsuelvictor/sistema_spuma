using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using enLoja.Model.Cadastros;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Tabela de Cargos   
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_CRG")]
    public class PCP_EF_C_CRG : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_CARGO
        {
            get { return GetValue(() => ID_CARGO); }
            set { SetValue(() => ID_CARGO, value); }
        }

        [Display(Name = "Funcionario que aprovou o cargo.")]
        public Nullable<int> ID_APROVADOR 
        {
            get { return GetValue(() => ID_APROVADOR); }
            set { SetValue(() => ID_APROVADOR, value); }
        }


        [Display(Name = "Setor")]
        [Required(ErrorMessage = "Campo deve ser informado!")]  
        public int ID_SETOR
        {
            get { return GetValue(() => ID_SETOR); }
            set { SetValue(() => ID_SETOR, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(70)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]   
        public string DESCRICAO 
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Objetivo do Cargo")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string OBJETIVO_CARGO
        {
            get { return GetValue(() => OBJETIVO_CARGO); }
            set { SetValue(() => OBJETIVO_CARGO, value); }
        }


        [Display(Name = "Atribuições do cargo")]
        //Atribuições > Autoridades e Responsabilidades
        [Column(TypeName = "VARCHAR")]
        [StringLength(300)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]   
        public string ATRIBUICOES 
        {
            get { return GetValue(() => ATRIBUICOES); }
            set { SetValue(() => ATRIBUICOES, value); }
        }

        [Display(Name = "Requisitos para o do cargo")]
        //COMPETÊNCIA  -  Requisitos mínimos para o cargo desempenhar suas atividades satisfatoriamente.
        [Column(TypeName = "VARCHAR")]
        [StringLength(500)]
        [Required(ErrorMessage = "Requisito deve ser informado!")]   
        public string REQUISITOS 
        {
            get { return GetValue(() => REQUISITOS); }
            set { SetValue(() => REQUISITOS, value); }
        }

        [Display(Name = "Data de aprovação do cargo")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data deve ser informada!")]
        public DateTime DATA_APROVACAO 
        {
            get { return GetValue(() => DATA_APROVACAO); }
            set { SetValue(() => DATA_APROVACAO, value); }
        }

        //Fk's
        [ForeignKey("ID_SETOR")]
        public virtual CAD_EF_C_SET CAD_EF_C_SET { get; set; }


    }
}
