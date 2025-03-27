using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Validações
{
    public class UniqueCNAEAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                if (!string.IsNullOrEmpty(value.ToString().Trim()))
                {
                    var instance = validationContext.ObjectInstance as CAD_EF_C_CNE;
                   
                    var cne = value.ToString();                    
                    if (_context.SET_CAD_EF_C_CNE.Any(x => x.ID_CNAE == cne && x.ID != instance.ID))
                    {
                        return new ValidationResult("CNAE já cadastrado !", new[] { "ID_CNAE" });
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
                    ErrorMessage = "CNAE já cadastrado!",
                    ValidationType = "uniquecnae"
                }
            };
        }

    }
}
