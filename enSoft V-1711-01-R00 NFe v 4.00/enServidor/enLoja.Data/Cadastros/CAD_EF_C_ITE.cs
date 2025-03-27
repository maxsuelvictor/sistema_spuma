using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Compras;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_ITE")]
    public class CAD_EF_C_ITE : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Display(Name = "Ativo")]
        public bool ATIVO
        {
            get { return GetValue(() => ATIVO); }
            set { SetValue(() => ATIVO, value); }
        }

        [Display(Name = "Cardapio")]
        public bool CARDAPIO
        {
            get { return GetValue(() => CARDAPIO); }
            set { SetValue(() => CARDAPIO, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informado.!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Fantasia")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        [Required(ErrorMessage = "Fantasia deve ser informado.!")]
        public string FANTASIA
        {
            get { return GetValue(() => FANTASIA); }
            set { SetValue(() => FANTASIA, value); }
        }

        [Display(Name = "Referência")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string REFERENCIA
        {
            get { return GetValue(() => REFERENCIA); }
            set { SetValue(() => REFERENCIA, value); }
        }

        [Display(Name = "Aplicação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string APLICACAO
        {
            get { return GetValue(() => APLICACAO); }
            set { SetValue(() => APLICACAO, value); }
        }



        [Display(Name = "Fornecedor")]
        [Required(ErrorMessage = "Fornecedor deve ser informado.!")]
        public int ID_FORNECEDOR
        {
            get { return GetValue(() => ID_FORNECEDOR); }
            set { SetValue(() => ID_FORNECEDOR, value); }
        }

        [Display(Name = "Grupo")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Grupo deve ser informado.!")]
        public string ID_GRUPO
        {
            get { return GetValue(() => ID_GRUPO); }
            set { SetValue(() => ID_GRUPO, value); }
        }

        [Display(Name = "Unidade de Compra")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        [Required(ErrorMessage = "Unidade de medida deve ser informado.!")]
        public string ID_UND_COMPRA
        {
            get { return GetValue(() => ID_UND_COMPRA); }
            set { SetValue(() => ID_UND_COMPRA, value); }
        }

        [Display(Name = "Unidade de Venda")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        [Required(ErrorMessage = "Unidade de medida deve ser informado.!")]
        public string ID_UND_VENDA
        {
            get { return GetValue(() => ID_UND_VENDA); }
            set { SetValue(() => ID_UND_VENDA, value); }
        }

        [Display(Name = "Embalagem de Compra")]
        public double EMB_COMPRA
        {
            get { return GetValue(() => EMB_COMPRA); }
            set { SetValue(() => EMB_COMPRA, value); }
        }

        [Display(Name = "Embalagem de Venda")]
        public double EMB_VENDA
        {
            get { return GetValue(() => EMB_VENDA); }
            set { SetValue(() => EMB_VENDA, value); }
        }


        [Display(Name = "Código de Barra")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        public string COD_BARRA
        {
            get { return GetValue(() => COD_BARRA); }
            set { SetValue(() => COD_BARRA, value); }
        }    
        
        [Display(Name = "Código de Fábrica")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        public string COD_FABRICA
        {
            get { return GetValue(() => COD_FABRICA); }
            set { SetValue(() => COD_FABRICA, value); }
        }

        [Display(Name = "Peso Líquido")]
        public double PES_LIQUIDO
        {
            get { return GetValue(() => PES_LIQUIDO); }
            set { SetValue(() => PES_LIQUIDO, value); }
        }    

        [Display(Name = "Peso Bruto")]
        public double PES_BRUTO
        {
            get { return GetValue(() => PES_LIQUIDO); }
            set { SetValue(() => PES_LIQUIDO, value); }
        }

        [Display(Name = "Estoque Mínimo")]
        public double EST_MINIMO
        {
            get { return GetValue(() => EST_MINIMO); }
            set { SetValue(() => EST_MINIMO, value); }
        }

        [Display(Name = "Rua")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(4)]
        public string LOCA_RUA
        {
            get { return GetValue(() => LOCA_RUA); }
            set { SetValue(() => LOCA_RUA, value); }
        }

        [Display(Name = "Prateleira")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(4)]
        public string LOCA_PRATELEIRA
        {
            get { return GetValue(() => LOCA_PRATELEIRA); }
            set { SetValue(() => LOCA_PRATELEIRA, value); }
        }

        [Display(Name = "Escaninho")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(4)]
        public string LOCA_ESCANINHO
        {
            get { return GetValue(() => LOCA_ESCANINHO); }
            set { SetValue(() => LOCA_ESCANINHO, value); }
        }



        public byte[] FOTO
        {
            get { return GetValue(() => FOTO); }
            set { SetValue(() => FOTO, value); }
        }


        //Parte de PCP
        [Display(Name = "Cubagem")]
        public Nullable<decimal> CUBAGEM 
        {
            get { return GetValue(() => CUBAGEM ); }
            set { SetValue(() => CUBAGEM , value); }
        }

        [Display(Name = "Largura")]
        public Nullable<double> TAM_LARGURA 
        {
            get { return GetValue(() => TAM_LARGURA ); }
            set { SetValue(() => TAM_LARGURA , value); }
        }

        [Display(Name = "Comprimento")]
        public Nullable<double> TAM_COMPRIMENTO 
        {
            get { return GetValue(() => TAM_COMPRIMENTO ); }
            set { SetValue(() => TAM_COMPRIMENTO , value); }
        }

        [Display(Name = "Espessura")]
        public Nullable<double> TAM_ESPESSURA 
        {
            get { return GetValue(() => TAM_ESPESSURA ); }
            set { SetValue(() => TAM_ESPESSURA , value); }
        }

        [Display(Name = "Densidade")]
        public Nullable<int> DENSIDADE 
        {
            get { return GetValue(() => DENSIDADE ); }
            set { SetValue(() => DENSIDADE , value); }
        }

        [Display(Name = "Densidade")]
        public Nullable<int> DENSIDADE_2 
        {
            get { return GetValue(() => DENSIDADE_2 ); }
            set { SetValue(() => DENSIDADE_2 , value); }
        }

        [Display(Name = "Densidade")]
        public Nullable<int> DENSIDADE_3 
        {
            get { return GetValue(() => DENSIDADE_3 ); }
            set { SetValue(() => DENSIDADE_3 , value); }
        }

        [Display(Name = "Tipo")]
        /*
         0 - NORMAL 
         1 - TAMPO  - Utilizado pela bordadeira
         2 - FAIXA  - Utilizado pela bordadeira 
         3 - ESPUMA - Utilizado pelo bloco cilindrico          
        */
        public Nullable<int> TIPO 
        {
            get { return GetValue(() => TIPO ); }
            set { SetValue(() => TIPO , value); }
        }

        [Display(Name = "Lote Interno")]
        /*
         Todo produto tem que ter o seu lote_interno que é gerado pelo sistema, isso é devido a rastreabilidade.
         O produto pode ter o seu lote gerado a partir de:  

         0 - Nota fiscal de entrada, 1 - Espumação, 2 - Bordadeira, 3 - Não utiliza         
         */
        public Nullable<int> GERACAO_LOTE_INTERNO 
        {
            get { return GetValue(() => GERACAO_LOTE_INTERNO ); }
            set { SetValue(() => GERACAO_LOTE_INTERNO , value); }
        }

        [Display(Name = "Destino Reclamação")]
        /*
         Este campo será utilizado pela rotina de Atendimento das reclamações do cliente: PCP_FM_M_ACR.         
         0 - Nenhum
         1 - Flocagem
         2 - Descarte
        */
        public Nullable<int> DESTINO_RECLAMADO 
        {
            get { return GetValue(() => DESTINO_RECLAMADO ); }
            set { SetValue(() => DESTINO_RECLAMADO , value); }
        }

        [Display(Name = "Etiqueta: Classificação")]
        /*
         0 - Simples
         1 - Composto
        */
        public Nullable<int> ETIQ_CLASSIFICACAO_PRO 
        {
            get { return GetValue(() => ETIQ_CLASSIFICACAO_PRO ); }
            set { SetValue(() => ETIQ_CLASSIFICACAO_PRO , value); }
        }

        [Display(Name = "Etiqueta: Medida")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(60)]
        public string ETIQ_MEDIDAS 
        {
            get { return GetValue(() => ETIQ_MEDIDAS ); }
            set { SetValue(() => ETIQ_MEDIDAS , value); }
        }

        [Display(Name = "Etiqueta: Madeira")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(60)]
        public string ETIQ_MADEIRA 
        {
            get { return GetValue(() => ETIQ_MADEIRA ); }
            set { SetValue(() => ETIQ_MADEIRA , value); }
        }

        [Display(Name = "Etiqueta: Espuma")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(70)]
        public string ETIQ_ESPUMA1 
        {
            get { return GetValue(() => ETIQ_ESPUMA1 ); }
            set { SetValue(() => ETIQ_ESPUMA1 , value); }
        }

        [Display(Name = "Etiqueta: Espuma")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(70)]
        public string ETIQ_ESPUMA2 
        {
            get { return GetValue(() => ETIQ_ESPUMA2 ); }
            set { SetValue(() => ETIQ_ESPUMA2 , value); }
        }

        [Display(Name = "Etiqueta: Espuma")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(70)]
        public string ETIQ_ESPUMA3 
        {
            get { return GetValue(() => ETIQ_ESPUMA3 ); }
            set { SetValue(() => ETIQ_ESPUMA3 , value); }
        }

        [Display(Name = "Etiqueta: Revestimento")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(70)]
        public string ETIQ_REVESTIMENTO1 
        {
            get { return GetValue(() => ETIQ_REVESTIMENTO1 ); }
            set { SetValue(() => ETIQ_REVESTIMENTO1 , value); }
        }

        [Display(Name = "Etiqueta: Revestimento")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(70)]
        public string ETIQ_REVESTIMENTO2 
        {
            get { return GetValue(() => ETIQ_REVESTIMENTO2 ); }
            set { SetValue(() => ETIQ_REVESTIMENTO2 , value); }
        }

        [Display(Name = "Etiqueta: Revestimento")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(70)]
        public string ETIQ_REVESTIMENTO3 
        {
            get { return GetValue(() => ETIQ_REVESTIMENTO3 ); }
            set { SetValue(() => ETIQ_REVESTIMENTO3 , value); }
        }

        [Display(Name = "Etiqueta: Recomendações")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string ETIQ_RECOMENDACOES_1 
        {
            get { return GetValue(() => ETIQ_RECOMENDACOES_1 ); }
            set { SetValue(() => ETIQ_RECOMENDACOES_1 , value); }
        }

        [Display(Name = "Etiqueta: Recomendações")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string ETIQ_RECOMENDACOES_2 
        {
            get { return GetValue(() => ETIQ_RECOMENDACOES_2 ); }
            set { SetValue(() => ETIQ_RECOMENDACOES_2 , value); }
        }

        [Display(Name = "Etiqueta: Lote Fabricação")]
        /*
         Este campo é utilizado pela tela controle de inspeção e recebimento de produto (EST_FM_M_NFE_S). 
         Isso server para dizer se o campo lote do fabricante é obrigatório.
        */
        public Nullable<int> LOTE_FABRIC_OBRIGATORIO
        {
            get { return GetValue(() => LOTE_FABRIC_OBRIGATORIO); }
            set { SetValue(() => LOTE_FABRIC_OBRIGATORIO, value); }
        }

        [Display(Name = "Código do NCM")]
        [Column(TypeName = "CHAR")]
        [StringLength(10)]
        [Required(ErrorMessage = "Tipo do grupo deve ser informado!")]
        [ExistNcm(ErrorMessage = "NCM não cadastrado!")]
        public string ID_NCM
        {
            get { return GetValue(() => ID_NCM); }
            set { SetValue(() => ID_NCM, value); }
        }

        //FKs

        [ForeignKey("ID_ITEM")]
        public virtual ICollection<CAD_EF_C_ITE_PRE> CAD_EF_C_ITE_PRE
        {
            get { return GetValue(() => CAD_EF_C_ITE_PRE); }
            set { SetValue(() => CAD_EF_C_ITE_PRE, value); }
        }

        [ForeignKey("ID_ITEM")]
        public virtual ICollection<CAD_EF_C_ITE_COM> CAD_EF_C_ITE_COM
        {
            get { return GetValue(() => CAD_EF_C_ITE_COM); }
            set { SetValue(() => CAD_EF_C_ITE_COM, value); }
        }

        [ForeignKey("ID_ITEM")]
        public virtual ICollection<CAD_EF_C_ITE_ESP> CAD_EF_C_ITE_ESP
        {
            get { return GetValue(() => CAD_EF_C_ITE_ESP); }
            set { SetValue(() => CAD_EF_C_ITE_ESP, value); }
        }        
        
        [ForeignKey("ID_GRUPO")]
        public virtual CAD_EF_C_GRU CAD_EF_C_GRU { get; set; }

        [ForeignKey("ID_FORNECEDOR")]
        public virtual CAD_EF_C_FOR CAD_EF_C_FOR { get; set; }

        [ForeignKey("ID_UND_COMPRA")]
        public virtual CAD_EF_C_UND CAD_EF_C_UND_C { get; set; }

        [ForeignKey("ID_UND_VENDA")]
        public virtual CAD_EF_C_UND CAD_EF_C_UND_V { get; set; }


        [ForeignKey("ID_NCM")]
        public virtual CAD_EF_C_NCM CAD_EF_C_NCM { get; set; }

    }
}
