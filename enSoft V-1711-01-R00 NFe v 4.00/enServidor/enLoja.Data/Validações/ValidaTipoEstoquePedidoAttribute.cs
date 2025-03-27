using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;

namespace enLoja.Model.Validações
{
    public class ValidaTipoEstoquePedidoAttribute :ValidationAttribute, IClientValidatable
    {

        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var tipoEstoqueId = int.Parse(value.ToString());
                var tipoEstoque = _context.SET_CAD_EF_C_TME.FirstOrDefault(x => x.ID_TIPO_MOV_ESTOQUE == tipoEstoqueId);
                if (tipoEstoque != null && !tipoEstoque.ATIVO)
                {
                    return new ValidationResult("Tipo de Estoque Inativo!", new[] {"ID_TIPO_MOV_ESTOQUE"});
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
                    ErrorMessage = "Tipo de Estoque Inativo!",
                    ValidationType = "validatipoestoquepedido"
                }
            };
        }
    }
}
