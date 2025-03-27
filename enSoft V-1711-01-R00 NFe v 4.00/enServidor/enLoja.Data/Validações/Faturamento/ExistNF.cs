using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações.Faturamento
{
    public class ExistNF :ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var instance = validationContext.ObjectInstance as FAT_EF_M_NFE;
                if(instance != null && instance.ID_FISCAL == 0) //ID_FISCAL igual a 0 significa que é uma inclusão.
                {
                    if (
                        _context.SET_FAT_EF_M_NFE.Any(
                            x =>
                                x.DTA_EMISSAO == instance.DTA_EMISSAO && x.NUMERO == instance.NUMERO &&
                                x.ID_EMITENTE == instance.ID_EMITENTE && x.SERIE == instance.SERIE &&
                                x.MODELO == instance.MODELO))
                    {
                        return new ValidationResult("NF já existe!");
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
                    ErrorMessage = "NF já existe!",
                    ValidationType = "existnf"
                }
            };
        }
    }
}
