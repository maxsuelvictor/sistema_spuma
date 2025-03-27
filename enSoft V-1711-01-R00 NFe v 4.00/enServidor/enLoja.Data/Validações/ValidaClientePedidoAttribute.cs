using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.Mvc;
using enLoja.Model.Enums;

namespace enLoja.Model.Validações
{
    public class ValidaClientePedidoAttribute : ValidationAttribute, IClientValidatable
    {

        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value != null)
            {
                if (!string.IsNullOrEmpty(value.ToString().Trim()))
                {
                    var clienteId = int.Parse(value.ToString());
                    var cliente = _context.SET_CAD_EF_C_CLI.FirstOrDefault(x => x.ID_CLIENTE == clienteId);
                    if(cliente != null)
                    {
                        if (!cliente.ATIVO)
                            return new ValidationResult("Cliente Inativo!", new[] {"ID_CLIENTE"});
                        if (cliente.LIM_VALIDADE.Date < DateTime.Now.Date)
                            return new ValidationResult("Cliente com Limite de Crédito Expirado!", new[] {"ID_CLIENTE"});
                        if (cliente.SITUACAO == CLI_SITUACAO_ENUM.CréditoEncerrado)
                            return new ValidationResult("Cliente com Situação: Crédito Encerrado", new[] {"ID_CLIENTE"});
                        if (_context.SET_FIN_EF_M_REC.Any(x => x.ID_CLIENTE == clienteId && x.VLR_ORIGINAL == x.VLR_SALDO))
                            return new ValidationResult("Cliente possui títulos em aberto!", new[] {"ID_CLIENTE"});
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
                    ErrorMessage = "Cliente não válido!",
                    ValidationType = "validaclientepedido"
                }
            };
        }
    }
}
