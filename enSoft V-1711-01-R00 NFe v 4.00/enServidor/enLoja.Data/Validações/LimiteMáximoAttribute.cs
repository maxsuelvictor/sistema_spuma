using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Validações
{
    public class LimiteMáximoAttribute: ValidationAttribute, IClientValidatable
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                var strLimite = value.ToString();
                decimal limite;
                decimal.TryParse(strLimite, out limite);
                var instance = validationContext.ObjectInstance as CAD_EF_C_CLI;
                if (instance != null && limite >= instance.LimiteMáximo && instance.LimiteMáximo > 0)
                {
                    return new ValidationResult(string.Format("Limite excede o máximo permitido de {0}!", instance.LimiteMáximo.ToString("c")), new[] { "ID_CIDADE" });
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
                    ErrorMessage = "Limite excede o máximo permitido!",
                    ValidationType = "limitemaximo"
                }
            };
        }
    }
}
