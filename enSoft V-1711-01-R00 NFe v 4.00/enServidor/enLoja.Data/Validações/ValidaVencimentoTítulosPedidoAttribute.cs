using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações
{
    public class ValidaVencimentoTítulosPedidoAttribute : ValidationAttribute, IClientValidatable
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                DateTime dataVencimento;
                DateTime.TryParse(value.ToString(), out dataVencimento);
                var instance = validationContext.ObjectInstance as FAT_EF_M_PED_TIT;
                if (instance != null && instance.FAT_EF_M_PED != null && instance.FAT_EF_M_PED.DTA_PEDIDO.Date > dataVencimento.Date)
                {
                    return new ValidationResult("Data do título deve ser maior que a data do Pedido!", new[] { "DTA_VENCIMENTO" });
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
                    ErrorMessage = "Data do título deve ser maior que a data do Pedido!",
                    ValidationType = "validavencimentotitulopedido"
                }
            };
        }
    }
}
