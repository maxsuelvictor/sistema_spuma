using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Reflection.Emit;
using System.Text;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using System.Linq;
using enLoja.Model.Validações.Faturamento;

namespace enLoja.Model.Faturamento
{
    [Table("FAT_TB_M_NFE")]
    public class FAT_EF_M_NFE : NotifyingObject
    {
        private enLojaContext _context;

        [Key]
        [Display(Name = "Nº Fiscal")]
        public int ID_FISCAL 
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        [ForeignKey("ID_FISCAL")]
        public virtual ICollection<FAT_EF_M_NFE_ITE> FAT_EF_M_NFE_ITE
        {
            get { return GetValue(() => FAT_EF_M_NFE_ITE); }
            set { SetValue(() => FAT_EF_M_NFE_ITE, value); }
        }

        [ForeignKey("ID_FISCAL")]
        public virtual ICollection<FAT_EF_M_NFE_TIT> FAT_EF_M_NFE_TIT
        {
            get { return GetValue(() => FAT_EF_M_NFE_TIT); }
            set { SetValue(() => FAT_EF_M_NFE_TIT, value); }
        }

        [ForeignKey("ID_FISCAL")]
        public virtual ICollection<FAT_EF_M_NFE_ANA> FAT_EF_M_NFE_ANA
        {
            get { return GetValue(() => FAT_EF_M_NFE_ANA); }
            set { SetValue(() => FAT_EF_M_NFE_ANA, value); }
        }


        [Display(Name = "Almoxarifado")]
        [Required(ErrorMessage = "Almoxarifado deve ser Informado!")]
        public int ID_ALMOXARIFADO
        {
            get { return GetValue(() => ID_ALMOXARIFADO); }
            set { SetValue(() => ID_ALMOXARIFADO, value); }
        }


        [Display(Name = "Pedido de Compra")]
        public Nullable<int> ID_PEDIDO_COMPRA
        {
            get { return GetValue(() => ID_PEDIDO_COMPRA); }
            set { SetValue(() => ID_PEDIDO_COMPRA, value); }
        }

        [Display(Name = "Cond.Pagamento")]
        [ValidaCondPagNF]
        [NotZero(ErrorMessage= "Condição de Pagamento deve ser informada!")]
        public int ID_CONDICAO_PAG
        {
            get { return GetValue(() => ID_CONDICAO_PAG); }
            set { SetValue(() => ID_CONDICAO_PAG, value); }
        }

        
        [Display(Name = "Empresa")]
        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Emitente")]
        [Required(ErrorMessage = "Emitente deve ser Informado!")]
        [NotZero(ErrorMessage = "Código não deve ser 0 (zero)!")]
        [ExistEmitente]
        [ValidaEmitente]
        [ExistNF]
        public int ID_EMITENTE 
        {
            get { return GetValue(() => ID_EMITENTE); }
            set 
            { 
                SetValue(() => ID_EMITENTE, value);
                SetCFOP();
                SetDadosEmitente();
            }
        }

        private void SetDadosEmitente()
        {
            if (ID_EMITENTE != 0)
            {
                if(_context == null)
                    _context = new enLojaContext();
                if (ORIGEM_NF == "ENT")
                {
                    var emitente = _context.SET_CAD_EF_C_FOR.FirstOrDefault(x => x.ID_FORNECEDOR == ID_EMITENTE);
                    if(emitente != null)
                    {
                        UF_EMITENTE = emitente.CAD_EF_C_CID.UF;
                        CPF_CNPJ = emitente.DOC_CNPJ;
                    }
                }
                if (ORIGEM_NF == "SAI")
                {
                    var emitente = _context.SET_CAD_EF_C_CLI.FirstOrDefault(x => x.ID_CLIENTE == ID_EMITENTE);
                    if (emitente != null)
                    {
                        
                        UF_EMITENTE = emitente.CAD_EF_C_CID.UF;
                        CPF_CNPJ = emitente.PESSOA == PESSOA_ENUM.Física ? emitente.DOC_CNPJ_CPF : emitente.DOC_CNPJ_CPF;
                    }
                }
            }
        }

        [Display(Name = "CFOP")]
        [StringLength(5)]
        [Required(ErrorMessage = "Código deve ser informado!")]
        [RegularExpression(@"^[0-9''-'\s]{1,40}$", ErrorMessage = "Só é permitido numeros.")]
        [ValidaCFOPNFE]
        public string ID_CFO
        {
            get { return GetValue(() => ID_CFO); }
            set { SetValue(() => ID_CFO, value); }
        }


        [Display(Name = "Transportadora")]
        [Required(ErrorMessage = "Transportadora deve ser Informado!")]
        public int ID_TRANPOSTADORA
        {
            get { return GetValue(() => ID_TRANPOSTADORA); }
            set { SetValue(() => ID_TRANPOSTADORA, value); }
        }

        [Display(Name = "Vendedor")]
        [Required(ErrorMessage = "Vendedor deve ser Informado!")]
        [NotZero(ErrorMessage = "Vendedor deve ser Informado!")]
        [ExistVendedor]
        [ValidaVendedorNF]
        public int ID_VENDEDOR
        {
            get { return GetValue(() => ID_VENDEDOR); }
            set { SetValue(() => ID_VENDEDOR, value); }
        }

        [Display(Name = "Responsavel")]
        [Required(ErrorMessage = "Vendedor deve ser Informado!")]
        [NotZero(ErrorMessage = "Vendedor deve ser Informado!")]
        [ExistVendedor]
        [ValidaVendedorNF]
        public int ID_RESPONSAVEL
        {
            get { return GetValue(() => ID_RESPONSAVEL); }
            set { SetValue(() => ID_RESPONSAVEL, value); }
        }


        [Display(Name = "Tipo de Estoque")]
        [Required(ErrorMessage = "Tipo de Estoque deve ser Informado!")]
        public int ID_TIPO_MOV_ESTOQUE
        {
            get { return GetValue(() => ID_TIPO_MOV_ESTOQUE); }
            set 
            { 
                SetValue(() => ID_TIPO_MOV_ESTOQUE, value);
                SetCFOP();
            }
        }

        //Método para Definição de CFOP e Tipo de NF
        private void SetCFOP()
        {
            if(ID_EMITENTE != 0 && ID_EMPRESA != 0 && ID_TIPO_MOV_ESTOQUE != 0)
            {
                if(_context== null)
                    _context = new enLojaContext();
                var tipoestoque = _context.SET_CAD_EF_C_TME.FirstOrDefault(x => x.ID_TIPO_MOV_ESTOQUE == this.ID_TIPO_MOV_ESTOQUE);
                var empresa = _context.SET_CAD_EF_C_PAR.FirstOrDefault(x => x.ID_EMPRESA == ID_EMPRESA);                
                if(tipoestoque != null)
                {
                    //Notas de Entrada
                    if(tipoestoque.TIPO_MOVIMENTO == TME_TIPO_MOV_ENUM.Entrada)
                    {
                        switch (tipoestoque.INDICADOR)
                        {
                            case TME_TIPO_INDICADOR_ENUM.Normal:
                                TIPO_NF = "E";
                                break;
                            case TME_TIPO_INDICADOR_ENUM.Devolução:
                                TIPO_NF = "D";
                                break;
                            //case TME_TIPO_INDICADOR_ENUM.Tranferencia:
                            //    TIPO_NF = "T";
                            //    break;
                        }

                        //Busca o Fornecedor
                        var fornecedor = _context.SET_CAD_EF_C_FOR.FirstOrDefault(x => x.ID_FORNECEDOR == ID_EMITENTE);
                        //Se tem Fornecedor e Empresa Informados
                        if(fornecedor != null && empresa != null)
                        {
                            //Se o fornecedor é de outro estado (UF)
                            if(fornecedor.CAD_EF_C_CID.UF != empresa.CAD_EF_C_CID.UF)
                            {
                                //Utiliza a CFOP de PJ Externo
                                ID_CFO = tipoestoque.CFO_EXTERNO_PJ;
                            }
                            //Senão
                            else
                            {
                                //Utiliza a CFOP de PJ Interno
                                ID_CFO = tipoestoque.CFO_INTERNO_PJ;
                            }                            
                        }

                    }
                    //Notas de Saída
                    else
                    {
                        switch (tipoestoque.INDICADOR)
                        {
                            case TME_TIPO_INDICADOR_ENUM.Normal:
                                TIPO_NF = "S";
                                break;
                            case TME_TIPO_INDICADOR_ENUM.Devolução:
                                TIPO_NF = "R";
                                break;
                            //case TME_TIPO_INDICADOR_ENUM.Tranferencia:
                            //    TIPO_NF = "T";
                            //    break;
                        }

                        DTA_EMISSAO = DateTime.Now;

                        //Busca o Cliente da Nota
                        var cliente = _context.SET_CAD_EF_C_CLI.FirstOrDefault(x => x.ID_CLIENTE == ID_EMITENTE);
                        //Se tem Cliente e Empresa informados
                        if(cliente != null && empresa != null)
                        {
                            //Se Cliente for pessoa física
                            if(cliente.PESSOA == PESSOA_ENUM.Física)
                            {
                                //Se o Cliente é de Outro Estado
                                if(cliente.CAD_EF_C_CID.UF != empresa.CAD_EF_C_CID.UF)
                                {
                                    ID_CFO = tipoestoque.CFO_EXTERNO_PF;
                                }
                                //Se cliente for do mesmo estado
                                else
                                {
                                    ID_CFO = tipoestoque.CFO_INTERNO_PF;
                                }
                            }
                            //Se Cliente for pessoa jurídica
                            else
                            {
                                //Se o Cliente é de Outro Estado
                                if(cliente.CAD_EF_C_CID.UF != empresa.CAD_EF_C_CID.UF)
                                {
                                    ID_CFO = tipoestoque.CFO_EXTERNO_PJ;
                                }
                                //Se cliente for do mesmo estado
                                else
                                {
                                    ID_CFO = tipoestoque.CFO_INTERNO_PJ;
                                }
                            }
                        }
                    }
                }
            }            

        }


        [Display(Name = "Estado Emitente")]
        [StringLength(2)]
        public string UF_EMITENTE 
        {
            get { return GetValue(() => UF_EMITENTE); }
            set { SetValue(() => UF_EMITENTE, value); }
        }

        [Display(Name = "Estado Empresa")]
        [StringLength(2)]
        public string UF_EMPRESA 
        {
            get { return GetValue(() => UF_EMPRESA); }
            set { SetValue(() => UF_EMPRESA, value); }
        }

        [Display(Name = "Data Emissão")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Emissão deve ser Informada!")]
        [ValidaDataEmissãoEntradas]
        [ExistNF]
        public DateTime DTA_EMISSAO 
        {
            get { return GetValue(() => DTA_EMISSAO); }
            set { SetValue(() => DTA_EMISSAO, value); }
        }
            
        [Display(Name = "Data Documento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data do documento deve ser Informada!")]
        public DateTime DTA_DOCUMENTO 
        {
            get { return GetValue(() => DTA_DOCUMENTO); }
            set { SetValue(() => DTA_DOCUMENTO, value); }
        }
            
        [Display(Name = "CPF/CNPJ")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string CPF_CNPJ 
        {
            get { return GetValue(() => CPF_CNPJ); }
            set { SetValue(() => CPF_CNPJ, value); }
        }

        [Display(Name = "Número")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        //[NotZero(ErrorMessage = "Número não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Número deve ser informado!")] 
        [ExistNF]
        public int NUMERO 
        {
            get { return GetValue(() => NUMERO); }
            set
            {
                SetValue(() => NUMERO, value);
                IND_EMITENTE = NUMERO == 0 ? IND_EMITENTE_ENUM.Propria : IND_EMITENTE_ENUM.Terceiro;
            }
        }        

        [Display(Name = "Série")]
        [Required(ErrorMessage = "Série deve ser Informado!")]
        [Column(TypeName = "CHAR")]
        [StringLength(3, ErrorMessage = "Série deve ter no mpaximo 3 caracteres")]   
        [ExistNF]
        public string SERIE 
        {
            get { return GetValue(() => SERIE); }
            set { SetValue(() => SERIE, value); }
        }

        [Display(Name = "Sub-Série")]
        [Required(ErrorMessage = "Sub-Série deve ser Informado!")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        public string SUB_SERIE
        {
            get { return GetValue(() => SUB_SERIE); }
            set { SetValue(() => SUB_SERIE, value); }
        }

        [Display(Name = "Modelo")]
        [Required(ErrorMessage = "Modelo deve ser Informado!")]
        [Column(TypeName = "CHAR")]
        [StringLength(2)]
        [ExistNF]        
        public string MODELO 
        {
            get { return GetValue(() => MODELO); }
            set
            {
                SetValue(() => MODELO, value);
                SetNFE_CHAVE();
            }
        }

        private void SetNFE_CHAVE()
        {
            var chave = NFE_CHAVE;
            NFE_CHAVE = chave;
        }
        
        [Display(Name = "Status")]
        [Required(ErrorMessage = "Status deve ser Informado!")]           
        public int STATUS 
        {
            get { return GetValue(() => STATUS); }
            set { SetValue(() => STATUS, value); }
        }

        [Display(Name = "Nota Fiscal ou Cupom Fiscal")]
        public int NFE_ECF
        {
            get { return GetValue(() => NFE_ECF); }
            set { SetValue(() => NFE_ECF, value); }
        }

        [Display(Name = "Pre-Venda para o PAF")]
        public Nullable<int> ECF_PREVENDA
        {
            get { return GetValue(() => ECF_PREVENDA); }
            set { SetValue(() => ECF_PREVENDA, value); }
        }


        [Display(Name = "Cupom fiscal referenciado")]
        public Nullable<int> ID_FISCAL_REFERENCIADO
        {
            get { return GetValue(() => ID_FISCAL_REFERENCIADO); }
            set { SetValue(() => ID_FISCAL_REFERENCIADO, value); }
        }

        [Display(Name = "Motivo de Cancelamento")]
        [StringLength(50)]        
        public string CANC_MOTIVO 
        {
            get { return GetValue(() => CANC_MOTIVO); }
            set { SetValue(() => CANC_MOTIVO, value); }
        }

        [Display(Name = "Usuario que fez o Cancelamento")]
        [StringLength(20)]        
        public string CANC_USUARIO 
        {
            get { return GetValue(() => CANC_USUARIO); }
            set { SetValue(() => CANC_USUARIO, value); }
        }

        [Display(Name = "Data de cancelamento Documento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public Nullable<DateTime> CANC_DATA
        {
            get { return GetValue(() => CANC_DATA); }
            set { SetValue(() => CANC_DATA, value); }
        }

        [Display(Name = "Peso Liquido")]
        public double PESO_LIQUIDO 
        {
            get
            {
                if (FAT_EF_M_NFE_ITE != null)
                {
                    return FAT_EF_M_NFE_ITE.Sum(x => x.PESO_LIQUIDO);
                }
                return 0; //GetValue(() => PESO_LIQUIDO);
            }
            set { SetValue(() => PESO_LIQUIDO, value); }
        }

        [Display(Name = "Peso Liquido")]
        public double PESO_BRUTO 
        {
            get
            {
                if (FAT_EF_M_NFE_ITE != null)
                {
                    return FAT_EF_M_NFE_ITE.Sum(x => x.PESO_BRUTO);
                }

                return 0; // GetValue(() => PESO_BRUTO);
            }
            set { SetValue(() => PESO_BRUTO, value); }
        }
        
        [Display(Name = "Chave")]
        //[Required(ErrorMessage = "Chave deve ser Informado!")]
        [NFEChaveRequired]
        [StringLength(44)]    
        [ValidaChaveNFe]
        public string NFE_CHAVE 
        {
            get { return GetValue(() => NFE_CHAVE); }
            set { SetValue(() => NFE_CHAVE, value); }
        }        
        
        [Display(Name = "Obs.Fisco")]
        [StringLength(800)]           
        public string NFE_OBS 
        {
            get { return GetValue(() => NFE_OBS); }
            set { SetValue(() => NFE_OBS, value); }
        }
        
        [Display(Name = "Protocolo")]
        [StringLength(50)]         
        public string NFE_PROTOCOLO 
        {
            get { return GetValue(() => NFE_PROTOCOLO); }
            set { SetValue(() => NFE_PROTOCOLO, value); }
        }

        [Display(Name = "Numero do Recibo")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string NFE_RECIBO
        {
            get { return GetValue(() => NFE_RECIBO); }
            set { SetValue(() => NFE_RECIBO, value); }
        }

        [Display(Name = "Protocolo de Cancelamento")]
        [StringLength(50)]         
        public string NFE_CANC_PROTOCOLO 
        {
            get { return GetValue(() => NFE_CANC_PROTOCOLO); }
            set { SetValue(() => NFE_CANC_PROTOCOLO, value); }
        }

        [Display(Name = "Status de Cancelamento")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string NFE_CANC_STATUS
        {
            get { return GetValue(() => NFE_CANC_STATUS); }
            set { SetValue(() => NFE_CANC_STATUS, value); }
        }

        [Display(Name = "Tipo de emissão da NFe.")] //1-Normal, 2 Contigencia,3-Scan....
        [StringLength(1)]              
        public string NFE_TIPO_EMISSAO 
        {
            get { return GetValue(() => NFE_TIPO_EMISSAO); }
            set { SetValue(() => NFE_TIPO_EMISSAO, value); }
        }

        [Display(Name = "Tipo ambiente que foi emitido a NFe.")]    //1-Produção, 2 Homologacao
        [StringLength(1)]              
        public string NFE_TIPO_AMBIENTE 
        {
            get { return GetValue(() => NFE_TIPO_AMBIENTE); }
            set { SetValue(() => NFE_TIPO_AMBIENTE, value); }
        }
        
        [Display(Name = "Tipo da NFe.")]  //1-Normal, 2-Complementar, 3-Ajuste
        [StringLength(1)]              
        public string NFE_FINALIDADE 
        {
            get { return GetValue(() => NFE_FINALIDADE); }
            set { SetValue(() => NFE_FINALIDADE, value); }
        }
        
        
        [Display(Name = "Codigo situacao de emissão da NFe")]  
        [StringLength(2)]              
        public string NFE_COD_SIT 
        {
            get { return GetValue(() => NFE_COD_SIT); }
            set { SetValue(() => NFE_COD_SIT, value); }
        }

        [Display(Name = "Indicador de tipo de operação")]  //0-Entrada, 1-Saida
        public IND_OPERACAO_ENUM IND_OPERACAO 
        {
            get { return GetValue(() => IND_OPERACAO); }
            set { SetValue(() => IND_OPERACAO, value); }
        }
     
        [Display(Name = "Indicador do emitente do documento fiscal")]  //0-Emissão Propria, 1-Terceiros
        public IND_EMITENTE_ENUM IND_EMITENTE 
        {
            get { return GetValue(() => IND_EMITENTE); }
            set { SetValue(() => IND_EMITENTE, value); }
        }
        

        [Display(Name = "Indicador do tipo do frete")]  //0-Por conta de terceiros, 1-Por conta do emitente, 2-Por conta do destinatario, 9-Sem cobrança de frete
        public IND_FRETE_ENUM IND_FRETE 
        {
            get { return GetValue(() => IND_FRETE); }
            set { SetValue(() => IND_FRETE, value); }
        }
        
        [Display(Name = "Vlr.Mercadoria")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]  
        public decimal VLR_MERCADORIA 
        {
            get
            {
                if (FAT_EF_M_NFE_ITE != null)
                {
                    return FAT_EF_M_NFE_ITE.Sum(x => x.VLR_MERCADORIA);
                }
                return 0;// GetValue(() => VLR_MERCADORIA);
            }
            set { SetValue(() => VLR_MERCADORIA, value); }
        }

        [Display(Name = "Vlr.Desconto")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> VLR_DESCONTO 
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set { SetValue(() => VLR_DESCONTO, value); }
        }

        [Display(Name = "Vlr.Acrscimo")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> VLR_ACRESCIMO 
        {
            get
            {
                //if (FAT_EF_M_NFE_ITE != null)
                //{
                //    return FAT_EF_M_NFE_ITE.Sum(x => x.vlr) //Falta o Acréscimo no item.
                //}
                return GetValue(() => VLR_ACRESCIMO);
            }
            set { SetValue(() => VLR_ACRESCIMO, value); }
        }

        [Display(Name = "Vlr.Liquido")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Valor não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Valor deve ser informado!")]  
        public decimal VLR_LIQUIDO 
        {
            get
            {
                if (FAT_EF_M_NFE_ITE != null)
                {
                    return FAT_EF_M_NFE_ITE.Sum(x => x.VLR_LIQUIDO);
                }
                return 0; //GetValue(() => VLR_LIQUIDO);
            }
            set { SetValue(() => VLR_LIQUIDO, value); }
        }
        
        [Display(Name = "Vlr. ICMS")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? ICM_N_VALOR 
        {
            get
            {
                if (FAT_EF_M_NFE_ITE != null)
                {
                    return FAT_EF_M_NFE_ITE.Sum(x => x.ICM_N_VALOR);
                }
                return 0; // GetValue(() => ICM_N_VALOR);
            }
            set { SetValue(() => ICM_N_VALOR, value); }
        }
        
        [Display(Name = "Base de ICMS")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? ICM_N_BASE
        {
            get
            {
                if (FAT_EF_M_NFE_ITE != null)
                {
                    return FAT_EF_M_NFE_ITE.Sum(x => x.ICM_N_BASE);
                }
                return 0; // GetValue(() => ICM_N_BASE);
            }
            set { SetValue(() => ICM_N_BASE, value); }
        }

        [Display(Name = "Vlr. ICMS Subs.")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? ICM_S_VALOR 
        {
            get
            {
                if (FAT_EF_M_NFE_ITE != null)
                {
                    return FAT_EF_M_NFE_ITE.Sum(x => x.ICM_S_VALOR);
                }
                return 0; //GetValue(() => ICM_S_VALOR);
            }
            set { SetValue(() => ICM_S_VALOR, value); }
        }

        [Display(Name = "Base ICMS Subs.")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? ICM_S_BASE
        {
            get { return GetValue(() => ICM_S_BASE); }
            set { SetValue(() => ICM_S_BASE, value); }
        }

        [Display(Name = "Vlr.Base IPI")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> IPI_BASE
        {
            get { return GetValue(() => IPI_BASE); }
            set { SetValue(() => IPI_BASE, value); }
        }

        [Display(Name = "Vlr.IPI")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? IPI_VALOR 
        {
            get { return GetValue(() => IPI_VALOR); }
            set { SetValue(() => IPI_VALOR, value); }
        }

        [Display(Name = "Vlr.Base ISS")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> ISS_BASE
        {
            get { return GetValue(() => ISS_BASE); }
            set { SetValue(() => ISS_BASE, value); }
        }

        [Display(Name = "Vlr.ISS")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? ISS_VALOR
        {
            get { return GetValue(() => ISS_VALOR); }
            set { SetValue(() => ISS_VALOR, value); }
        }

        [Display(Name = "Vlr.Base Frete")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> FRE_BASE
        {
            get { return GetValue(() => FRE_BASE); }
            set { SetValue(() => FRE_BASE, value); }
        }


        [Display(Name = "Vlr. do Frete")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? FRE_VALOR 
        {
            get { return GetValue(() => FRE_VALOR); }
            set { SetValue(() => FRE_VALOR, value); }
        }
        
        [Display(Name = "Vlr. do PIS")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? PIS_VALOR          
        {
            get { return GetValue(() => PIS_VALOR); }
            set { SetValue(() => PIS_VALOR, value); }
        }
        
        [Display(Name = "Vlr. do PIS ST")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? PIS_VALOR_ST 
        {
            get { return GetValue(() => PIS_VALOR_ST); }
            set { SetValue(() => PIS_VALOR_ST, value); }
        }

        [Display(Name = "Vlr. do Cofins ST")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? COF_VALOR 
        {
            get { return GetValue(() => COF_VALOR); }
            set { SetValue(() => COF_VALOR, value); }
        }
        
        [Display(Name = "Vlr. do Cofins ST")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? COF_VALOR_ST 
        {
            get { return GetValue(() => COF_VALOR_ST); }
            set { SetValue(() => COF_VALOR_ST, value); }
        }
        
        [Display(Name = "Vlr. Isenta")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? VLR_ISENTA 
        {
            get { return GetValue(() => VLR_ISENTA); }
            set { SetValue(() => VLR_ISENTA, value); }
        }

        [Display(Name = "Vlr. Outras")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? VLR_OUTRAS 
        {
            get { return GetValue(() => VLR_OUTRAS); }
            set { SetValue(() => VLR_OUTRAS, value); }
        }
        
        [Display(Name = "Vlr. Seguro")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public decimal? VLR_SEGURO 
        {
            get { return GetValue(() => VLR_SEGURO); }
            set { SetValue(() => VLR_SEGURO, value); }
        }

        public decimal? VLR_ANTECIPACAO 
        {
            get { return GetValue(() => VLR_ANTECIPACAO); }
            set { SetValue(() => VLR_ANTECIPACAO, value); }
        }
        
        [Display(Name = "Tipo da Nota Fiscal")]  //E-Entrada, S-Saida, R-Devolução de Saida, D-Devolução de Entrada
        [StringLength(1)]
        [ValidaCondPagNF]
        public string TIPO_NF
        {
            get { return GetValue(() => TIPO_NF); }
            set
            {  
                SetValue(() => TIPO_NF, value);                
                OnPropertyChanged("ID_CONDICAO_PAG");
            }
        }

        [Display(Name = "Serial da Impressora")] 
        [StringLength(60)]
        public string ECF_SERIAL_IMPRESSORA
        {
            get { return GetValue(() => ECF_SERIAL_IMPRESSORA); }
            set { SetValue(() => ECF_SERIAL_IMPRESSORA, value); }
        }

        [Display(Name = "Marca da Impressora")]
        [StringLength(50)]
        public string ECF_MARCA_IMPRESSORA
        {
            get { return GetValue(() => ECF_MARCA_IMPRESSORA); }
            set { SetValue(() => ECF_MARCA_IMPRESSORA, value); }
        }

        [Display(Name = "Modelo da Impressora")]
        [StringLength(50)]
        public string ECF_MODELO_IMPRESSORA
        {
            get { return GetValue(() => ECF_MODELO_IMPRESSORA); }
            set { SetValue(() => ECF_MODELO_IMPRESSORA, value); }
        }

        [Display(Name = "Caixa que o Cupom foi emitido")]
        [StringLength(3)]
        public string ECF_CAIXA
        {
            get { return GetValue(() => ECF_CAIXA); }
            set { SetValue(() => ECF_CAIXA, value); }
        }

        public DateTime DTA_MOVIMENTO
        {
            get { return GetValue(() => DTA_MOVIMENTO); }
            set { SetValue(() => DTA_MOVIMENTO, value); }
        }

        //Preciso deste campo para saber a partir de que tela está sendo incluída a NF
        //ENT = Entradas de Estoque
        //SAI = Saídas de Estoque
        public string ORIGEM_NF
        {
            get { return GetValue(() => ORIGEM_NF); }
            set { SetValue(() => ORIGEM_NF, value); }
        }

        public bool FATURADA
        {
            get { return GetValue(() => FATURADA); }
            set { SetValue(() => FATURADA, value); } 
        }

        [Display(Name = "PCP: Situação da Inspeção")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<int> SITUACAO_INSPECAO
        {
            get { return GetValue(() => SITUACAO_INSPECAO); }
            set { SetValue(() => SITUACAO_INSPECAO, value); }
        }

        [Display(Name = "Identificação do Frete")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<int> ID_FISCAL_FRETE
        {
            get { return GetValue(() => ID_FISCAL_FRETE); }
            set { SetValue(() => ID_FISCAL_FRETE, value); }
        }

        [Display(Name = "Numero do pedido de venda")]
        public Nullable<int> ID_PEDIDO_VENDA
        {
            get { return GetValue(() => ID_PEDIDO_VENDA); }
            set { SetValue(() => ID_PEDIDO_VENDA, value); }
        }



        [Display(Name = "Vlr. Outras Desp")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> VLR_OUTRAS_DESP
        {
            get { return GetValue(() => VLR_OUTRAS_DESP); }
            set { SetValue(() => VLR_OUTRAS_DESP, value); }
        }

        [Display(Name = "Vlr. Frete Custo")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> FRE_CUSTO
        {
            get { return GetValue(() => FRE_CUSTO); }
            set { SetValue(() => FRE_CUSTO, value); }
        }

        public Nullable<decimal> IMP_VALOR
        {
            get { return GetValue(() => IMP_VALOR); }
            set { SetValue(() => IMP_VALOR, value); }
        }

        public Nullable<decimal> VLR_ICM_SER_NAO_INCIDE
        {
            get { return GetValue(() => VLR_ICM_SER_NAO_INCIDE); }
            set { SetValue(() => VLR_ICM_SER_NAO_INCIDE, value); }
        }

        [Display(Name = "Base do Cofins")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> COF_BASE
        {
            get { return GetValue(() => COF_BASE); }
            set { SetValue(() => COF_BASE, value); }
        }

        [Display(Name = "Base do Pis")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<decimal> PIS_BASE
        {
            get { return GetValue(() => PIS_BASE); }
            set { SetValue(() => PIS_BASE, value); }
        }

        [Display(Name = "Situação do Documento")]
        [Column(TypeName = "CHAR")]
        [StringLength(2)]
        [Required(ErrorMessage = "Situação deve ser informado!")]
        public string SITUACAO_DOC
        {
            get { return GetValue(() => SITUACAO_DOC); }
            set { SetValue(() => SITUACAO_DOC, value); }
        }

        //Campo com preenchimento na rotina de pos-venda, para identificar se a nota sofreu pos-venda.
        public bool POSVENDA
        {
            get { return GetValue(() => POSVENDA); }
            set { SetValue(() => POSVENDA, value); }
        }


    }
}
