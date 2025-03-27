using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Estoque
{
    //Ficha analitica de produtos - Antiga EST...MOV
    [Table("EST_TB_M_FEA")]
    public class EST_EF_M_FEA : NotifyingObject
    {
        [Key]
        public int ID_FEA
        {
            get { return GetValue(() => ID_FEA); }
            set { SetValue(() => ID_FEA, value); }
        }

        [Display(Name = "Item")]
        [NotZero(ErrorMessage = "Código do Item não deve ser 0 (zero)!")]        
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Display(Name = "Empresa")]
        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Data do Movimento")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        [Required(ErrorMessage = "Data deve ser Informada!")]
        public DateTime DATA 
        {
            get { return GetValue(() => DATA); }
            set { SetValue(() => DATA, value); }
        }

        [Display(Name = "Número")]
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        [NotZero(ErrorMessage = "Número não deve ser 0 (zero)!")]
        [Required(ErrorMessage = "Número deve ser informado!")] 
        public int DOCUMENTO 
        {
            get { return GetValue(() => DOCUMENTO); }
            set { SetValue(() => DOCUMENTO, value); }
        }

        [Display(Name = "Tipo de Estoque")]
        [Required(ErrorMessage = "Tipo de Estoque deve ser Informado!")]
        public int ID_TIPO_ESTOQUE 
        {
            get { return GetValue(() => ID_TIPO_ESTOQUE); }
            set { SetValue(() => ID_TIPO_ESTOQUE, value); }
        }

        [Display(Name = "Nº Fiscal")]
        public Nullable<int> ID_FISCAL 
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        [Display(Name = "Sequencia do produto na nota fiscal")]
        public Nullable<int> SEQ_PRODUTO_NF 
        {
            get { return GetValue(() => SEQ_PRODUTO_NF); }
            set { SetValue(() => SEQ_PRODUTO_NF, value); }
        }


        [Display(Name = "Origem do documento")]
        /*
         0 - Por Nota fiscal de entrada
         1 - Por Nota fiscal de saída
         2 - Por Ordem de saída
         3 - Por almoxarifado - Saída
         4 - Por inventário
         5 - Por almoxarifado - Devolucao        
         */
        public int ORIGEM 
        {
            get { return GetValue(() => ORIGEM); }
            set { SetValue(() => ORIGEM, value); }
        }
        
        public Nullable<int> ID_ALMOXARIFADO 
        {
            get { return GetValue(() => ID_ALMOXARIFADO); }
            set { SetValue(() => ID_ALMOXARIFADO, value); }
        }
        
        public Nullable<int> ID_MAL 
        {
            get { return GetValue(() => ID_MAL); }
            set { SetValue(() => ID_MAL, value); }
        }
        
        public Nullable<int> SEQ_PRODUTO_MAL 
        {
            get { return GetValue(() => SEQ_PRODUTO_MAL); }
            set { SetValue(() => SEQ_PRODUTO_MAL, value); }
        }

        public double QTDE 
        {
            get { return GetValue(() => QTDE); }
            set { SetValue(() => QTDE, value); }
        }

        public double PER_DESCONTO 
        {
            get { return GetValue(() => PER_DESCONTO); }
            set { SetValue(() => PER_DESCONTO, value); }
        }

        public double PER_FRETE 
        {
            get { return GetValue(() => PER_FRETE); }
            set { SetValue(() => PER_FRETE, value); }
        }

        public decimal VLR_DESCONTO 
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set { SetValue(() => VLR_DESCONTO, value); }
        }

        public decimal VLR_FRETE 
        {
            get { return GetValue(() => VLR_FRETE); }
            set { SetValue(() => VLR_FRETE, value); }
        }
        
        public decimal VLR_CUSTO 
        {
            get { return GetValue(() => VLR_CUSTO); }
            set { SetValue(() => VLR_CUSTO, value); }
        }
        
        public decimal VLR_BRUTO 
        {
            get { return GetValue(() => VLR_BRUTO); }
            set { SetValue(() => VLR_BRUTO, value); }
        }
        
        public decimal VLR_MOVIMENTO 
        {
            get { return GetValue(() => VLR_MOVIMENTO); }
            set { SetValue(() => VLR_MOVIMENTO, value); }
        }


    }
}
