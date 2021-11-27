using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace GestionDesServices.Page_Service_desire
{
    public partial class ServiceDesire : System.Web.UI.Page
    {
        Connecter cn = new Connecter();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int frn = int.Parse(Request.QueryString["indicefrn"]);
                /*string s = Request.QueryString["service"];
                string d = Request.QueryString["desc"];
                string clt = Request.QueryString["clt"];*/
                string encoded = System.Security.SecurityElement.Escape(Session["description"].ToString());
                cn.con.Open();
                cn.cmd = new SqlCommand("select ID_metier from Fournisseurs JOIN Metiers on Fournisseurs.ID_metier_fk = Metiers.ID_metier where Fournisseurs.ID_frn =" + frn, cn.con);
                string id_metier = cn.cmd.ExecuteScalar().ToString();
                //Response.Write(frn + " " + d + " " + s + "" + clt);
                SqlCommand cmd = new SqlCommand("insert into Services values(" + frn + "," + int.Parse(Session["User"].ToString()) + "," + int.Parse(id_metier) + ",'" + encoded + "')", cn.con);
                cmd.ExecuteNonQuery();
                cn.con.Close();
                Response.Write("<script>alert('votre demande envoyer')</script>");
            }
            catch (Exception)
            {

                
            }
            

        }

        
    }
}