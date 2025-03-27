using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ValidaNascimentoAttribute : ValidationAttribute, IClientValidatable
    {
        public override bool IsValid(object value)
        {
            if (value != null)
            {
                DateTime data;
                DateTime.TryParse(value.ToString(), out data);
                if (data.Date > DateTime.Now.Date)
                    return false;
                return true;
            }
            return true;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] 
            {
                new ModelClientValidationRule
                {
                    ErrorMessage = "Data de Nascimento inválida!",
                    ValidationType = "validanascimento"
                }
            };
        }
    }
}
