using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ExistTipoEstoqueAttribute :ValidationAttribute, IClientValidatable
    {
        private enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var tipoEstoqueId = int.Parse(value.ToString());
                if (!_context.SET_CAD_EF_C_TME.Any(x => x.ID_TIPO_MOV_ESTOQUE == tipoEstoqueId))
                {
                    return new ValidationResult("Tipo de Estoque não cadastrado!", new []{"ID_TIPO_MOV_ESTOQUE"});
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
                    ErrorMessage = "Tipo de Estoque não cadastrado!",
                    ValidationType = "existtipoestoque"
                }
            };
        }
    }
}
