using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ValidaVendedorPedidoAttribute :ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var vendedorId = int.Parse(value.ToString());
                var vendedor = _context.SET_CAD_EF_C_FUN.FirstOrDefault(x => x.ID_FUNCIONARIO == vendedorId);
                if (vendedor != null && !vendedor.ATIVO)
                {
                    return new ValidationResult("Vendedor Inativo!", new []{"ID_VENDEDOR"});
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
                    ErrorMessage = "Vendedor não Inativo!",
                    ValidationType = "validavendedorpedido"
                }
            };
        }
    }
}
