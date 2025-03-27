using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using enLoja.Model.Faturamento;

namespace enLoja.Model.Cadastros
{

    [Table("CAD_TB_C_CPG")]
    public class CAD_EF_C_CPG : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_CONDICAO_PAG
        {
            get { return GetValue(() => ID_CONDICAO_PAG); }
            set { SetValue(() => ID_CONDICAO_PAG, value); }
        }

        [Display(Name = "Ativo")]
        public bool ATIVO
        {
            get { return GetValue(() => ATIVO); }
            set { SetValue(() => ATIVO, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR"), StringLength(30)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }


        [Display(Name = "Tipo")]
        public IND_PAGAMENTO_ENUM TIPO_PAGAMENTO
        {
            get { return GetValue(() => TIPO_PAGAMENTO); }
            set { SetValue(() => TIPO_PAGAMENTO, value); }
        }

        [Display(Name = "Fator do preço")]
        public float FATOR_PRECO
        {
            get { return GetValue(() => FATOR_PRECO); }
            set { SetValue(() => FATOR_PRECO, value); }
        }

        [Display(Name = "Acrescimo no fator do preço por prazo medio")]
        public float ACRES_FATOR_PRECO
        {
            get { return GetValue(() => ACRES_FATOR_PRECO); }
            set { SetValue(() => ACRES_FATOR_PRECO, value); }
        }

        [Display(Name = "Numero de Parcelas")]
        public int NUM_PARCELAS
        {
            get { return GetValue(() => NUM_PARCELAS); }
            set { SetValue(() => NUM_PARCELAS, value); }
        }

        [Display(Name = "Prazo Médio")]
        public int PRAZO
        {
            get { return GetValue(() => PRAZO); }
            set { SetValue(() => PRAZO, value); }
        }


        [Display(Name = "Utiliza Prazo")]
        public bool UTILIZA_PRAZO
        {
            get { return GetValue(() => UTILIZA_PRAZO); }
            set { SetValue(() => UTILIZA_PRAZO, value); }
        }

        [Display(Name = "Mostra no Cardapio")]
        public bool CARD_MOSTRA
        {
            get { return GetValue(() => CARD_MOSTRA); }
            set { SetValue(() => CARD_MOSTRA, value); }
        }


        [Display(Name = "Foto no Cardapio")]
        public byte[] CARD_FOTO
        {
            get { return GetValue(() => CARD_FOTO); }
            set { SetValue(() => CARD_FOTO, value); }
        }

    }
}
