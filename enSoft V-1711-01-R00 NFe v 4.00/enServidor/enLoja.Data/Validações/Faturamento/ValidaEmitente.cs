using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using enLoja.Model.Cadastros;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações.Faturamento
{
    public class ValidaEmitente: ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                int idEmitente;
                int.TryParse(value.ToString(), out idEmitente);
                var instance = validationContext.ObjectInstance as FAT_EF_M_NFE;
                if (instance != null)
                {
                    if (instance.ORIGEM_NF == "ENT" && _context.SET_CAD_EF_C_FOR.Any(x => x.ID_FORNECEDOR == idEmitente))
                    {
                        var cadEfCFor = _context.SET_CAD_EF_C_FOR.FirstOrDefault(x => x.ID_FORNECEDOR == idEmitente);
                        if (cadEfCFor != null && !cadEfCFor.ATIVO)
                        {
                            return new ValidationResult("Fornecedor inativo!", new []{"ID_EMITENTE"});
                        }
                    }
                    if (instance.ORIGEM_NF == "SAI" && _context.SET_CAD_EF_C_CLI.Any(x => x.ID_CLIENTE == idEmitente))
                    {
                        var cadEfCCli = _context.SET_CAD_EF_C_CLI.FirstOrDefault(x => x.ID_CLIENTE == idEmitente);
                        if (cadEfCCli != null && !cadEfCCli.ATIVO)
                        {
                            return new ValidationResult("Cliente inativo!", new[] { "ID_EMITENTE" });
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
                    ErrorMessage = "Cliente/Fornecedor não cadastrado!",
                    ValidationType = "validaemitente"
                }
            };
        }
    }
}
