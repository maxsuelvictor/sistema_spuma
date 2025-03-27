using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ExistTributoAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                int tributo;
                int.TryParse(value.ToString(), out tributo);
                if (!_context.SET_CAD_EF_C_TRI.Any(x => x.ID_TRIBUTO == tributo))
                {
                    return new ValidationResult("Tributo não cadastrado !", new[] {"ID_TRIBUTO"});
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
                    ErrorMessage = "Tributo não cadastrado!",
                    ValidationType = "existtributo"
                }
            };
        }



    }
}
