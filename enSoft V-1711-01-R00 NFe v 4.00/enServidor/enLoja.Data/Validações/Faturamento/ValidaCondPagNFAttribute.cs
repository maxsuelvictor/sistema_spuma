using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Enums;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações.Faturamento
{
    public class ValidaCondPagNFAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var instance = validationContext.ObjectInstance as FAT_EF_M_NFE;
                if (instance != null)
                {
                    if (!string.IsNullOrEmpty(instance.TIPO_NF) && instance.ID_CONDICAO_PAG > 0)
                    {
                        var condicao =
                            _context.SET_CAD_EF_C_CPG.FirstOrDefault(x => x.ID_CONDICAO_PAG == instance.ID_CONDICAO_PAG);
                        if (condicao != null)
                        {
                            if (instance.TIPO_NF == "E" && condicao.TIPO_PAGAMENTO == IND_PAGAMENTO_ENUM.AVista)
                            {
                                return new ValidationResult("Condição de Pagamento não é válida!", new []{"ID_CONDICAO_PAG"});
                            }
                        }                            
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
                    ErrorMessage = "Condição de Pagamento não é válida!",
                    ValidationType = "validacondpagnf"
                }
            };
        }
    }
}
