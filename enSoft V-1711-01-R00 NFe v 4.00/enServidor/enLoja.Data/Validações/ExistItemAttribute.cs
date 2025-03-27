using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ExistItemAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var itemId = int.Parse(value.ToString());
                if (!_context.SET_CAD_EF_C_ITE.Any(x => x.ID_ITEM == itemId))
                {
                    return new ValidationResult("Item não cadastrado!", new[]{"ID_ITEM"});
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
                    ErrorMessage = "Item não cadastrado!",
                    ValidationType = "existitem"
                }
            };
        }
    }
}
