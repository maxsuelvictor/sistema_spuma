using System.Security.Cryptography;
using System.Text;

namespace enLoja.Model.Helpers
{
    public static class Criptografia
    {
        public static string Criptografar(string expression)
        {
            var md5 = MD5.Create();
            var inputBytes = Encoding.ASCII.GetBytes(expression);
            var hash = md5.ComputeHash(inputBytes);            
            var sb = new StringBuilder();
            foreach (byte t in hash)
            {
                sb.Append(t.ToString("X2"));
            }
            return sb.ToString();
        }        
    }
}
