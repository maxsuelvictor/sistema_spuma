using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;

namespace enLoja.Model.PCP.Cadastros
{
     /*
      PCP : CADASTRO DE MODELOS DE ETIQUETAS DA PRODUÇÃO  
      MARIEL : 09/10/2013
    */
    [Table("PCP_TB_C_MET")]
    public class PCP_EF_C_MET : NotifyingObject
    {
        [Key]
        public int ID_MET
        {
            get { return GetValue(() => ID_MET); }
            set { SetValue(() => ID_MET, value); }
        }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(60)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO
        {
            get { return GetValue(() => DESCRICAO); }
            set { SetValue(() => DESCRICAO, value); }
        }

        [Display(Name = "Cod.Documento")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(20)]
        [Required(ErrorMessage = "Campo deve ser informado!")]
        public string COD_DOCUMENTACAO
        {
            get { return GetValue(() => COD_DOCUMENTACAO); }
            set { SetValue(() => COD_DOCUMENTACAO, value); }
        }

        [Display(Name = "Cod.Documento Rev.")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(5)]
        [Required(ErrorMessage = "Campo deve ser informado!")]
        public string COD_DOCUMENTACAO_REV
        {
            get { return GetValue(() => COD_DOCUMENTACAO_REV); }
            set { SetValue(() => COD_DOCUMENTACAO_REV, value); }
        }


        [Display(Name = "Inf.SAC")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string INFORMACAO_SAC
        {
            get { return GetValue(() => INFORMACAO_SAC); }
            set { SetValue(() => INFORMACAO_SAC, value); }
        }

        [Display(Name = "Inf.Contatos")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string INFORMACAO_CONTATOS
        {
            get { return GetValue(() => INFORMACAO_CONTATOS); }
            set { SetValue(() => INFORMACAO_CONTATOS, value); }
        }

        [Display(Name = "Inf.Remoção")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(80)]
        public string INFORMACAO_REMOCAO
        {
            get { return GetValue(() => INFORMACAO_REMOCAO); }
            set { SetValue(() => INFORMACAO_REMOCAO, value); }
        }

        [Display(Name = "Imagem da Etiqueta")]
        public byte[] IMG_ETIQUETA
        {
            get { return GetValue(() => IMG_ETIQUETA); }
            set { SetValue(() => IMG_ETIQUETA, value); }
        }


        [Display(Name = "Texto Livre")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string TEXTO_LIVRE_1
        {
            get { return GetValue(() => TEXTO_LIVRE_1); }
            set { SetValue(() => TEXTO_LIVRE_1, value); }
        }

        [Display(Name = "Texto Livre")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(100)]
        public string TEXTO_LIVRE_2
        {
            get { return GetValue(() => TEXTO_LIVRE_2); }
            set { SetValue(() => TEXTO_LIVRE_2, value); }
        }


    }
}
