using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionDesServices
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            log_out.Visible = false;
           
            try
            {
                if (Session["Role"]==null)
                {
                    
                }
                else if (Session["Role"].Equals("client"))
                {
                    log_out.Visible = true;
                    vers_login.Visible = false;
                    
                }
                else if (Session["Role"].Equals("prestataire"))
                {
                    log_out.Visible = true;
                    vers_login.Visible = false;
                }
            }
            catch (Exception)
            {

                
            }
            
        }

        protected void Logout_click(object sender, EventArgs e)
        {
            Session["Role"] = " ";
            log_out.Visible = false;
            vers_login.Visible = true;
            Session["User"] = " ";
            Session["Pres"] = " ";
            Response.Redirect("../Page Acceuil/Acceuil.aspx");
        }
    }
}