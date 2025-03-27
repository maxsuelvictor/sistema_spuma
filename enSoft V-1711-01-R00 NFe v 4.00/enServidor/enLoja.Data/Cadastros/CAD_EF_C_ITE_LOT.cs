using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_ITE_LOT")]
    public class CAD_EF_C_ITE_LOT : NotifyingObject
    {
        [Display(Name = "Código Item")]
        [Key, Column(Order = 1)]
        public int ID_ITEM
        {
            get { return GetValue(() => ID_ITEM); }
            set { SetValue(() => ID_ITEM, value); }
        }

        [Display(Name = "Numero do Lote")]
        [Key, Column(Order = 2, TypeName = "VARCHAR")]
        [StringLength(15)]
        public string NUM_LOTE 
        {
            get { return GetValue(() => NUM_LOTE); }
            set { SetValue(() => NUM_LOTE, value); }
        }

        [Display(Name = "Empresa")]
        [Key, Column(Order = 3)]
        public int ID_EMPRESA 
        {
            get { return GetValue(() => ID_EMPRESA); }
            set { SetValue(() => ID_EMPRESA, value); }
        }

        [Display(Name = "Almoxarifado")]
        /*
          Este campo não pode ser Foreign key, pois pode ser que o sistema trabalhe sem  almoxarifado.
        */
        public int ID_ALMOXARIFADO 
        {
            get { return GetValue(() => ID_ALMOXARIFADO); }
            set { SetValue(() => ID_ALMOXARIFADO, value); }
        }

        public double QTDE_ENTRADA 
        {
            get { return GetValue(() => QTDE_ENTRADA); }
            set { SetValue(() => QTDE_ENTRADA, value); }
        }

        public double QTDE_SAIDA 
        {
            get { return GetValue(() => QTDE_SAIDA); }
            set { SetValue(() => QTDE_SAIDA, value); }
        }

        public double QTDE_DEVOLUCAO 
        {
            get { return GetValue(() => QTDE_DEVOLUCAO); }
            set { SetValue(() => QTDE_DEVOLUCAO, value); }
        }

        public double QTDE_ATUAL 
        {
            get { return GetValue(() => QTDE_ATUAL); }
            set { SetValue(() => QTDE_ATUAL, value); }
        }

        public int ID_FISCAL 
        {
            get { return GetValue(() => ID_FISCAL); }
            set { SetValue(() => ID_FISCAL, value); }
        }

        public int ID_CONTROLE
        {
            get { return GetValue(() => ID_CONTROLE); }
            set { SetValue(() => ID_CONTROLE, value); }
        }

    }
}
