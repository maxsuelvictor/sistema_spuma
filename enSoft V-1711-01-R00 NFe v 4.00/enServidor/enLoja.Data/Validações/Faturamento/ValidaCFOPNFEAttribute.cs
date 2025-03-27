using enLoja.Model.Faturamento;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using enLoja.Model.Enums;


namespace enLoja.Model.Validações.Faturamento
{
    public class ValidaCFOPNFEAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if( value != null)
            {
                var fatEfMNfe = validationContext.ObjectInstance as FAT_EF_M_NFE;                
                var cfop = value.ToString();                  
                if(fatEfMNfe != null)
                {
                    var empresa = context.SET_CAD_EF_C_PAR.FirstOrDefault(x => x.ID_EMPRESA == fatEfMNfe.ID_EMPRESA);
                    var tipoEstoque = context.SET_CAD_EF_C_TME.FirstOrDefault(x => x.ID_TIPO_MOV_ESTOQUE == fatEfMNfe.ID_TIPO_MOV_ESTOQUE);
                    if(tipoEstoque.TIPO_MOVIMENTO == TME_TIPO_MOV_ENUM.Entrada)
                    {
                        var fornecedor = context.SET_CAD_EF_C_FOR.FirstOrDefault(x => x.ID_FORNECEDOR == fatEfMNfe.ID_EMITENTE);
                        if((cfop.StartsWith("1") || cfop.StartsWith("5")) && fornecedor != null && empresa != null && fornecedor.CAD_EF_C_CID.UF != empresa.CAD_EF_C_CID.UF)
                        {
                            return new ValidationResult("CFOP é somente para fornecedores dentro do estado!", new[] { "ID_CFO" });
                        }
                        if ((cfop.StartsWith("2") || cfop.StartsWith("6")) && fornecedor != null && empresa != null && fornecedor.CAD_EF_C_CID.UF == empresa.CAD_EF_C_CID.UF)
                        {
                            return new ValidationResult("CFOP é somente para fornecedores fora do estado!", new[] { "ID_CFO" });
                        }
                    }
                    else
                    {
                        var cliente = context.SET_CAD_EF_C_CLI.FirstOrDefault(x => x.ID_CLIENTE == fatEfMNfe.ID_EMITENTE);
                        if ((cfop.StartsWith("1") || cfop.StartsWith("5")) && cliente != null && empresa != null && cliente.CAD_EF_C_CID.UF != empresa.CAD_EF_C_CID.UF)
                        {
                            return new ValidationResult("CFOP é somente para clientes dentro do estado!", new[] { "ID_CFO" });
                        }
                        if ((cfop.StartsWith("2") || cfop.StartsWith("6")) && cliente != null && empresa != null && cliente.CAD_EF_C_CID.UF == empresa.CAD_EF_C_CID.UF)
                        {
                            return new ValidationResult("CFOP é somente para clientes fora do estado!", new[] { "ID_CFO" });
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
                    ErrorMessage = "CFOP inválida para este estado!",
                    ValidationType = "validacfopnfe"
                }
            };
        }
    }
}
