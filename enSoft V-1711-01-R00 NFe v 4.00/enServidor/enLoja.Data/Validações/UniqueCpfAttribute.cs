using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Validações
{
    public class UniqueCpfAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();        

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                if (!string.IsNullOrEmpty(value.ToString().Trim()))
                {
                    if(validationContext.ObjectInstance.GetType() == typeof(CAD_EF_C_CLI))
                    {
                        var instance = validationContext.ObjectInstance as CAD_EF_C_CLI;
                        var cpf = value.ToString();
                        if (_context.SET_CAD_EF_C_CLI.Any(x => x.DOC_CNPJ_CPF == cpf && x.ID_CLIENTE != instance.ID_CLIENTE))
                        {
                            return new ValidationResult("CPF já cadastrado para outro cliente!", new[] { "DOC_CPF" });
                        }
                    }
                    if (validationContext.ObjectInstance.GetType() == typeof(CAD_EF_C_FOR))
                    {
                        var instance = validationContext.ObjectInstance as CAD_EF_C_FOR;
                        var cpf = value.ToString();
                        if (_context.SET_CAD_EF_C_FOR.Any(x => x.DOC_CPF == cpf && x.ID_FORNECEDOR != instance.ID_FORNECEDOR))
                        {
                            return new ValidationResult("CPF já cadastrado para outro fornecedor!", new[] { "DOC_CPF" });
                        }
                    }
                }
            }
            return ValidationResult.Success;            
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] 
            {
                new ModelClientValidationRule
                {
                    ErrorMessage = "CPF já cadastrado para outro cliente!",
                    ValidationType = "uniquecpf"
                }
            };
        }
    }
}
