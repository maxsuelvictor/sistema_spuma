using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ExistSetorAttribute :ValidationAttribute, IClientValidatable
    {
        private enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var SetorId = int.Parse(value.ToString());
                if (!_context.SET_CAD_EF_C_SET.Any(x => x.ID_SETOR == SetorId))
                {
                    return new ValidationResult("Setor não cadastrado!", new []{"ID_SETOR"});
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
                    ErrorMessage = "Setor não cadastrado!",
                    ValidationType = "existsetor"
                }
            };
        }
    }
}