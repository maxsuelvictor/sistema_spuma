using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class NotZeroAttribute : ValidationAttribute, IClientValidatable
    {        
        public override bool IsValid(object value)
        {
            decimal valorDec;
            decimal.TryParse(value.ToString(), out valorDec);            
            return valorDec != 0;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] 
            {
                new ModelClientValidationRule
                {
                    ErrorMessage = "Valor deve ser maior que 0 (zero)!",
                    ValidationType = "notzero"
                }
            };
        }
    }        
}
