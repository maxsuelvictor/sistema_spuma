using System.Linq;

namespace enLoja.Model.Helpers
{
    public static class LimiteCrédito
    {
        static readonly enLojaContext Context = new enLojaContext();
        public static decimal Calcular(int idCliente, decimal limiteInformado)
        {
            //Presumi que STATUS = 0 é em aberto.    
            decimal debitos = 0;
            if(Context.SET_FIN_EF_M_REC.Any(x => x.VLR_ORIGINAL == x.VLR_SALDO && x.ID_CLIENTE == idCliente))
            {
                debitos = Context.SET_FIN_EF_M_REC.Where(x => x.VLR_ORIGINAL == x.VLR_SALDO && x.ID_CLIENTE == idCliente).Sum(x => x.VLR_SALDO);                            
            }
            var resultado = limiteInformado - debitos;
            if (resultado < 0)
                return 0;
            return resultado;
        }               
    }
}
