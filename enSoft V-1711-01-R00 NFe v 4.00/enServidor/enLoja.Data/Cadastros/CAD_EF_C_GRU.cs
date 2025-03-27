using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;


namespace enLoja.Model.Cadastros
{
    [Table("CAD_TB_C_GRU")]
    public class CAD_EF_C_GRU : NotifyingObject
    {
        [Key]
        [Display(Name = "Grupo")]
        [Column(TypeName = "CHAR")]
        [StringLength(11)]
        [Required(ErrorMessage = "Código do Grupo deve ser informado!")]                
        [ValidIdGrupo]
        [UniqueGrupo]
        public string ID_GRUPO
        {
            get { return GetValue(() => ID_GRUPO); }
            set { SetValue(() => ID_GRUPO, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(30)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Origem da Mercadoria")]
        [Column(TypeName = "CHAR")]
        [StringLength(1)]
        [Required(ErrorMessage = "Origem deve ser informado!")]
        public string ORIGEM_MERCADORIA
        {
            get { return GetValue(() => ORIGEM_MERCADORIA); }
            set { SetValue(() => ORIGEM_MERCADORIA, value); }
        }

        [Display(Name = "Tipo")]
        [Required(ErrorMessage = "Tipo do grupo deve ser informado!")]
        public NATUREZA_CONTA_ENUM TIPO
        {
            get { return GetValue(() => TIPO); }
            set { SetValue(() => TIPO, value); }
        }

        [Display(Name = "Nivel do Grupo")]
        [Required(ErrorMessage = "Nivel deve ser informado!")]
        public int NIVEL
        {
            get { return GetValue(() => NIVEL); }
            set { SetValue(() => NIVEL, value); }
        }

        [Display(Name = "Tipo do Item")]
        [Column(TypeName = "CHAR")]
        [Required(ErrorMessage = "Tipo do item deve ser informado!")]
        [StringLength(2)]
        public string TIPO_ITEM 
        {
            get { return GetValue(() => TIPO_ITEM); }
            set { SetValue(() => TIPO_ITEM, value); }
        }
     
        [Display(Name = "Tributo")]
        [Required(ErrorMessage = "Tributo deve ser informado!")]
        [ExistTributo(ErrorMessage = "Tributo não cadastrado!")]
        public int ID_TRIBUTO
        {
            get { return GetValue(() => ID_TRIBUTO); }
            set { SetValue(() => ID_TRIBUTO, value); }
        }

        [Display(Name = "MVA")]
        [Required(ErrorMessage = "MVA deve ser informado!")]
        public int MVA
        {
            get { return GetValue(() => MVA); }
            set { SetValue(() => MVA, value); }
        }

        [Display(Name = "Ativa Promoção")]
        [Required(ErrorMessage = "Ativa promoção deve ser informado!")]
        public bool PROMO_ATIVA
        {
            get { return GetValue(() => PROMO_ATIVA); }
            set { SetValue(() => PROMO_ATIVA, value); }
        }
        
        [Display(Name = "% Promoção")]
        public double PROMO_PERC
        {
            get { return GetValue(() => PROMO_PERC); }
            set { SetValue(() => PROMO_PERC, value); }
        }

        [Display(Name = "Alíquota Interna ICMS")]
        [Required(ErrorMessage = "Alíquota deve ser informado!")]
        public double ALI_INTERNA_ICMS
        {
            get { return GetValue(() => ALI_INTERNA_ICMS); }
            set { SetValue(() => ALI_INTERNA_ICMS, value); }
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID
        {
            get { return GetValue(() => ID); }
            set { SetValue(() => ID, value); }
        }


        [Display(Name = "CST PIS")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        [Required(ErrorMessage = "CST PIS deve ser informado!")]
        public string ID_ST_PIS_ENTRADA
        {
            get { return GetValue(() => ID_ST_PIS_ENTRADA); }
            set { SetValue(() => ID_ST_PIS_ENTRADA, value); }
        }

        [Display(Name = "CST COFINS")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        [Required(ErrorMessage = "CST COFINS deve ser informado!")]
        public string ID_ST_COF_ENTRADA
        {
            get { return GetValue(() => ID_ST_COF_ENTRADA); }
            set { SetValue(() => ID_ST_COF_ENTRADA, value); }
        }

        [Display(Name = "CST IPI")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        [Required(ErrorMessage = "CST IPI deve ser informado!")]
        public string ID_ST_IPI_ENTRADA
        {
            get { return GetValue(() => ID_ST_IPI_ENTRADA); }
            set { SetValue(() => ID_ST_IPI_ENTRADA, value); }
        }

        [Display(Name = "CST PIS SAIDA")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        [Required(ErrorMessage = "CST PIS deve ser informado!")]
        public string ID_ST_PIS_SAIDA
        {
            get { return GetValue(() => ID_ST_PIS_SAIDA); }
            set { SetValue(() => ID_ST_PIS_SAIDA, value); }
        }

        [Display(Name = "CST COFINS SAIDA")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        [Required(ErrorMessage = "CST COFINS deve ser informado!")]
        public string ID_ST_COF_SAIDA
        {
            get { return GetValue(() => ID_ST_COF_SAIDA); }
            set { SetValue(() => ID_ST_COF_SAIDA, value); }
        }

        [Display(Name = "CST IPI SAIDA")]
        [Column(TypeName = "CHAR")]
        [StringLength(3)]
        [Required(ErrorMessage = "CST IPI deve ser informado!")]
        public string ID_ST_IPI_SAIDA
        {
            get { return GetValue(() => ID_ST_IPI_SAIDA); }
            set { SetValue(() => ID_ST_IPI_SAIDA, value); }
        }

        //FKs

        [ForeignKey("ID_TRIBUTO")]
        public virtual CAD_EF_C_TRI CAD_EF_C_TRI { get; set; }

    }
}
