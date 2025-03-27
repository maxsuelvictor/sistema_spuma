using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações.Faturamento
{
    public class ExistEmitente : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var instance = validationContext.ObjectInstance as FAT_EF_M_NFE;
                int idEmitente;
                int.TryParse(value.ToString(), out idEmitente);
                if (instance != null)
                {
                    if (instance.ORIGEM_NF == "ENT" && !_context.SET_CAD_EF_C_FOR.Any(x => x.ID_FORNECEDOR == idEmitente))
                    {
                        return new ValidationResult("Fornecedor não cadastrado!", new[] {"ID_EMITENTE"});
                    }
                    if (instance.ORIGEM_NF == "SAI" && !_context.SET_CAD_EF_C_CLI.Any(x => x.ID_CLIENTE == idEmitente))
                    {
                        return new ValidationResult("Cliente não cadastrado!", new [] {"ID_EMITENTE"});
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
                    ErrorMessage = "Cliente/Fornecedor não cadastrado!",
                    ValidationType = "existemitente"
                }
            };
        }
    }
}
