using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using enLoja.Model.Enums;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações
{
    public class ValidaVlrPedidoAttribute :ValidationAttribute, IClientValidatable
    {        
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                decimal valorLíquido;
                decimal.TryParse(value.ToString(), out valorLíquido);
                var instance = validationContext.ObjectInstance as FAT_EF_M_PED;
                if (instance != null && Math.Round(valorLíquido, 2) != Math.Round(instance.FAT_EF_M_PED_ITE.Sum(x => x.VLR_LIQUIDO), 2))
                {
                    return new ValidationResult("Valor Líquido do Pedido não confere com os valores dos Produtos!", new []{"VLR_LIQUIDO"});
                }
                if (instance != null && instance.CAD_EF_C_CPG != null &&
                    instance.CAD_EF_C_CPG.TIPO_PAGAMENTO == IND_PAGAMENTO_ENUM.APrazo)
                {
                    if (instance.FAT_EF_M_PED_TIT != null)
                    {
                        if (Math.Round(valorLíquido, 2) !=
                            Math.Round(instance.FAT_EF_M_PED_TIT.Sum(x => x.VLR_TITULO), 2))
                        {
                            return new ValidationResult("Valor Líquido do Pedido não confere com os valores dos Títulos!", new[] { "VLR_LIQUIDO" });
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
                    ErrorMessage = "Valor Líquido do Pedido não confere com os valores dos Produtos / Títulos!",
                    ValidationType = "validavlrpedido"
                }
            };
        }
    }
}
