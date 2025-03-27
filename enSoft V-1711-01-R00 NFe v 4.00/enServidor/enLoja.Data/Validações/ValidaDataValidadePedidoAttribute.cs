using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações
{
    public class ValidaDataValidadePedidoAttribute :ValidationAttribute, IClientValidatable
    {        
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var data = DateTime.Parse(value.ToString());
                var instance = validationContext.ObjectInstance as FAT_EF_M_PED;
                if (instance != null && instance.DTA_PEDIDO.Date > data.Date)
                {
                    return new ValidationResult("Data de validade deve ser maior que a data de Emissão!", new[]{"DTA_VALIDADE"});
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
                    ErrorMessage = "Data de validade deve ser maior que a data de Emissão!",
                    ValidationType = "validadatavalidadepedido",                                        
                }
            };
        }
    }   
}
