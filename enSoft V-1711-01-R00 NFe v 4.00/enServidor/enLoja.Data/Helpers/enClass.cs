using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace enLoja.Model.Helpers
{
    class enClass
    {
    }


    //A - ABERTO  >> Para situações em aberto
    //D - Pendente 
    //P - PARCIAL >> Para situação parcial
    //Q - QUITADO >> Para situação de quitado
    //R - RESGATADO >> Para situação que substitui
    //T - TROCA SITUAÇÃO >> Para trocar apenas a situacao




    public class LS_TIPO_CORRENCIA_CHP
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }

    public class LS_ALINEAS
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }


    public class LS_SITUACAO_DOC
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }

    public class LS_MODELO_DOC
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }



    public class LS_ICMS
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }

    public class LS_PIS_COFINS
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }

    public class LS_IPI
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }

    public class LS_ORIGEM_MERCADORIA
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }

    public class FORMULARIOS
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
        public string MENU { get; set; }
        public string MODULO { get; set; }
    }


    public class LS_TIPO_MOV_ESTOQUE
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    
    public class LS_TIPO_ITEM
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox S/N
    public class LS_SIM_NAO
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbSEF_IND_EC 
    public class LS_SEF_IND_EC 
    {
        [Key]
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbSEF_IND_ARQ
    public class LS_SEF_IND_ARQ 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbSEF_IND_ED
    public class LS_SEF_IND_ED 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbSEF_PRF_ICMS
    public class LS_SEF_PRF_ICMS 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbSEF_PRF_ISS
    public class LS_SEF_PRF_ISS 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbIND_REG_CUM
    public class LS_IND_REG_CUM 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbEFC_COD_INC_TRIB
    public class LS_EFC_COD_INC_TRIB
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbEFC_IND_ATIV
    public class LS_EFC_IND_ATIV 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbEFC_IND_NAT_PJ
    public class LS_EFC_IND_NAT_PJ 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbEFC_IND_APRO_CRED
    public class LS_EFC_IND_APRO_CRED 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbEFC_SITUA_ESPECIAL
    public class LS_EFC_SITUA_ESPECIAL
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbEFC_COD_TIPO_CONT
    public class LS_EFC_COD_TIPO_CONT 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion 

    #region CAD_PG_C_PAR - Classe de preenchimento com descrição do combobox cbbEFC_TIPO_ESCRITURACAO
    public class LS_EFC_TIPO_ESCRITURACAO 
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
    }
    #endregion     
   
    #region Estatistica

    public class ESTA_DRE
    {
        [Key]
        public string ID { get; set; }
        public string DESCRICAO { get; set; }
        public decimal MES_01 { get; set; }
        public decimal MES_02 { get; set; }
        public decimal MES_03 { get; set; }
        public decimal MES_04 { get; set; }
        public decimal MES_05 { get; set; }
        public decimal MES_06 { get; set; }
        public decimal MES_07 { get; set; }
        public decimal MES_08 { get; set; }
        public decimal MES_09 { get; set; }
        public decimal MES_10 { get; set; }
        public decimal MES_11 { get; set; }
        public decimal MES_12 { get; set; }
        public decimal TOTAL { get; set; }
    }


    public class ESTA_PONTO_EQUILIBRIO
    {
        [Key]
        public string ID { get; set; }
        public string DESCRICAO { get; set; }
        public decimal MES_01 { get; set; }
        public decimal MES_02 { get; set; }
        public decimal MES_03 { get; set; }
        public decimal MES_04 { get; set; }
        public decimal MES_05 { get; set; }
        public decimal MES_06 { get; set; }
        public decimal MES_07 { get; set; }
        public decimal MES_08 { get; set; }
        public decimal MES_09 { get; set; }
        public decimal MES_10 { get; set; }
        public decimal MES_11 { get; set; }
        public decimal MES_12 { get; set; }
        public decimal TOTAL { get; set; }
        public float VAR_01 { get; set; }
        public float VAR_02 { get; set; }
        public float VAR_03 { get; set; }
        public float VAR_04 { get; set; }
        public float VAR_05 { get; set; }
        public float VAR_06 { get; set; }
        public float VAR_07 { get; set; }
        public float VAR_08 { get; set; }
        public float VAR_09 { get; set; }
        public float VAR_10 { get; set; }
        public float VAR_11 { get; set; }
        public float VAR_12 { get; set; }
        public float VAR_TOTAL { get; set; }
    }


    #endregion     


    #region Consulta - Ficha de Estoque

    public class CSU_FICHA_ESTOQUE
    {
        [Key, Column(Order = 1)]
        public int ID_PRODUTO { get; set; }
        [Key, Column(Order = 2)]
        public DateTime DTA_MOVIMENTO { get; set; }
        [Key, Column(Order = 3)]
        public int ID_EMPRESA { get; set; }
        [Key, Column(Order = 4)]
        public int DOCUMENTO { get; set; }
        [DisplayFormat(ApplyFormatInEditMode = false, DataFormatString = "{0:c}")]
        public Nullable<double> ENT_QTDE { get; set; }
        public Nullable<decimal> ENT_CUSTO { get; set; }
        public Nullable<decimal> ENT_TOTAL { get; set; }
        public Nullable<double> SAI_QTDE { get; set; }
        public Nullable<decimal> SAI_CUSTO { get; set; }
        public Nullable<decimal> SAI_TOTAL { get; set; }
        public Nullable<double> SAL_QTDE { get; set; }
        public Nullable<decimal> SAL_CUSTO { get; set; }
        public Nullable<decimal> SAL_TOTAL { get; set; }
        public Nullable<DateTime> DTA_INVENTARIO { get; set; }
        public Nullable<double> QTDE_INVENTARIO { get; set; }
    }




    #endregion 


}
