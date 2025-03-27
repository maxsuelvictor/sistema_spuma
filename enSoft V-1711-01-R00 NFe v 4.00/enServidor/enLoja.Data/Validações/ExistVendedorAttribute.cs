using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ExistVendedorAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var vendedorId = int.Parse(value.ToString());
                if (!_context.SET_CAD_EF_C_FUN.Any(x => x.ID_FUNCIONARIO == vendedorId))
                {
                    return new ValidationResult("Funcionário não cadastrado!", new[] {"ID_VENDEDOR"});
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
                    ErrorMessage = "Funcionário não cadastrado!",
                    ValidationType = "existvendedor"
                }
            };
        }
    }
}
