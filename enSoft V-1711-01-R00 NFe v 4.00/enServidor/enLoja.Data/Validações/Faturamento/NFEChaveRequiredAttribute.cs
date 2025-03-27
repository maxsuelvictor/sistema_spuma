using System.ComponentModel.DataAnnotations;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Validações.Faturamento
{
    public class NFEChaveRequiredAttribute : RequiredAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            var instance = validationContext.ObjectInstance as FAT_EF_M_NFE;
            if (instance != null)
            {
                if (instance.MODELO == "55")
                {
                    if (string.IsNullOrEmpty(instance.NFE_CHAVE))
                    {
                        return new ValidationResult("Chave deve ser informada!");
                    }
                }                
            }
            return ValidationResult.Success;
        }
    }
}
