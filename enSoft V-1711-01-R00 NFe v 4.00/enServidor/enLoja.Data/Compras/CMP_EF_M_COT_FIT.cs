using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Compras
{
    [Table("CMP_TB_M_COT_FIT")]
    public class CMP_EF_M_COT_FIT : NotifyingObject
    {
        [Key, Column(Order = 1)]
        public int ID_COTACAO 
        {
            get { return GetValue(() => ID_COTACAO ); }
            set { SetValue(() => ID_COTACAO , value); }
        }

        [Key, Column(Order = 2)]
        public int ID_FORNECEDOR 
        {
            get { return GetValue(() => ID_FORNECEDOR); }
            set { SetValue(() => ID_FORNECEDOR, value); }
        }
        
        [Key, Column(Order = 3)]
        public int ID_PRODUTO 
        {
            get { return GetValue(() => ID_PRODUTO); }
            set { SetValue(() => ID_PRODUTO, value); }
        }
        
        public double QTDE 
        {
            get { return GetValue(() => ID_PRODUTO); }
            set { SetValue(() => ID_PRODUTO, value); }
        }
            
        public decimal VLR_UNITARIO 
        {
            get { return GetValue(() => VLR_UNITARIO); }
            set { SetValue(() => VLR_UNITARIO, value); }
        }

        public Nullable<double> PER_DESCONTO 
        {
            get { return GetValue(() => PER_DESCONTO); }
            set { SetValue(() => PER_DESCONTO, value); }
        }
        
            
        public Nullable<decimal> VLR_DESCONTO 
        {
            get { return GetValue(() => VLR_DESCONTO); }
            set { SetValue(() => VLR_DESCONTO, value); }
        }
        public decimal VLR_TOTAL 
        {
            get { return GetValue(() => VLR_TOTAL); }
            set { SetValue(() => VLR_TOTAL, value); }
        }
        public int FRETE 
        {
            get { return GetValue(() => FRETE); }
            set { SetValue(() => FRETE, value); }
        }
        public int PRAZO 
        {
            get { return GetValue(() => PRAZO); }
            set { SetValue(() => PRAZO, value); }
        }

        public bool DISPONIBILIDADE 
        {
            get { return GetValue(() => DISPONIBILIDADE); }
            set { SetValue(() => DISPONIBILIDADE, value); }
        }


        public Nullable<decimal> VLR_FRETE 
        {
            get { return GetValue(() => VLR_FRETE); }
            set { SetValue(() => VLR_FRETE, value); }
        }

        public Nullable<decimal> VLR_IPI 
        {
            get { return GetValue(() => VLR_IPI); }
            set { SetValue(() => VLR_IPI, value); }
        }

        public bool APROVADO
        {
            get { return GetValue(() => APROVADO); }
            set { SetValue(() => APROVADO, value); }
        }

        //FKs

        public virtual CMP_EF_M_COT_FOR CMP_EF_M_COT_FOR { get; set; }

    }
}
