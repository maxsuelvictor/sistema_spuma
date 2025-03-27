using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações
{
    public class ValidaQuantidadeItemPedidoAttribute : ValidationAttribute, IClientValidatable
    {
        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (!string.IsNullOrEmpty(value.ToString()))
            {
                var itemQtde = double.Parse(value.ToString());
                var instance = validationContext.ObjectInstance as FAT_EF_M_PED_ITE;
                if(instance.FAT_EF_M_PED != null)
                {
                    var cadEfCTme =
                        _context.SET_CAD_EF_C_TME.FirstOrDefault(
                            x => x.ID_TIPO_MOV_ESTOQUE == instance.FAT_EF_M_PED.ID_TIPO_MOV_ESTOQUE);
                    if (cadEfCTme != null && (instance.FAT_EF_M_PED != null && cadEfCTme.ESTO_CRITICA))
                    {                    
                        var estEfMFes = _context.SET_EST_EF_M_FES.FirstOrDefault(x => x.ID_ITEM == instance.ID_ITEM && x.ID_EMPRESA == instance.FAT_EF_M_PED.ID_EMPRESA);
                        if (estEfMFes != null && estEfMFes.SALDO < itemQtde)
                        {
                            return new ValidationResult("Quantidade maior que saldo disponível em estoque!", new []{"QTDE"});
                        }
                    }
                    else
                    {
                        var cadEfCParCtr = _context.SET_CAD_EF_C_PAR_CTR.FirstOrDefault(x => x.ID_EMPRESA == instance.FAT_EF_M_PED.ID_EMPRESA);
                        var estEfMFes = _context.SET_EST_EF_M_FES.FirstOrDefault(x => x.ID_ITEM == instance.ID_ITEM && x.ID_EMPRESA == instance.FAT_EF_M_PED.ID_EMPRESA);
                        if (cadEfCParCtr != null && estEfMFes != null && !cadEfCParCtr.PED_ACEITA_EST_NEGATIVO && itemQtde > estEfMFes.SALDO)
                        {
                            return new ValidationResult("Quantidade maior que saldo disponível em estoque!", new[] { "QTDE" });
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
                    ErrorMessage = "Quantidade maior que saldo disponível em estoque!",
                    ValidationType = "validaqtdepedido"
                }
            };
        }
    }
}
