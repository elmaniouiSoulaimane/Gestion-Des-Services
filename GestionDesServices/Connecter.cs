using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace GestionDesServices
{
    
    public class Connecter
    {
        //soulaimane = @"Data Source=DELL-PC-SEM\INSTANCE1;Initial catalog=Gestion de Services;Integrated Security=true"
        //abdellah = "Data Source=DESKTOP-O419RR1\MSI_DRAGON;Initial catalog=Gestion de Services;Integrated Security=true"

        public SqlConnection con = new SqlConnection(@"Data Source=DELL-PC-SEM\INSTANCE1;Initial catalog=Gestion de Services;Integrated Security=true");
        public SqlCommand cmd;
        public string clt;
    }
}