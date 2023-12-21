using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class MarcasDAO
    {
        internal static List<Marca> ListarMarcas()
        {
            List<Marca> marcas = null;
            try
            {
                using (var ctx = new CarDBEntities())
                {
                    marcas = ctx.Marcas.OrderBy(x => x.Descricao).ToList();
                }
            }
            catch (Exception ex)
            {
            }
            return marcas;
        }
    }
}