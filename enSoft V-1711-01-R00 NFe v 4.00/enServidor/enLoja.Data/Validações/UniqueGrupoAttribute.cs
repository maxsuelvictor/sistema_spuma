using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Validações
{
    public class UniqueGrupoAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                if (!string.IsNullOrEmpty(value.ToString().Trim()))
                {
                    var instance = validationContext.ObjectInstance as CAD_EF_C_GRU;

                    var cidade = value.ToString();
                    if (_context.SET_CAD_EF_C_GRU.Any(x => x.ID_GRUPO == cidade && x.ID != instance.ID))
                    {
                        return new ValidationResult("Grupo já cadastrado!", new[] { "ID_GRUPO" });
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
                    ErrorMessage = "Grupo já cadastrado!",
                    ValidationType = "uniquegrupo"
                }
            };
        }
    }
}
