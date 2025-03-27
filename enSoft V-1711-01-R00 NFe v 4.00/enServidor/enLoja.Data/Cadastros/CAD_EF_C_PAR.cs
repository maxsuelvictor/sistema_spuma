using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_PAR")]
    public class CAD_EF_C_PAR : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]  
        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [ForeignKey("ID_EMPRESA")]
        public virtual CAD_EF_C_PAR_CTR CAD_EF_C_PAR_CTR
        {
            get { return GetValue(() => CAD_EF_C_PAR_CTR); }
            set { SetValue(() => CAD_EF_C_PAR_CTR, value); }
        }

        [ForeignKey("ID_EMPRESA")]
        public virtual CAD_EF_C_PAR_SER CAD_EF_C_PAR_SER
        {
            get { return GetValue(() => CAD_EF_C_PAR_SER); }
            set { SetValue(() => CAD_EF_C_PAR_SER, value); }
        }

        [ForeignKey("ID_EMPRESA")]
        public virtual CAD_EF_C_PAR_MOD CAD_EF_C_PAR_MOD
        {
            get { return GetValue(() => CAD_EF_C_PAR_MOD); }
            set { SetValue(() => CAD_EF_C_PAR_MOD, value); }
        }


        [Display(Name = "CNPJ")]
        [StringLength(14)]
        [ValidCpfCnpj(false, ErrorMessage = "CNPJ inválido!")]
        //[UniqueCnpj(ErrorMessage = "CNPJ já cadastrado para outro cliente")]
        public string EMP_CNPJ 
        {
            get { return GetValue(() => EMP_CNPJ); }
            set { SetValue(() => EMP_CNPJ, value); }
        }        


        [Display(Name = "Ramo de Atividade")]
        public int ID_RAMO 
        {
            get { return GetValue(() => ID_RAMO); }
            set { SetValue(() => ID_RAMO, value); }
        }

        [ForeignKey("ID_RAMO")]
        public virtual CAD_EF_C_RAM CAD_EF_C_RAM
        {
            get { return GetValue(() => CAD_EF_C_RAM); }
            set { SetValue(() => CAD_EF_C_RAM, value); }
        }

        [Display(Name = "Razão Social")]
        [StringLength(50)]
        [Required(ErrorMessage = "Razão social deve ser preenchido.")]
        public string EMP_RAZAO 
        {
            get { return GetValue(() => EMP_RAZAO); }
            set { SetValue(() => EMP_RAZAO, value); }
        }

        [Display(Name = "Endereço")]
        [StringLength(50)]
        [Required(ErrorMessage = "Endereço deve ser informado!")]            
        public string EMP_ENDERECO 
        {
            get { return GetValue(() => EMP_ENDERECO); }
            set { SetValue(() => EMP_ENDERECO, value); }
        }

        [Display(Name = "Número")]
        [StringLength(10)]
        [Required(ErrorMessage = "Número deve ser informado!")]            
        public string EMP_NUMERO 
        {
            get { return GetValue(() => EMP_NUMERO); }
            set { SetValue(() => EMP_NUMERO, value); }
        }

        [Display(Name = "Complemento")]
        [StringLength(30)]                
        public string EMP_COMPLEMENTO 
        {
            get { return GetValue(() => EMP_COMPLEMENTO); }
            set { SetValue(() => EMP_COMPLEMENTO, value); }
        }

        [Display(Name = "Bairro")]
        [Required(ErrorMessage = "Bairro deve ser informado!")]
        [StringLength(40)]
        public string EMP_BAIRRO 
        {
            get { return GetValue(() => EMP_BAIRRO); }
            set { SetValue(() => EMP_BAIRRO, value); }
        }

        [Display(Name = "Cidade")]
        [StringLength(10)]
        public string ID_CIDADE 
        {
            get { return GetValue(() => ID_CIDADE); }
            set { SetValue(() => ID_CIDADE, value); }
        }

        [ForeignKey("ID_CIDADE")]
        public virtual CAD_EF_C_CID CAD_EF_C_CID
        {
            get { return GetValue(() => CAD_EF_C_CID); }
            set { SetValue(() => CAD_EF_C_CID, value); }
        }



        [Display(Name = "CEP")]
        [StringLength(9)]
        [Required(ErrorMessage = "CEP deve ser informado!")]
        [RegularExpression(@"^\d{5}\-?\d{3}$", ErrorMessage = "CEP inválido.")]
        public string EMP_CEP 
        {
            get { return GetValue(() => EMP_CEP); }
            set { SetValue(() => EMP_CEP, value); }
        }


        [Display(Name = "Telefone")]
        [StringLength(14)]
        public string EMP_TELEFONE 
        {
            get { return GetValue(() => EMP_TELEFONE); }
            set { SetValue(() => EMP_TELEFONE, value); }
        }

        [Display(Name = "FAX")]
        [StringLength(14)]
        public string EMP_FAX 
        {
            get { return GetValue(() => EMP_FAX); }
            set { SetValue(() => EMP_FAX, value); }
        }

        [Display(Name = "Email")]
        [StringLength(60)]
        [RegularExpression(@"[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}", ErrorMessage = "Entre um e-mail válido.")]
        public string EMP_EMAIL 
        {
            get { return GetValue(() => EMP_EMAIL); }
            set { SetValue(() => EMP_EMAIL, value); }
        }

        [Display(Name = "Site")]
        [StringLength(60)]
        public string EMP_SITE 
        {
            get { return GetValue(() => EMP_SITE); }
            set { SetValue(() => EMP_SITE, value); }
        }

        [Display(Name = "Nome Fantasia")]
        [StringLength(50)]
        public string EMP_FANTASIA 
        {
            get { return GetValue(() => EMP_FANTASIA); }
            set { SetValue(() => EMP_FANTASIA, value); }
        }

        [Display(Name = "Insc. Municipal")]
        [StringLength(20)]
        public string EMP_IM 
        {
            get { return GetValue(() => EMP_IM); }
            set { SetValue(() => EMP_IM, value); }
        }

        [Display(Name = "Insc. Estadual")]
        [StringLength(20)]
        public string EMP_IE 
        {
            get { return GetValue(() => EMP_IE); }
            set { SetValue(() => EMP_IE, value); }
        }

        [Display(Name = "Suframa")]
        [StringLength(20)]
        public string EMP_SUFRAMA 
        {
            get { return GetValue(() => EMP_SUFRAMA ); }
            set { SetValue(() => EMP_SUFRAMA , value); }
        }   

        public byte[] EMP_LOGO 
        {
            get { return GetValue(() => EMP_LOGO); }
            set { SetValue(() => EMP_LOGO, value); }
        }

        [Display(Name = "Nº Junta Comercial")]
        [StringLength(20)]
        public string EMP_NUMERO_JUNTA 
        {
            get { return GetValue(() => EMP_NUMERO_JUNTA); }
            set { SetValue(() => EMP_NUMERO_JUNTA, value); }
        }

        [Display(Name = "Nome do Responsável")]
        [StringLength(50)]
        [Required(ErrorMessage = "Nome responsável deve ser preenchido.")]
        public string RES_NOME 
        {
            get { return GetValue(() => RES_NOME); }
            set { SetValue(() => RES_NOME, value); }
        }

        [Display(Name = "Qualificação")]
        [StringLength(10)]
        public string RES_QUALIFICACAO 
        {
            get { return GetValue(() => RES_QUALIFICACAO); }
            set { SetValue(() => RES_QUALIFICACAO, value); }
        }

        [Display(Name = "CPF")]
        [StringLength(11)]
        [ValidCpfCnpj(true, ErrorMessage = "CPF inválido!")]
        public string RES_CPF 
        {
            get { return GetValue(() => RES_CPF); }
            set { SetValue(() => RES_CPF, value); }
        }
        
        [Display(Name = "CEP")]
        [StringLength(9)]
        [Required(ErrorMessage = "CEP deve ser informado!")]
        [RegularExpression(@"^\d{5}\-?\d{3}$", ErrorMessage = "CEP inválido.")]
        public string RES_CEP 
        {
            get { return GetValue(() => RES_CEP); }
            set { SetValue(() => RES_CEP, value); }
        }

        [Display(Name = "Endereço")]
        [StringLength(50)]
        [Required(ErrorMessage = "Endereço deve ser informado!")]
        public string RES_ENDERECO 
        {
            get { return GetValue(() => RES_ENDERECO); }
            set { SetValue(() => RES_ENDERECO, value); }
        }

        [Display(Name = "Número")]
        [StringLength(10)]
        [Required(ErrorMessage = "Número deve ser informado!")]
        public string RES_NUMERO 
        {
            get { return GetValue(() => RES_NUMERO); }
            set { SetValue(() => RES_NUMERO, value); }
        }

        [Display(Name = "Complemento")]
        [StringLength(30)]
        public string RES_COMPLEMENTO 
        {
            get { return GetValue(() => RES_COMPLEMENTO); }
            set { SetValue(() => RES_COMPLEMENTO, value); }
        }

        [Display(Name = "Bairro")]
        [Required(ErrorMessage = "Bairro deve ser informado!")]
        [StringLength(40)]
        public string RES_BAIRRO 
        {
            get { return GetValue(() => RES_BAIRRO); }
            set { SetValue(() => RES_BAIRRO, value); }
        }

        [Display(Name = "Caixa Posta")]
        [StringLength(14)]
        public string RES_CP 
        {
            get { return GetValue(() => RES_CP); }
            set { SetValue(() => RES_CP, value); }
        }

        [Display(Name = "Telefone")]
        [StringLength(14)]
        public string RES_TELEFONE 
        {
            get { return GetValue(() => RES_TELEFONE); }
            set { SetValue(() => RES_TELEFONE, value); }
        }

        [Display(Name = "FAX")]
        [StringLength(14)]        
        public string RES_FAX 
        {
            get { return GetValue(() => RES_FAX); }
            set { SetValue(() => RES_FAX, value); }
        }

        [Display(Name = "Email")]
        [StringLength(60)]
        [RegularExpression(@"[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}", ErrorMessage = "Entre um e-mail válido.")]
        public string RES_EMAIL 
        {
            get { return GetValue(() => RES_EMAIL); }
            set { SetValue(() => RES_EMAIL, value); }
        }

        [Display(Name = "Nome do Contador")]
        [StringLength(50)]
        [Required(ErrorMessage = "Nome do contador deve ser preenchido.")]
        public string CNT_NOME 
        {
            get { return GetValue(() => CNT_NOME); }
            set { SetValue(() => CNT_NOME, value); }
        }

        [Display(Name = "CPF")]
        [StringLength(11)]
        //[ValidCpfCnpj(true, ErrorMessage = "CPF inválido!")]
        public string CNT_CPF 
        {
            get { return GetValue(() => CNT_CPF); }
            set { SetValue(() => CNT_CPF, value); }
        }

        [Display(Name = "CRC")]
        [StringLength(10)]
        [Required(ErrorMessage = "CRC deve ser preenchido.")]
        public string CNT_CRC 
        {
            get { return GetValue(() => CNT_CRC); }
            set { SetValue(() => CNT_CRC, value); }
        }

        [Display(Name = "CNPJ")]
        [StringLength(14)]
        //[ValidCpfCnpj(false, ErrorMessage = "CNPJ inválido!")]
        public string CNT_CNPJ 
        {
            get { return GetValue(() => CNT_CNPJ); }
            set { SetValue(() => CNT_CNPJ, value); }
        }

        [Display(Name = "CEP")]
        [StringLength(9)]
        [Required(ErrorMessage = "CEP deve ser informado!")]
        [RegularExpression(@"^\d{5}\-?\d{3}$", ErrorMessage = "CEP inválido.")]
        public string CNT_CEP 
        {
            get { return GetValue(() => CNT_CEP); }
            set { SetValue(() => CNT_CEP, value); }
        }

        [Display(Name = "Endereço")]
        [StringLength(50)]
        [Required(ErrorMessage = "Endereço deve ser informado!")]
        public string CNT_ENDERECO 
        {
            get { return GetValue(() => CNT_ENDERECO); }
            set { SetValue(() => CNT_ENDERECO, value); }
        }

        [Display(Name = "Número")]
        [StringLength(10)]
        [Required(ErrorMessage = "Número deve ser informado!")]
        public string CNT_NUMERO 
        {
            get { return GetValue(() => CNT_NUMERO); }
            set { SetValue(() => CNT_NUMERO, value); }
        }

        [Display(Name = "Complemento")]
        [StringLength(30)]
        public string CNT_COMPLEMENTO 
        {
            get { return GetValue(() => CNT_COMPLEMENTO); }
            set { SetValue(() => CNT_COMPLEMENTO, value); }
        }

        [Display(Name = "Bairro")]
        [Required(ErrorMessage = "Bairro deve ser informado!")]
        [StringLength(40)]
        public string CNT_BAIRRO 
        {
            get { return GetValue(() => CNT_BAIRRO); }
            set { SetValue(() => CNT_BAIRRO, value); }
        }

        [Display(Name = "Telefone")]
        [StringLength(14)]
        public string CNT_TELEFONE 
        {
            get { return GetValue(() => CNT_TELEFONE); }
            set { SetValue(() => CNT_TELEFONE, value); }
        }

        [Display(Name = "FAX")]
        [StringLength(14)]
        public string CNT_FAX 
        {
            get { return GetValue(() => CNT_FAX); }
            set { SetValue(() => CNT_FAX, value); }
        }

        [Display(Name = "Email")]
        [StringLength(60)]
        [RegularExpression(@"[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}", ErrorMessage = "Entre um e-mail válido.")]
        public string CNT_EMAIL 
        {
            get { return GetValue(() => CNT_EMAIL); }
            set { SetValue(() => CNT_EMAIL, value); }
        }

        [Display(Name = "Cidade")]
        [StringLength(10)]
        public string CNT_ID_CIDADE 
        {
            get { return GetValue(() => CNT_ID_CIDADE); }
            set { SetValue(() => CNT_ID_CIDADE, value); }
        }

        [Display(Name = "Qualificação")]
        [StringLength(10)]
        public string CNT_QUALIFICACAO 
        {
            get { return GetValue(() => CNT_QUALIFICACAO); }
            set { SetValue(() => CNT_QUALIFICACAO, value); }
        }

        [Display(Name = "Caixa Posta")]
        [StringLength(14)]
        public string CNT_CP
        {
            get { return GetValue(() => CNT_CP); }
            set { SetValue(() => CNT_CP, value); }
        }        


        //public virtual CAD_EF_C_RAM CNF_EF_C_RAM 
        //public virtual CAD_EF_C_PAR_CT CNF_EF_C_PAR_CT 
        //public virtual CAD_EF_C_CID CNF_EF_C_CID 
    }
}
