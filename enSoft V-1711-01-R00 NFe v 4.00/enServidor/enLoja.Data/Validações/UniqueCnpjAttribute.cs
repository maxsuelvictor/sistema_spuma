using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Validações
{
    public class UniqueCnpjAttribute : ValidationAttribute, IClientValidatable
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
                        var cnpj = value.ToString();
                        if (_context.SET_CAD_EF_C_CLI.Any(x => x.DOC_CNPJ_CPF == cnpj && x.ID_CLIENTE != instance.ID_CLIENTE))
                        {
                            return new ValidationResult("CNPJ já cadastrado para outro cliente!", new[] { "DOC_CNPJ" });
                        }
                    }
                    if (validationContext.ObjectInstance.GetType() == typeof (CAD_EF_C_FOR))
                    {
                        var instance = validationContext.ObjectInstance as CAD_EF_C_FOR;
                        var cnpj = value.ToString();
                        if (_context.SET_CAD_EF_C_FOR.Any(x => x.DOC_CNPJ == cnpj && x.ID_FORNECEDOR != instance.ID_FORNECEDOR))
                        {
                            return new ValidationResult("CNPJ já cadastrado para outro fornecedor!", new[] { "DOC_CNPJ" });
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
                    ErrorMessage = "CNPJ já cadastrado para outro cliente!",
                    ValidationType = "uniquecnpj"
                }
            };
        }
    }
}
