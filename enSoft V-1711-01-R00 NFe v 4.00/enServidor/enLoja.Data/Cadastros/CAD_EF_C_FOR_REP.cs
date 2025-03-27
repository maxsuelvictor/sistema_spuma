using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Enums;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_FOR_REP")]
    public class CAD_EF_C_FOR_REP : NotifyingObject
    {
        [Key, Column(Order = 1)]
        [Display(Name = "Código")]
        public int ID_FORNECEDOR
        {
            get { return GetValue(() => ID_FORNECEDOR); }
            set { SetValue(() => ID_FORNECEDOR, value); }
        }

        [Key, Column(Order = 2)]
        [Display(Name = "Representante")]
        public int ID_FOR_RP
        {
            get { return GetValue(() => ID_FOR_RP); }
            set { SetValue(() => ID_FOR_RP, value); }
        }

        [Display(Name = "Representante")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(60)]   
        public string NOME
        {
            get { return GetValue(() => NOME); }
            set { SetValue(() => NOME, value); }
        }

        [Display(Name = "CPF")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(11)]
        [ValidCpfCnpj(true, ErrorMessage = "CPF inválido!")]
        public string DOC_CPF
        {
            get { return GetValue(() => DOC_CPF); }
            set { SetValue(() => DOC_CPF, value); }
        }

        [Display(Name = "CEP")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(9)]
        [Required(ErrorMessage = "CEP deve ser informado!")]
        [RegularExpression(@"^\d{5}\-?\d{3}$", ErrorMessage = "CEP inválido.")]
        public string CEP
        {
            get { return GetValue(() => CEP); }
            set { SetValue(() => CEP, value); }
        }

        [Display(Name = "Endereço")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Endereço deve ser informado!")]
        public string ENDERECO
        {
            get { return GetValue(() => ENDERECO); }
            set { SetValue(() => ENDERECO, value); }
        }

        [Display(Name = "Número")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(10)]
        [Required(ErrorMessage = "Número deve ser informado!")]
        public string NUMERO
        {
            get { return GetValue(() => NUMERO); }
            set { SetValue(() => NUMERO, value); }
        }

        [Display(Name = "Cidade")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(10)]
        [ExistCidade(ErrorMessage = "Cidade não cadastrada")]
        public string ID_CIDADE
        {
            get { return GetValue(() => ID_CIDADE); }
            set { SetValue(() => ID_CIDADE, value); }
        }


        [Display(Name = "Telefone")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string TEL_1
        {
            get { return GetValue(() => TEL_1); }
            set { SetValue(() => TEL_1, value); }
        }

        [Display(Name = "Telefone")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string TEL_2
        {
            get { return GetValue(() => TEL_2); }
            set { SetValue(() => TEL_2, value); }
        }

        [Display(Name = "Celular")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string TEL_CELULAR
        {
            get { return GetValue(() => TEL_CELULAR); }
            set { SetValue(() => TEL_CELULAR, value); }
        }

        [Display(Name = "Email")]
        [StringLength(60)]
        [RegularExpression(@"[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}", ErrorMessage = "Entre um e-mail válido.")]
        public string EMAIL
        {
            get { return GetValue(() => EMAIL); }
            set { SetValue(() => EMAIL, value); }
        }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string OBS
        {
            get { return GetValue(() => OBS); }
            set { SetValue(() => OBS, value); }
        }


        //FKs

        [ForeignKey("ID_FORNECEDOR")]
        public virtual CAD_EF_C_FOR CAD_EF_C_FOR
        {
            get { return GetValue(() => CAD_EF_C_FOR); }
            set { SetValue(() => CAD_EF_C_FOR, value); }
        }

    }
}
