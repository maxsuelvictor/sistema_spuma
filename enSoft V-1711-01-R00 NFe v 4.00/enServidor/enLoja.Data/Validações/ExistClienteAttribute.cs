using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ExistClienteAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                if (!string.IsNullOrEmpty(value.ToString().Trim()))
                {                    
                    var cidade = int.Parse(value.ToString());
                    if (!_context.SET_CAD_EF_C_CLI.Any(x => x.ID_CLIENTE == cidade))
                    {
                        return new ValidationResult("Cliente não cadastrado!", new[] { "ID_CLIENTE" });
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
                    ErrorMessage = "Cliente não cadastrado!",
                    ValidationType = "existcliente"
                }
            };
        }
    }
}
