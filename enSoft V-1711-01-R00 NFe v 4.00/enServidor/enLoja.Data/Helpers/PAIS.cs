using System.ComponentModel.DataAnnotations;

namespace enLoja.Model.Helpers
{
    public class PAIS
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
}
