using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace GestionDesServices
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Methode de cryptage
        static string Encrypt(string value)
        {
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data = md5.ComputeHash(utf8.GetBytes(value));
                return Convert.ToBase64String(data);
            }
        }

        Connecter cn = new Connecter();
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            
            
            string login = inputEmail.Text;
            string password = Encrypt(inputPassword.Text);
            cn.con.Open();
            
            cn.cmd = new SqlCommand("select * from Clients where email_clt ='" + login + "' and mdp_clt ='" + password + "'", cn.con);
            SqlDataReader dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            if (dt.Rows.Count !=0)
            {
                //RECUPERATION DU ID D'UTILISATEUR
                string identifiant = "select ID_clt from Clients where email_clt='" + login + "'";
                SqlCommand cmd4id = new SqlCommand(identifiant, cn.con);
                Session["Identifiant"] = cmd4id.ExecuteScalar();


                //prendre la valeur du nombre de connexion
                int nbr = int.Parse(dt.Rows[0][6].ToString());

                //faire l'incrementation
                int res = nbr + 1;
                string incrementation = "update Clients set nbr_cnx_clt=" + res + " where email_clt='" + login + "'";
                SqlCommand cmd3 = new SqlCommand(incrementation, cn.con);

                //saving changes
                cmd3.ExecuteNonQuery();

                //Envoyer le clent vers la page des service , recuperer son id et donner son role
                Session["Role"] = "client";
                Session["User"] = dt.Rows[0][0].ToString();

                //Response.Redirect("~/Page Services disponibles/ServicesDisponibles.aspx");
                Response.Redirect("~/UI/news feed/News feed.aspx");
            }
            else
            {
                cn.cmd = new SqlCommand("select * from Fournisseurs where email_frn='" + login + "' and mdp_frn ='" + password + "'", cn.con);
                SqlDataReader dr1 = cn.cmd.ExecuteReader();
                DataTable dt1 = new DataTable();
                dt1.Load(dr1);
                if (dt1.Rows.Count != 0)
                {


                    //RECUPERATION DU ID D'UTILISATEUR
                    string identifiant = "select ID_frn from Fournisseurs where email_frn='" + login + "'";
                    SqlCommand cmd4id = new SqlCommand(identifiant, cn.con);
                    Session["Identifiant"] = cmd4id.ExecuteScalar();



                    //prendre la valeur du nombre de connexion
                    int nbr = int.Parse(dt1.Rows[0][6].ToString());

                    //faire l'incrementation
                    int res = nbr + 1;
                    
                    string incrementation = "update Fournisseurs set nbr_cnx_frn=" + res + " where email_frn='" + login + "'";
                    SqlCommand cmd3 = new SqlCommand(incrementation, cn.con);

                    


                    //saving changes
                    cmd3.ExecuteNonQuery();

                    //hello abdelah I don't know what these two lines do !!
                    Session["Role"] = "prestataire";
                    Session["Pres"] = dt1.Rows[0][0].ToString();

                    
                    //Response.Write(Session["Pres"]);

                    //Response.Redirect("../Page Anonce Fournisseur/liste.aspx");
                    Response.Redirect("~/UI/news feed/News feed.aspx");
                }
                else
                {
                    // si le compte login n'exist pas
                    Response.Write("<script>alert('Le Login ou le mot de passe est incorrect');</script>");
                    inputEmail.Text = "";
                    inputPassword.Text = "";
                    inputEmail.Focus();
                }
            }
            
            cn.con.Close();
            
        }
        

    }
}

