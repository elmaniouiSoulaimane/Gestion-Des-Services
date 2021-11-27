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

namespace GestionDesServices.Page_Inscription
{
    public partial class InscriptionFournisseur : System.Web.UI.Page
    {
        Connecter cn = new Connecter();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //SqlConnection con = new SqlConnection(@"Data Source=CYBORG\INSTANCE1;Initial catalog=Gestion de Services;Integrated Security=true");

            if (!IsPostBack)
            {
                cn.con.Open();

                SqlCommand com = new SqlCommand("select * from Metiers", cn.con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // fill dataset
                Dropdownlist1.DataTextField = ds.Tables[0].Columns["nom_metier"].ToString(); // text field name of table dispalyed in dropdown
                Dropdownlist1.DataValueField = ds.Tables[0].Columns["ID_metier"].ToString();             // to retrive specific  textfield name 
                Dropdownlist1.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                Dropdownlist1.DataBind();  //binding dropdownlist
                cn.con.Close();
            }
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
                cn.con.Open();
                cn.cmd = new SqlCommand("insert into Fournisseurs values ('" + firstName.Text + "','" + lastName.Text + "','" + email.Text + "','" + adresse.Text + "'," + (Dropdownlist1.SelectedIndex + 1) + "," + 1 + "," + prix.Text + "," + phoneNumber.Text + ",'" + Encrypt(passwordConfirmation.Text) + "'," + Age.Text + ")", cn.con);
                int k = cn.cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Response.Write("<script>alert('Vous avez créé votre compte en tant que Prestataire avec succès ');</script>");
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