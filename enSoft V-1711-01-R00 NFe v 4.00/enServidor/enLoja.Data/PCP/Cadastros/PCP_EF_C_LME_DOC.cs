using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
//using System.Data.Linq.Mapping;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Cadastros
{
    [Table("PCP_TB_C_LME_DOC")]
    public class PCP_EF_C_LME_DOC : NotifyingObject
    {
        [Key, Column(Order = 1)]        
        public int ID_LME 
        {
            get { return GetValue(() => ID_LME); }
            set { SetValue(() => ID_LME, value); }
        }

        [Key, Column(Order = 2)]        
        public int ID_LME_D 
        {
            get { return GetValue(() => ID_LME_D); }
            set { SetValue(() => ID_LME_D, value); }
        }

        [Display(Name = "PCP:TLM.")]
        [Required(ErrorMessage = "TLM deve ser informado!")]
        public int ID_TLM 
        {
            get { return GetValue(() => ID_TLM); }
            set { SetValue(() => ID_TLM, value); }
        }

        [Display(Name = "PCP:Origem.")]
        [Required(ErrorMessage = "Origem deve ser informado!")]
        public int ORIGEM 
        {
            get { return GetValue(() => ORIGEM); }
            set { SetValue(() => ORIGEM, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        [StringLength(100)]
        public string DESCRICAO 
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Código da ISO")]
        //Este código refere-se ao código da ISO.
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Código deve ser informado!")]
        [StringLength(20)]
        public string CODIGO 
        {
            get { return GetValue(() => CODIGO); }
            set { SetValue(() => CODIGO, value); }
        }

        [Display(Name = "Revisão")]
        [Column(TypeName = "VARCHAR")]
        [Required(ErrorMessage = "Revisão deve ser informado!")]
        [StringLength(5)]
        public string REVISAO 
        {
            get { return GetValue(() => REVISAO); }
            set { SetValue(() => REVISAO, value); }
        }

        [Display(Name = "Data Aprovação")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DATA_APROVACAO 
        {
            get { return GetValue(() => DATA_APROVACAO); }
            set { SetValue(() => DATA_APROVACAO, value); }
        }

        [Display(Name = "PCP:Distribuição")]
        //0 - Administração, 1 - Produção, 2 - Qualidade
        [Required(ErrorMessage = "Distribuição deve ser informado!")]
        public int DISTRIBUICAO 
        {
            get { return GetValue(() => DISTRIBUICAO); }
            set { SetValue(() => DISTRIBUICAO, value); }
        }

        [Display(Name = "PCP:Tipo Distribuição")]
        //0 - Físico, 1 - Informatizado
        [Required(ErrorMessage = "Tipo Distribuição deve ser informado!")]
        public int DISTRIBUICAO_TIPO 
        {
            get { return GetValue(() => DISTRIBUICAO_TIPO); }
            set { SetValue(() => DISTRIBUICAO_TIPO, value); }
        }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string OBSERVACAO 
        {
            get { return GetValue(() => OBSERVACAO); }
            set { SetValue(() => OBSERVACAO, value); }
        }

        //Fk's
        [ForeignKey("ID_LME")]
        public virtual PCP_EF_C_LME PCP_EF_C_LME { get; set; }

        [ForeignKey("ID_LME_D")]
        public virtual ICollection<PCP_EF_C_LME_DPG> PCP_EF_C_LME_DP { get; set; }

        [ForeignKey("ID_LME_D")]
        public virtual ICollection<PCP_EF_C_LME_DRV> PCP_EF_C_LME_DV { get; set; }

        [ForeignKey("ID_LME_D")]
        public virtual ICollection<PCP_EF_C_LME_DRP> PCP_EF_C_LME_DR { get; set; }

        [ForeignKey("ID_TLM")]
        public virtual PCP_EF_C_TLM PCP_EF_C_TLM { get; set; }  

    }
}
