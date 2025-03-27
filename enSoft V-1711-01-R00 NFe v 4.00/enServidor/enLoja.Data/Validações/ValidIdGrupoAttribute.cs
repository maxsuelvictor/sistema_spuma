using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.Mvc;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Validações
{
    public class ValidIdGrupoAttribute : ValidationAttribute, IClientValidatable
    {

        private readonly enLojaContext _context = new enLojaContext();

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            //Pega a instância atual.
            var instance = validationContext.ObjectInstance as CAD_EF_C_GRU;                    
            //Somente faz a validação se tiver incluindo um novo grupo e que já não tenha erros, senão é desnecessário.
            if(instance != null && instance.ID == 0)
            {
                //Se o valor não é nulo.
                if (value != null)
                {
                    string id = value.ToString();
                    const string strRegex = @"^((\d{1})?(\d{1}\.{1}\d{2})?(\d{1}\.{1}\d{2}\.{1}\d{3})?)?$";
                    const RegexOptions myRegexOptions = RegexOptions.None;
                    var myRegex = new Regex(strRegex, myRegexOptions);
                    if (!myRegex.Match(id).Success)
                    {
                        return new ValidationResult("Formato incorreto!",
                                                                                 new[] { "ID_GRUPO" });                        
                    }
                    if (id.Length <= 1)
                    {                        
                        var num = 0;
                        //Converte o valor para inteiro.
                        int.TryParse(id, out num);
                        //Se está alimentado com 0
                        if(num == 0)
                            //Retorna uma validação com erro.
                            return new ValidationResult("Código Zero não é permitido!", new[]{"ID_GRUPO"});

                        for (int i = 1; i < num; i++)
                        {
                            var strCodigo = i.ToString("D1");
                            if (!_context.SET_CAD_EF_C_GRU.Any(g => g.ID_GRUPO == strCodigo))
                            {
                                return new ValidationResult(
                                    "Código do Grupo da sequência anterior não está cadastrado!", new[] {"ID_GRUPO"});
                            }
                        }
                    }
                    else
                    {
                        var countPontos = id.Count(c => c == '.');
                        var pai = id.Substring(0, id.LastIndexOf('.'));
                        //Valida se o Grupo Pai Existe
                        if (!_context.SET_CAD_EF_C_GRU.Any(g => g.ID_GRUPO == pai))
                            return new ValidationResult("Grupo pai não está cadastrado!", new[] {"ID_GRUPO"});

                        var num = int.Parse(id.Substring(id.LastIndexOf('.') + 1, id.Length - (id.LastIndexOf('.') + 1)));

                        //Valida se não é 00 ou 000
                        if (num == 0)
                            return new ValidationResult("Código Zero não é permitido!", new[] {"ID_GRUPO"});

                        for (int i = 1; i < num; i++)
                        {
                            if (countPontos == 1)
                            {
                                var strCodigo = pai + "." + i.ToString("D2");
                                if (!_context.SET_CAD_EF_C_GRU.Any(g => g.ID_GRUPO == strCodigo))
                                {
                                    return
                                        new ValidationResult(
                                            "Código do Grupo da sequência anterior não está cadastrado!",
                                            new[] {"ID_GRUPO"});
                                }
                            }
                            else
                            {
                                var strCodigo = pai + "." + i.ToString("D3");
                                if (!_context.SET_CAD_EF_C_GRU.Any(g => g.ID_GRUPO == strCodigo))
                                {
                                    return
                                        new ValidationResult(
                                            "Código do Grupo da sequência anterior não está cadastrado!",
                                            new[] {"ID_GRUPO"});
                                }
                            }
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
                    ErrorMessage = "Código do Grupo da sequência anterior não está cadastrado!",
                    ValidationType = "sequencegrupo"
                }
            };
        }
    }
}
