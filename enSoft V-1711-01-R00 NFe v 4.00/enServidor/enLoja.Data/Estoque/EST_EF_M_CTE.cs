using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Estoque;

namespace enLoja.Model.Estoque
{
    [Table("EST_TB_M_CTE")]  //Contagem de Estoque
    public class EST_EF_M_CTE : NotifyingObject
    {
        [Key]
        public int ID_CONTROLE
        {
            get { return GetValue(() => ID_CONTROLE); }
            set { SetValue(() => ID_CONTROLE, value); }
        }

        [ForeignKey("ID_CONTROLE")]
        public virtual ICollection<EST_EF_M_CTE_ITE> EST_EF_M_CTE_ITE
        {
            get { return GetValue(() => EST_EF_M_CTE_ITE); }
            set { SetValue(() => EST_EF_M_CTE_ITE, value); }
        }


        public DateTime DTA_CONTAGEM
        {
            get { return GetValue(() => DTA_CONTAGEM); }
            set { SetValue(() => DTA_CONTAGEM, value); }
        }

        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Observação")]
        [StringLength(50)]
        public string OBS
        {
            get { return GetValue(() => OBS); }
            set { SetValue(() => OBS, value); }
        }

        [Display(Name = "Tipo da Contagem")]
        /*
          0 - Automatica
          1 - Por Localização
          2 - Por Data Movimentação
         */
        public int CTE_TIPO
        {
            get { return GetValue(() => CTE_TIPO); }
            set { SetValue(() => CTE_TIPO, value); }
        }

        [Display(Name = "Localização")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string LOCALIZACAO
        {
            get { return GetValue(() => LOCALIZACAO); }
            set { SetValue(() => LOCALIZACAO, value); }
        }

        public DateTime DTA_MOVIMENTO
        {
            get { return GetValue(() => DTA_MOVIMENTO); }
            set { SetValue(() => DTA_MOVIMENTO, value); }
        }


    }
}
