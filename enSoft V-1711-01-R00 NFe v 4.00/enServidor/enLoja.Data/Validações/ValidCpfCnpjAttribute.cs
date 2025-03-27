using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ValidCpfCnpjAttribute : ValidationAttribute, IClientValidatable
    {

        private bool _isCpf;

        public ValidCpfCnpjAttribute(bool isCpf)
        {
            _isCpf = isCpf;
        }
    
        public override bool IsValid(object value)
        {
            if(!string.IsNullOrEmpty(value.ToString()))
            {
                var cpfcnpj = value.ToString().Trim();
                if(_isCpf)
                    return string.IsNullOrEmpty(cpfcnpj) || ValidateCPF(cpfcnpj);
                return string.IsNullOrEmpty(cpfcnpj) || ValidateCNPJ(cpfcnpj);
            }
            return true;
        }

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                if (!string.IsNullOrEmpty(value.ToString().Trim()))
                {
                    var cpfcnpj = value.ToString().Trim();
                    if (_isCpf)
                    {
                        if (!string.IsNullOrEmpty(cpfcnpj) && !ValidateCPF(cpfcnpj))
                        {
                            return new ValidationResult("CPF Inválido", new[] { "DOC_CPF" });
                        }
                    }
                    else
                    {
                        if (!string.IsNullOrEmpty(cpfcnpj) && !ValidateCNPJ(cpfcnpj))
                        {
                            return new ValidationResult("CNPJ Inválido", new[] { "DOC_CNPJ" });
                        }
                    }
                }
            }

            return ValidationResult.Success;
        }

        private bool ValidateCNPJ(string cnpj)
        {
            var multiplicador1 = new int[12] { 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
            var multiplicador2 = new int[13] { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
            int soma;
            int resto;
            string digito;
            string tempCnpj;
            cnpj = cnpj.Trim();
            cnpj = cnpj.Replace(".", "").Replace("-", "").Replace("/", "");
            if (cnpj.Length != 14)
                return false;
            tempCnpj = cnpj.Substring(0, 12);
            soma = 0;
            for (int i = 0; i < 12; i++)
                soma += int.Parse(tempCnpj[i].ToString()) * multiplicador1[i];
            resto = (soma % 11);
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = resto.ToString();
            tempCnpj = tempCnpj + digito;
            soma = 0;
            for (int i = 0; i < 13; i++)
                soma += int.Parse(tempCnpj[i].ToString()) * multiplicador2[i];
            resto = (soma % 11);
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = digito + resto.ToString();
            return cnpj.EndsWith(digito);
        }

        private bool ValidateCPF(string cpf)
        {                        
            var multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            var multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            string tempCpf;
            string digito;
            int soma;
            int resto;
            cpf = cpf.Trim();
            cpf = cpf.Replace(".", "").Replace("-", "");
            if (cpf.Length != 11)
                return false;
            tempCpf = cpf.Substring(0, 9);
            soma = 0;

            for (int i = 0; i < 9; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = resto.ToString();
            tempCpf = tempCpf + digito;
            soma = 0;
            for (int i = 0; i < 10; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = digito + resto.ToString();
            return cpf.EndsWith(digito);            
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] 
            {
                new ModelClientValidationRule
                {
                    ErrorMessage = "CPF/CNPJ inválido!",
                    ValidationType = "cpfcnpj"
                }
            };
        }
    }
}
