using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ValidIdCidadeAttribute : ValidationAttribute, IClientValidatable
    {
        public override bool IsValid(object value)
        {
            if (value != null && !string.IsNullOrEmpty(value.ToString()))
            {
                if (value.ToString().Length < 7 || value.ToString().Length > 10)
                {
                    return false;
                }
            }
            return true;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] 
            {
                new ModelClientValidationRule
                {
                    ErrorMessage = "Código da Cidade deve estar entre 7 a 10 caracteres!",
                    ValidationType = "valididcidade"
                }
            };
        }
    }
}
