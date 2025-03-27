using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using enLoja.Model.Cadastros;

namespace enLoja.Model.PCP.Movimentacoes
{
    [Table("PCP_TB_M_ACR_ITE_PCN")]
    public class PCP_EF_M_ACR_ITE_PCN : NotifyingObject
    {
        [Key, Column(Order = 0),ForeignKey("PCP_EF_M_ACR_ITE")]
        public int ID_ACR
        {
            get { return GetValue(() => ID_ACR); }
            set { SetValue(() => ID_ACR, value); }
        }

        [Key, Column(Order = 1), ForeignKey("PCP_EF_M_ACR_ITE")]
        public int ID_ACR_P
        {
            get { return GetValue(() => ID_ACR_P); }
            set { SetValue(() => ID_ACR_P, value); }
        }

        [Key, Column(Order = 2)]
        public int ID_ACR_PN
        {
            get { return GetValue(() => ID_ACR_PN); }
            set { SetValue(() => ID_ACR_PN, value); }
        }


        [Display(Name = "Item")]
        [NotZero(ErrorMessage = "Código do Item não deve ser 0 (zero)!")]
        [ExistItem]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Display(Name = "Data de Entrada")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public System.DateTime DATA_ENTRADA
        {
            get { return GetValue(() => DATA_ENTRADA); }
            set { SetValue(() => DATA_ENTRADA, value); }
        }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(200)]
        public string OBSERVACAO
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        public PCP_INDICADOR_DESTINO_ENUM INDICACOR_DESTINO
        {
            get { return GetValue(() => INDICACOR_DESTINO); }
            set { SetValue(() => INDICACOR_DESTINO, value); }
        }

        public int ID_RESPONSAVEL 
        {
            get { return GetValue(() => ID_RESPONSAVEL); }
            set { SetValue(() => ID_RESPONSAVEL, value); }
        }

        //FKs
        public virtual PCP_EF_M_ACR_ITE PCP_EF_M_ACR_ITE { get; set; }

        [ForeignKey("ID_RESPONSAVEL")]
        public virtual CAD_EF_C_FUN CAD_EF_C_FUN { get; set; }

        [ForeignKey("ID_ITEM")]
        public virtual CAD_EF_C_ITE CAD_EF_C_ITE { get; set; }
    }
}
