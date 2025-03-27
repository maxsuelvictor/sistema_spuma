using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações.Faturamento
{
    public class ValidaChaveNFeAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly  enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            var instance = validationContext.ObjectInstance as FAT_EF_M_NFE;
            //Se é uma NF de Entrada, com número informado e com modelo de NFe.
            if(instance != null && instance.ORIGEM_NF == "ENT" && instance.NUMERO != 0 && instance.MODELO == "55")
            {
                //Se a Chave está informada
                if (!string.IsNullOrEmpty(value.ToString()))
                {
                    var chave = value.ToString().Trim();
                    if (chave.Length != 44)
                    {
                        return new ValidationResult("Chave inválida!", new []{"NFE_CHAVE"});
                    }
                    var códigoNumérico = chave.Substring(35, 8); //Acho que esse é o número da NF.. que não interessa validar para nós... então pego o mesmo que está na chave.
                    var dígitoVerificador = chave.Substring(chave.Length - 1, 1); //Não sei se o objetivo é também validar este número ????
                    var dataAamm = instance.DTA_EMISSAO.Year.ToString("D2") + instance.DTA_EMISSAO.Month.ToString("D2");
                    if (instance.ID_EMITENTE > 0)
                    {
                        var emitente =
                            _context.SET_CAD_EF_C_FOR.FirstOrDefault(x => x.ID_FORNECEDOR == instance.ID_EMITENTE);
                        if (!string.IsNullOrEmpty(instance.SERIE) && !string.IsNullOrEmpty(instance.NFE_TIPO_EMISSAO) && emitente != null)
                        {
                            var chaveBuilder = new StringBuilder();
                            chaveBuilder.Append(emitente.ID_CIDADE.Trim().Substring(0, 2));
                            chaveBuilder.Append(dataAamm);
                            chaveBuilder.Append(emitente.DOC_CNPJ.Replace("/", "").Replace(".", "").PadLeft(14, '0'));
                            chaveBuilder.Append(instance.MODELO);
                            chaveBuilder.Append(instance.SERIE);
                            chaveBuilder.Append(instance.NUMERO);
                            chaveBuilder.Append(instance.NFE_TIPO_EMISSAO);
                            chaveBuilder.Append(códigoNumérico);
                            chaveBuilder.Append(dígitoVerificador);
                            if (chaveBuilder.ToString() != chave)
                            {
                                return new ValidationResult("Chave inválida!", new[] { "NFE_CHAVE" });
                            }
                        }
                    }
                }
            }

            return ValidationResult.Success;
        }

        public IEnumerable<ModelClientValidationRule> GetClientValidationRules(ModelMetadata metadata, ControllerContext context)
        {
            throw new NotImplementedException();
        }
    }
}
