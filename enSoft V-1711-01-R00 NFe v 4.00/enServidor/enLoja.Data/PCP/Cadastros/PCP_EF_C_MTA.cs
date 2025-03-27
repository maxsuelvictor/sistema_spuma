using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;

namespace enLoja.Model.PCP.Cadastros
{
    /*
      PCP : Motorista   
      Mariel : 09/10/2013
     */

    [Table("PCP_TB_C_MTA")]
    public class PCP_EF_C_MTA : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_MOTORISTA
        {
            get { return GetValue(() => ID_MOTORISTA); }
            set { SetValue(() => ID_MOTORISTA, value); }
        }

        [Display(Name = "Nome")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        [Required(ErrorMessage = "Nome deve ser informado!")]           
        public string NOME 
        {
            get { return GetValue(() => NOME); }
            set { SetValue(() => NOME, value); }
        }

        [Display(Name = "Placa")]
        [Column(TypeName = "CHAR")]
        [StringLength(8)]
        [Required(ErrorMessage = "Placa deve ser informado!")]
        public string PLACA 
        {
            get { return GetValue(() => PLACA); }
            set { SetValue(() => PLACA, value); }
        }

        [Display(Name = "Endereço")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Endereço deve ser informado!")]
        public string END_ENDERECO 
        {
            get { return GetValue(() => END_ENDERECO); }
            set { SetValue(() => END_ENDERECO, value); }
        }

        [Display(Name = "Numero")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        [Required(ErrorMessage = "Numero deve ser informado!")]
        public string END_NUMERO 
        {
            get { return GetValue(() => END_NUMERO); }
            set { SetValue(() => END_NUMERO, value); }
        }
        
        [Display(Name = "Cidade")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        [Required(ErrorMessage = "Cidade deve ser informado!")]
        public string END_CIDADE 
        {
            get { return GetValue(() => END_CIDADE); }
            set { SetValue(() => END_CIDADE, value); }
        }

        [Display(Name = "Bairro")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        [Required(ErrorMessage = "Bairro deve ser informado!")]
        public string END_BAIRRO 
        {
            get { return GetValue(() => END_BAIRRO); }
            set { SetValue(() => END_BAIRRO, value); }
        }

        [Display(Name = "CEP")]
        [Column(TypeName = "CHAR")]
        [StringLength(9)]
        [Required(ErrorMessage = "CEP deve ser informado!")]
        public string END_CEP 
        {
            get { return GetValue(() => END_CEP); }
            set { SetValue(() => END_CEP, value); }
        }

        [Display(Name = "Estado")]
        [Column(TypeName = "CHAR")]
        [StringLength(2)]
        [Required(ErrorMessage = "Estado deve ser informado!")]
        public string END_ESTADO 
        {
            get { return GetValue(() => END_ESTADO); }
            set { SetValue(() => END_ESTADO, value); }
        }

        [Display(Name = "Telefone Fixo")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string FONE 
        {
            get { return GetValue(() => FONE); }
            set { SetValue(() => FONE, value); }
        }

        [Display(Name = "Telefone Celular")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string CELULAR 
        {
            get { return GetValue(() => CELULAR); }
            set { SetValue(() => CELULAR, value); }
        }

        [Display(Name = "e-mail")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string EMAIL 
        {
            get { return GetValue(() => EMAIL); }
            set { SetValue(() => EMAIL, value); }
        }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string OBSERVACAO 
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

    }
}
