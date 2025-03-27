using System.ComponentModel.DataAnnotations;

namespace enLoja.Model.Helpers
{    
    public class ESTADO
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
}
