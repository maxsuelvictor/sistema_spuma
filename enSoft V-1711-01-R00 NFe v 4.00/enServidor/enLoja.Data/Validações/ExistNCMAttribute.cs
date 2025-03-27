using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ExistNcmAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                if (!string.IsNullOrEmpty(value.ToString().Trim()))
                {                    
                    var ncm = value.ToString();
                    if (!_context.SET_CAD_EF_C_NCM.Any(x => x.ID_NCM == ncm ))
                    {
                        return new ValidationResult("NCM não cadastrado !", new[] { "ID_NCM" });
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
                    ErrorMessage = "NCM não cadastrado!",
                    ValidationType = "existncm"
                }
            };
        }



    }
}
