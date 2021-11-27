using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace GestionDesServices.Client_inbox
{
    public partial class ClientInbox : System.Web.UI.Page
    {
        Connecter cn = new Connecter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["haha"] = Request.QueryString["Nbtab"].ToString();
            Session["reponse"] = Request.QueryString["reponse"].ToString();
            Response.Write(Session["Reponse"] +" " +Session["pres"]+" "+Session["haha"]
                +"La demande est accepter");
            if (Session["reponse"].ToString() == "Refuser") 
            {
                Connecter cn = new Connecter();
                cn.con.Open();
                cn.cmd = new SqlCommand("delete from services where ID_service =" + int.Parse(Session["haha"].ToString()), cn.con);
                int k = cn.cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Response.Redirect("../Page Anonce Fournisseur/liste.aspx");
                }
            }
            else
            {
                string nb = Session["haha"].ToString();
                Response.Redirect("../Page Anonce Fournisseur/liste.aspx?agree="+nb);
            }
            
            
        }
    }
}