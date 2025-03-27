using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Globalization;
using System.Linq;
using System.Runtime.Serialization;
using enLoja.Model.Enums;
using enLoja.Model.Validações;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_PED")]
    [DataContract]
    public class FAT_EF_M_PED : NotifyingObject
    {
        public FAT_EF_M_PED()
        {
            DTA_PEDIDO = DateTime.Now;
            HOR_PEDIDO = DateTime.Now.TimeOfDay;
            FAT_EF_M_PED_ITE = new ObservableCollection<FAT_EF_M_PED_ITE>();
            FAT_EF_M_PED_ITE.CollectionChanged += FAT_EF_M_PED_ITE_CollectionChanged;
            FAT_EF_M_PED_TIT = new ObservableCollection<FAT_EF_M_PED_TIT>();
            FAT_EF_M_PED_TIT.CollectionChanged += FAT_EF_M_PED_TIT_CollectionChanged;
        }

        void FAT_EF_M_PED_TIT_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {            
            OnPropertyChanged("VLR_LIQUIDO");
        }

        void FAT_EF_M_PED_ITE_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if(e.Action == NotifyCollectionChangedAction.Remove )
            {
                VLR_BRUTO = FAT_EF_M_PED_ITE.Sum(x => x.VLR_BRUTO);
                OnPropertyChanged("VLR_BRUTO");
                VLR_LIQUIDO = FAT_EF_M_PED_ITE.Sum(x => x.VLR_LIQUIDO);
                OnPropertyChanged("VLR_LIQUIDO");                
                VLR_DESCONTO = FAT_EF_M_PED_ITE.Sum(x => x.VLR_DESCONTO);
                OnPropertyChanged("VLR_DESCONTO");
                if (VLR_DESCONTO > 0 && VLR_BRUTO > 0)
                    PER_DESCONTO =
                        Math.Round(double.Parse((VLR_DESCONTO*100/VLR_BRUTO).ToString(CultureInfo.InvariantCulture)), 2);
                else
                    PER_DESCONTO = 0;
                OnPropertyChanged("PER_DESCONTO");                
            }            
        }     
        

        [Key]
        [Display(Name = "Nº Pedido")]
        [DataMember]
        public int ID_PEDIDO 
        {
            get { return GetValue(() => ID_PEDIDO); }
            set { SetValue(() => ID_PEDIDO, value); }
        }

        [ForeignKey("ID_PEDIDO")]
        [DataMember]
        public virtual ObservableCollection<FAT_EF_M_PED_ITE> FAT_EF_M_PED_ITE
        {
            get { return GetValue(() => FAT_EF_M_PED_ITE); }
            set { SetValue(() => FAT_EF_M_PED_ITE, value); }
        }

        [ForeignKey("ID_PEDIDO")]
        [DataMember]
        public virtual ObservableCollection<FAT_EF_M_PED_TIT> FAT_EF_M_PED_TIT
        {
            get { return GetValue(() => FAT_EF_M_PED_TIT); }
            set { SetValue(() => FAT_EF_M_PED_TIT, value); }
        } 


        [Display(Name = "Empresa")]
        [DataMember]
        public int ID_EMPRESA
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Data Pedido")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data do Pedido deve ser Informada!")]
        [DataMember]
        public DateTime DTA_PEDIDO 
        {
            get { return GetValue(() => DTA_PEDIDO); }
            set { SetValue(() => DTA_PEDIDO, value); }
        }

        [Display(Name = "Cliente")]
        [Required(ErrorMessage = "Cliente deve ser Informado!")]
        [NotZero(ErrorMessage = "Cliente não deve ser 0 (zero)!")]
        [ExistCliente]
        [ValidaClientePedido]
        [DataMember]
        public int ID_CLIENTE 
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }        

        [ForeignKey("ID_CLIENTE")]
        //[Required(ErrorMessage = "Cliente deve ser selecionado!")]
        [DataMember]
        public virtual CAD_EF_C_CLI CAD_EF_C_CLI
        {
            get { return GetValue(() => CAD_EF_C_CLI); }
            set { SetValue(() => CAD_EF_C_CLI, value); }
        }

      
        [Display(Name = "Tipo de Estoque")]
        [Required(ErrorMessage = "Tipo de estoque deve ser informado!")]
        [NotZero(ErrorMessage = "Tipo de estoque não deve ser 0 (zero)!")]
        [ExistTipoEstoque]
        [ValidaTipoEstoquePedido]
        [DataMember]
        public int ID_TIPO_MOV_ESTOQUE 
        {
            get { return GetValue(() => ID_TIPO_MOV_ESTOQUE); }
            set { SetValue(() => ID_TIPO_MOV_ESTOQUE, value); }
        }        

        [ForeignKey("ID_TIPO_MOV_ESTOQUE")]
        //[Required(ErrorMessage = "Tipo de Estoque deve ser selecionado!")]
        [DataMember]
        public virtual CAD_EF_C_TME CAD_EF_C_TME
        {
            get { return GetValue(() => CAD_EF_C_TME); }
            set { SetValue(() => CAD_EF_C_TME, value); }
        }

        [Display(Name = "Vendedor")]
        [Required(ErrorMessage = "Vendedor deve ser informado!")]
        [NotZero(ErrorMessage = "Vendedor não deve ser 0 (zero)!")]
        [ExistVendedor]
        [ValidaVendedorPedido]
        [DataMember]
        public int ID_VENDEDOR 
        {
            get { return GetValue(() => ID_VENDEDOR); }
            set { SetValue(() => ID_VENDEDOR, value); }
        }

        [ForeignKey("ID_VENDEDOR")]
        //[Required(ErrorMessage = "Vendedor deve ser selecionado!")]
        [DataMember]
        public virtual CAD_EF_C_FUN CAD_EF_C_FUN
        {
            get { return GetValue(() => CAD_EF_C_FUN); }
            set { SetValue(() => CAD_EF_C_FUN, value); }
        }


        [Display(Name = "Vendedor")]
        [Required(ErrorMessage = "Vendedor deve ser informado!")]
        [NotZero(ErrorMessage = "Vendedor não deve ser 0 (zero)!")]
        [ExistVendedor]
        [ValidaVendedorPedido]
        [DataMember]
        public int ID_ATENDENTE
        {
            get { return GetValue(() => ID_ATENDENTE); }
            set { SetValue(() => ID_ATENDENTE, value); }
        }


        [Display(Name = "Observação")]
        [StringLength(100)]
        [DataMember]
        public string OBS 
        {
            get { return GetValue(() => OBS); }
            set { SetValue(() => OBS, value); }
        }

        [Display(Name = "Vlr.Bruto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        [DataMember]
        public decimal VLR_BRUTO 
        {
            get { return GetValue(() => VLR_BRUTO); }
            set { SetValue(() => VLR_BRUTO, value); }
        }

        [Display(Name = "Vlr.Desconto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        [DataMember]
        public decimal VLR_DESCONTO 
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set
            {
                SetValue(() => VLR_DESCONTO, value);
                if(FAT_EF_M_PED_ITE != null)
                {
                    if(VLR_DESCONTO != FAT_EF_M_PED_ITE.Sum(x => x.VLR_DESCONTO))
                        RateioValorDesconto(VLR_DESCONTO);
                }
            }
        }

        private void RateioValorDesconto(decimal valor)
        {
            if (FAT_EF_M_PED_ITE != null && valor != FAT_EF_M_PED_ITE.Sum(x => x.VLR_DESCONTO))
            {
                foreach (var fatEfMPedIte in FAT_EF_M_PED_ITE)
                {
                    if(VLR_BRUTO > 0)
                    {
                        //Utiliza os Valores Brutos para Chegar ao Valor de Desconto para cada item.
                        fatEfMPedIte.VLR_DESCONTO = Math.Round((fatEfMPedIte.VLR_BRUTO/VLR_BRUTO)*valor, 2);
                    }
                }
            }
        }

        [Display(Name = "% Desconto")]        
        [Required(ErrorMessage = "Valor deve ser informado!")]
        [Range(0, 100, ErrorMessage = "Percentual deve ser entre 0 e 100%!")]
        [DataMember]
        public double PER_DESCONTO 
        {
            get { return GetValue(() => PER_DESCONTO); }
            set
            {
                SetValue(() => PER_DESCONTO, value);
                if(FAT_EF_M_PED_ITE != null)
                {
                    if (PER_DESCONTO != FAT_EF_M_PED_ITE.Sum(x => x.PER_DESCONTO))
                    {
                        AtualizaValorDesconto(PER_DESCONTO);
                        RateioPercentualDesconto(PER_DESCONTO);   
                    }
                }                
            }
        }

        private void AtualizaValorDesconto(double percentualDesconto)
        {
            VLR_DESCONTO = Math.Round((VLR_BRUTO*decimal.Parse(percentualDesconto.ToString(CultureInfo.InvariantCulture)))/100, 2);
        }

        private void RateioPercentualDesconto(double valor)
        {
            if (FAT_EF_M_PED_ITE != null && valor != FAT_EF_M_PED_ITE.Sum(x => x.PER_DESCONTO))
            {
                foreach (var fatEfMPedIte in FAT_EF_M_PED_ITE)
                {
                    if(VLR_BRUTO > 0)
                    {
                        //Utiliza os Valores Brutos para Chegar ao Percentual de Desconto para cada item.
                        fatEfMPedIte.PER_DESCONTO = Math.Round((double.Parse((fatEfMPedIte.VLR_BRUTO / VLR_BRUTO).ToString(CultureInfo.InvariantCulture)) * valor), 2);                        
                    }
                }
            }
        }

        [Display(Name = "Vlr.Liquido")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]
        [ValidaVlrPedido]
        [DataMember]
        public decimal VLR_LIQUIDO 
        {
            get { return GetValue(() => VLR_LIQUIDO); }
            set
            {
                SetValue(() => VLR_LIQUIDO, value);
                if(CAD_EF_C_CPG != null)
                {                    
                    if (CAD_EF_C_CPG.TIPO_PAGAMENTO == IND_PAGAMENTO_ENUM.AVista)
                        GeraTítulos(CAD_EF_C_CPG.TIPO_PAGAMENTO);
                    if (CAD_EF_C_CPG.TIPO_PAGAMENTO == IND_PAGAMENTO_ENUM.APrazo)
                        RateioTítulosPrazo(VLR_LIQUIDO);
                }
                    
            }
        }

        [Display(Name = "Hora do Pedido")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:hh\\:mm}")]
        [DataMember]
        public Nullable<TimeSpan> HOR_PEDIDO
        {
            get { return GetValue(() => HOR_PEDIDO); }
            set { SetValue(() => HOR_PEDIDO, value); }
        }

        [Display(Name = "Validade do Pedido")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [ValidaDataValidadePedido]
        [DataMember]
        public DateTime DTA_VALIDADE 
        {
            get { return GetValue(() => DTA_VALIDADE); }
            set { SetValue(() => DTA_VALIDADE, value); }
        }       

        [Display(Name = "Cond.Pagamento")]
        [DataMember]
        public int ID_CONDICAO_PAG
        {
            get { return GetValue(() => ID_CONDICAO_PAG); }
            set { SetValue(() => ID_CONDICAO_PAG, value); }
        }

        [Display(Name = "Observação Produção")]
        [StringLength(100)]
        [DataMember]
        public string PCP_OBS
        {
            get { return GetValue(() => PCP_OBS); }
            set { SetValue(() => PCP_OBS, value); }
        }

        [Display(Name = "Ordem de Produção")]
        public Nullable<int> PCP_ID_OPR
        {
            get { return GetValue(() => PCP_ID_OPR); }
            set { SetValue(() => PCP_ID_OPR, value); }
        }

        [Display(Name = "Situação do Pedido")]
        /*
         0 - Em aberto     
         1 - Reprovado   
         2 - Em produção 
         3 - Faturado
         4 - Cancelado
         */
        public int SITUACAO
        {
            get { return GetValue(() => SITUACAO); }
            set { SetValue(() => SITUACAO, value); }
        }

        [Display(Name = "Situação Aprovação")]
        /*
         0 - Em espera
         1 - Aprovado
         2 - Reprovado
         */
        public int SITUACAO_APROVACAO
        {
            get { return GetValue(() => SITUACAO_APROVACAO); }
            set { SetValue(() => SITUACAO_APROVACAO, value); }
        }


        [ForeignKey("ID_CONDICAO_PAG")]
        //[Required(ErrorMessage = "Condição de pagamento deve ser selecionado!")]
        [DataMember]
        public virtual CAD_EF_C_CPG CAD_EF_C_CPG
        {
            get { return GetValue(() => CAD_EF_C_CPG); }
            set
            {
                SetValue(() => CAD_EF_C_CPG, value);
                AtualizaValorItens();
                if (ID_PEDIDO == 0)
                    GeraTítulos(CAD_EF_C_CPG.TIPO_PAGAMENTO);
                else
                {
                    if (CAD_EF_C_CPG != null)
                        AtualizaTítulos(CAD_EF_C_CPG.TIPO_PAGAMENTO);
                }
                OnPropertyChanged("VLR_LIQUIDO");
            }
        }

        private void AtualizaValorItens()
        {
            if (FAT_EF_M_PED_ITE != null)
            {
                foreach (var fatEfMPedIte in FAT_EF_M_PED_ITE)
                {
                    fatEfMPedIte.SetCAD_EF_C_ITE(fatEfMPedIte.ID_ITEM);
                }
            }
        }

        private void AtualizaTítulos(IND_PAGAMENTO_ENUM tipoPagamento)
        {
            if(tipoPagamento == IND_PAGAMENTO_ENUM.SemPagamento)
                FAT_EF_M_PED_TIT.Clear();
            if (tipoPagamento == IND_PAGAMENTO_ENUM.AVista && FAT_EF_M_PED_TIT != null && FAT_EF_M_PED_TIT.Count > 1)
            {
                var listaTitulos = FAT_EF_M_PED_TIT.ToList();
                foreach (var fatEfMPedTit in listaTitulos)
                {
                    FAT_EF_M_PED_TIT.Remove(fatEfMPedTit);
                }
                FAT_EF_M_PED_TIT.Add(new FAT_EF_M_PED_TIT()
                {
                    FAT_EF_M_PED = this,
                    ID_FORMA_PAG = ID_CONDICAO_PAG,
                    CAD_EF_C_CPG = CAD_EF_C_CPG,
                    DTA_VENCIMENTO = DTA_PEDIDO,
                    VLR_TITULO = VLR_LIQUIDO
                });
            }
        }
        
        private void GeraTítulos(IND_PAGAMENTO_ENUM tipoPagamento)
        {
            FAT_EF_M_PED_TIT = new ObservableCollection<FAT_EF_M_PED_TIT>();
            FAT_EF_M_PED_TIT.Clear();                
            if(tipoPagamento == IND_PAGAMENTO_ENUM.AVista)
            {
                FAT_EF_M_PED_TIT.Add(new FAT_EF_M_PED_TIT()
                {
                    FAT_EF_M_PED = this,
                    ID_FORMA_PAG = ID_CONDICAO_PAG,
                    CAD_EF_C_CPG = CAD_EF_C_CPG,
                    DTA_VENCIMENTO = DTA_PEDIDO,
                    VLR_TITULO = VLR_LIQUIDO
                });
            }
        }

        private void RateioTítulosPrazo(decimal valor)
        {
            if(FAT_EF_M_PED_TIT != null)
            {
                var somaAtual = FAT_EF_M_PED_TIT.Sum(x => x.VLR_TITULO);
                foreach (var fatEfMPedTit in FAT_EF_M_PED_TIT)
                {
                    var percentual = Math.Round(fatEfMPedTit.VLR_TITULO*100/somaAtual, 2);
                    fatEfMPedTit.VLR_TITULO = Math.Round(valor*percentual/100, 2);
                }
                var diferença = VLR_LIQUIDO - FAT_EF_M_PED_TIT.Sum(x => x.VLR_TITULO);
                if (diferença != 0)
                {
                    var fatEfMPedTit = FAT_EF_M_PED_TIT.LastOrDefault();
                    if (fatEfMPedTit != null)
                        fatEfMPedTit.VLR_TITULO += diferença;
                }
            }            
        }

        public void RaisePropertyChangedVLR_LIQUIDO()
        {
            OnPropertyChanged("VLR_LIQUIDO");
        }
    }
}
