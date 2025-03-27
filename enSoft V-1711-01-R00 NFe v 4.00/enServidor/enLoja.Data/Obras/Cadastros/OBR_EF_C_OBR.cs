using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using enLoja.Model.Validações;
using enLoja.Model.Enums;
using enLoja.Model.Cadastros;

namespace enLoja.Model.Obras.Cadastros
{
    /*   
      OBR :Obras  
      Mariel : 26/11/2013
     */
    [Table("OBR_TB_C_OBR")]
    public class OBR_EF_C_OBR : NotifyingObject
    {
        [Key]
        [Display(Name = "Código")]
        public int ID_OBRA{ get; set; }

        [Display(Name = "Descrição")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Descrição deve ser informado!")]
        public string DESCRICAO { get; set; }

        [Display(Name = "Ativo")]
        public bool ATIVO
        {
            get { return GetValue(() => ATIVO); }
            set { SetValue(() => ATIVO, value); }
        }

        [Display(Name = "Endereço")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(50)]
        [Required(ErrorMessage = "Endereço deve ser informado!")]
        public string ENDERECO
        {
            get { return GetValue(() => ENDERECO); }
            set { SetValue(() => ENDERECO, value); }
        }

        [Display(Name = "Cidade")]
        [StringLength(10)]
        [ExistCidade(ErrorMessage = "Cidade não cadastrada")]
        public string ID_CIDADE
        {
            get { return GetValue(() => ID_CIDADE); }
            set { SetValue(() => ID_CIDADE, value); }
        }

        [ForeignKey("ID_CIDADE")]
        public virtual CAD_EF_C_CID CAD_EF_C_CID
        {
            get { return GetValue(() => CAD_EF_C_CID); }
            set { SetValue(() => CAD_EF_C_CID, value); }
        }

        [Display(Name = "CEP")]
        [Column(TypeName = "CHAR")]
        [StringLength(9)]
        public string CEP
        {
            get { return GetValue(() => CEP); }
            set { SetValue(() => CEP, value); }
        }

        [Display(Name = "Telefone")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string TEL_FIXO
        {
            get { return GetValue(() => TEL_FIXO); }
            set { SetValue(() => TEL_FIXO, value); }
        }

        [Display(Name = "FAX")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(14)]
        public string FAX
        {
            get { return GetValue(() => FAX); }
            set { SetValue(() => FAX, value); }
        }

        [Display(Name = "Observação")]
        [Column(TypeName = "VARCHAR")]
        [StringLength(800)]
        public string OBS
        {
            get { return GetValue(() => OBS); }
            set { SetValue(() => OBS, value); }
        }

        [Display(Name = "Data Entrega")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:d}")]
        public DateTime DTA_ENTREGA
        {
            get { return GetValue(() => DTA_ENTREGA); }
            set { SetValue(() => DTA_ENTREGA, value); }
        }

        [Display(Name = "Cliente")]
        public int ID_CLIENTE
        {
            get { return GetValue(() => ID_CLIENTE); }
            set { SetValue(() => ID_CLIENTE, value); }
        }



    }
}
