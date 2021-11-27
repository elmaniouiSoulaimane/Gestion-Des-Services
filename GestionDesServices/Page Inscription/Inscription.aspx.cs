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
    public partial class Inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        static string Encrypt(string value)
        {
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data = md5.ComputeHash(utf8.GetBytes(value));
                return Convert.ToBase64String(data);
            }
        }

       




        protected void Button1_Click(object sender, EventArgs e)
        {

         
           


            if (Page.IsValid)
            {
                Connecter cn = new Connecter();


                cn.cmd = new SqlCommand("insert into Clients values ('" + firstName.Text + "','" + lastName.Text + "','" + email.Text + "','" + adresse.Text + "','" + Encrypt(passwordConfirmation.Text) + "'," + 1 + ",'" + phoneNumber.Text + "',"+Age.Text+")", cn.con);
                cn.con.Open();
                int k = cn.cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Response.Write("<script>alert('Vous avez créé votre compte en tant que client avec succès');</script>");

                }
                cn.con.Close();
            }
            else
            {
                Response.Write("<script>alert('Les donnees ne sont pas sauvegarder');</script>");
            }
        }
    }
}