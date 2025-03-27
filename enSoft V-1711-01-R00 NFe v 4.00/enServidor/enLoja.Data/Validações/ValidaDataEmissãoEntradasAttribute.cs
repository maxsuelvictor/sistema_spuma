using enLoja.Model.Faturamento;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ValidaDataEmissãoEntradasAttribute : ValidationAttribute, IClientValidatable
    {

        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if(value != null)
            {
                DateTime data = DateTime.MinValue;
                DateTime.TryParse(value.ToString(), out data);
                if (data != DateTime.MinValue)
                {                    
                        var instance = validationContext.ObjectInstance as FAT_EF_M_NFE;
                        if(instance != null && (instance.TIPO_NF == "E" || instance.TIPO_NF == "R"))
                        {
                            if (data.Date > DateTime.Now.Date)
                            {
                                return new ValidationResult("Data deve ser menor que a data atual!", new[] { "DTA_EMISSAO" });
                            }                            
                        }                        
                }
                else
                    return new ValidationResult("Data inválida!", new[] { "DTA_EMISSAO" });                
            }
            return ValidationResult.Success;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            return new[] 
            {
                new ModelClientValidationRule
                {
                    ErrorMessage = "Data de emissão inválida!",
                    ValidationType = "validaemissaoentrada"
                }
            };
        }
    }
}
