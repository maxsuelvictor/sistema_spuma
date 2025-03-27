using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Globalization;
using System.Linq;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_PED_ITE")]
    public class FAT_EF_M_PED_ITE : NotifyingObject
    {        
        [Key, Column(Order = 1)]
        [Display(Name = "Nº Pedido")]
        public int ID_PEDIDO 
        {
            get { return GetValue(() => ID_PEDIDO); }
            set { SetValue(() => ID_PEDIDO, value); }
        }

        [ForeignKey("ID_PEDIDO")]
        public virtual FAT_EF_M_PED FAT_EF_M_PED
        {
            get { return GetValue(() => FAT_EF_M_PED); }
            set { SetValue(() => FAT_EF_M_PED, value); }
        }


        [Key, Column(Order = 2)]
        [Display(Name = "Nº Pedido")]
        public int SEQUENCIA
        {
            get { return GetValue(() => SEQUENCIA); }
            set { SetValue(() => SEQUENCIA, value); }
        }

        [Display(Name = "Item")]
        [NotZero(ErrorMessage = "Código do Item não deve ser 0 (zero)!")]
        [ExistItem]        
        [ValidaItemPedido]
        public int ID_ITEM 
        {
            get { return GetValue(() => ID_ITEM); }
            set
            {
                SetValue(() => ID_ITEM, value);
                SetCAD_EF_C_ITE(ID_ITEM);
            }
        }

        public int ID_COR { get; set; }

        public int ID_TAMANHO { get; set; }


        [ForeignKey("ID_ITEM")]
        //[Required(ErrorMessage = "Item deve ser selecionado!")]
        public virtual CAD_EF_C_ITE CAD_EF_C_ITE
        {
            get { return GetValue(() => CAD_EF_C_ITE); }
            set { SetValue(() => CAD_EF_C_ITE, value); }
        }

        public void SetCAD_EF_C_ITE(int itemId)
        {      
            if(FAT_EF_M_PED != null)
            {
                var context = new enLojaContext();
                //Não posso alimentar com outro contexto...
                //CAD_EF_C_ITE = context.SET_CAD_EF_C_ITE.FirstOrDefault(x => x.ID_ITEM == itemId);            
                var cliente = context.SET_CAD_EF_C_CLI.FirstOrDefault(x => x.ID_CLIENTE == FAT_EF_M_PED.ID_CLIENTE);                
                var cadEfCItePre = context.SET_CAD_EF_C_ITE_PRE.FirstOrDefault(
                    x => x.ID_ITEM == itemId && x.ID_PERFIL_CLI == cliente.ID_PERFIL_CLI);
                var condicao = FAT_EF_M_PED.CAD_EF_C_CPG;  //Esta vem alimentada da View...              
                if (cadEfCItePre != null)
                    if(condicao != null && condicao.FATOR_PRECO > 0)
                        VLR_UNITARIO = Math.Round(cadEfCItePre.PRECO_BASE / decimal.Parse(condicao.FATOR_PRECO.ToString(CultureInfo.InvariantCulture)), 2);                                    
            }
        }


        [Display(Name = "Qtde")]        
        [NotZero(ErrorMessage = "Quantidade não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Quantidade deve ser informado!")]
        [ValidaQuantidadeItemPedido]
        public double QTDE 
        {
            get { return GetValue(() => QTDE); }
            set
            {
                SetValue(() => QTDE, value);
                CalculaValorBruto();
                CalculaValorLíquido();
            }
        }

        [Display(Name = "Vlr.Unitário")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_UNITARIO 
        {
            get { return GetValue(() => VLR_UNITARIO); }
            set
            {
                SetValue(() => VLR_UNITARIO, value);
                CalculaValorBruto();
                CalculaValorLíquido();
            }
        }

        private void CalculaValorBruto()
        {
            if (VLR_UNITARIO > 0 && QTDE > 0)
            {
                VLR_BRUTO = Math.Round(VLR_UNITARIO*decimal.Parse(QTDE.ToString(CultureInfo.InvariantCulture)), 2);
            }
            else
            {
                VLR_BRUTO = 0;
            }
        }

        [Display(Name = "Vlr.Bruto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_BRUTO 
        {
            get { return GetValue(() => VLR_BRUTO); }
            set
            {
                SetValue(() => VLR_BRUTO, value);
                SetVLR_BRUTO_PED();
                if(PER_DESCONTO > 0)
                    CalculaValorDesconto(PER_DESCONTO);
            }
        }

        private void SetVLR_BRUTO_PED()
        {
            if (FAT_EF_M_PED != null)
            {
                FAT_EF_M_PED.VLR_BRUTO = FAT_EF_M_PED.FAT_EF_M_PED_ITE.Sum(x => x.VLR_BRUTO);
            }
        }

        [Display(Name = "% Desconto")]        
        [Required(ErrorMessage = "Valor deve ser informado!")]
        [Range(0, 100, ErrorMessage = "Percentual deve ser entre 0 e 100%!")]
        public double PER_DESCONTO 
        {
            get { return GetValue(() => PER_DESCONTO); }
            set
            {
                if(PER_DESCONTO != value)
                {
                    SetValue(() => PER_DESCONTO, value);
                    CalculaValorDesconto(PER_DESCONTO);
                    SetPER_DESCONTO_PED();
                }
            }
        }

        private void SetPER_DESCONTO_PED()
        {
            if (FAT_EF_M_PED != null)
            {
                FAT_EF_M_PED.PER_DESCONTO = Math.Round(double.Parse((FAT_EF_M_PED.VLR_DESCONTO*100/FAT_EF_M_PED.VLR_BRUTO).ToString(CultureInfo.InvariantCulture)), 2);
            }
        }

        private void CalculaValorDesconto(double percentualDesconto)
        {
            VLR_DESCONTO = Math.Round(VLR_BRUTO*decimal.Parse(percentualDesconto.ToString(CultureInfo.InvariantCulture))/100, 2);
        }

        [Display(Name = "Vlr.Desconto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_DESCONTO 
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set
            {
                if(VLR_DESCONTO != value)
                {
                    SetValue(() => VLR_DESCONTO, value);
                    SetVLR_DESCONTO_PED();
                    CalculaPercentualDesconto(VLR_DESCONTO);
                    CalculaValorLíquido();
                }
            }
        }

        private void CalculaPercentualDesconto(decimal valorDesconto)
        {
            if(VLR_BRUTO > 0)
                PER_DESCONTO = Math.Round(double.Parse((valorDesconto*100/VLR_BRUTO).ToString(CultureInfo.InvariantCulture)), 2);
        }

        private void SetVLR_DESCONTO_PED()
        {
            if (FAT_EF_M_PED != null)
            {                
                FAT_EF_M_PED.VLR_DESCONTO = FAT_EF_M_PED.FAT_EF_M_PED_ITE.Sum(x => x.VLR_DESCONTO);
            }
        }

        [Display(Name = "Vlr.Liquido")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        public decimal VLR_LIQUIDO 
        {
            get { return GetValue(() => VLR_LIQUIDO); }
            set
            {
                SetValue(() => VLR_LIQUIDO, value);
                SetVLR_LIQUIDO_PED();
            }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string ID_BUSCA_ITEM { get; set; } 


        private void CalculaValorLíquido()
        {
            VLR_LIQUIDO = Math.Round(decimal.Parse(QTDE.ToString(CultureInfo.InvariantCulture))*VLR_UNITARIO - VLR_DESCONTO, 2);
        }

        private void SetVLR_LIQUIDO_PED()
        {
            if (FAT_EF_M_PED != null)
            {
                FAT_EF_M_PED.VLR_LIQUIDO = FAT_EF_M_PED.FAT_EF_M_PED_ITE.Sum(x => x.VLR_LIQUIDO);
            }
        }        
    }
}
