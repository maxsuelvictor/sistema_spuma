using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações
{
    public class ValidaItemPedidoAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var itemId = int.Parse(value.ToString());
                var instance = validationContext.ObjectInstance as FAT_EF_M_PED_ITE;
                var item = _context.SET_CAD_EF_C_ITE.FirstOrDefault(x => x.ID_ITEM == itemId);
                if (item != null)
                {
                    if (!item.ATIVO)
                    {
                        return new ValidationResult("Item inativo!", new []{"ID_ITEM"});
                    }
                    var grupo = _context.SET_CAD_EF_C_GRU.FirstOrDefault(g => g.ID_GRUPO == item.ID_GRUPO);
                    var tipos = new List<string> {"00", "04", "08", "99"};
                    if (grupo != null && !tipos.Contains(grupo.TIPO_ITEM))
                    {
                        return new ValidationResult("Item não é um produto para revenda!", new []{"ID_ITEM"});
                    }
                    if (instance != null && instance.FAT_EF_M_PED != null)
                    {
                        if (instance.FAT_EF_M_PED.FAT_EF_M_PED_ITE.Count(x => x.ID_ITEM == itemId) > 1)
                        {                            
                            return new ValidationResult("Item já incluído neste Pedido de Venda!", new[] { "ID_ITEM" });
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
                    ErrorMessage = "Item não é válido! Verifique se não está inativo e se é um produto para revenda ou se o produto já não está incluído no Pedido!",
                    ValidationType = "validaitempedido"
                }
            };
        }
    }
}
