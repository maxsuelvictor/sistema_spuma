using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Validações
{
    public class ExistCidadeAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                if (!string.IsNullOrEmpty(value.ToString().Trim()))
                {
                    var instance = validationContext.ObjectInstance as CAD_EF_C_CID;

                    var cidade = value.ToString();
                    if (!_context.SET_CAD_EF_C_CID.Any(x => x.ID_CIDADE == cidade ))
                    {
                        return new ValidationResult("Cidade não cadastrada !", new[] { "ID_CIDADE" });
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
                    ErrorMessage = "Cidade não cadastrada!",
                    ValidationType = "existcidade"
                }
            };
        }



    }
}
