using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Antlr.Runtime;
using Microsoft.Ajax.Utilities;

namespace GestionDesServices.UI.User_Profile
{
    public partial class User_Profile : System.Web.UI.Page
    {
        Connecter cn = new Connecter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                cn.con.Open();
                SqlCommand com = new SqlCommand("select * from Metiers", cn.con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // fill dataset
                DropdownMetier.DataTextField = ds.Tables[0].Columns["nom_metier"].ToString(); // text field name of table dispalyed in dropdown
                DropdownMetier.DataValueField = ds.Tables[0].Columns["ID_metier"].ToString();             // to retrive specific  textfield name 
                DropdownMetier.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                DropdownMetier.DataBind();  //binding dropdownlist
                


                //hiding the message or prompt about the deleting the account
                attempt.Visible = false;

                //hidin metier and prix de service
                metier.Visible = false;
                prix.Visible = false;

                if ((string)Session["Role"] == "prestataire")
                {

                    //showing metier and prix de service
                    metier.Visible = true;
                    prix.Visible = true;


                    //NOM
                    cn.cmd = new SqlCommand("select nom_frn, prenom_frn from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    nom_prenom.InnerText = (string)cn.cmd.ExecuteScalar();


                    //NOM
                    cn.cmd = new SqlCommand("select nom_frn from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    nom.Text = (string)cn.cmd.ExecuteScalar();
                    nom.ReadOnly = true;

                    //PRENOM
                    cn.cmd = new SqlCommand("select prenom_frn from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    prenom.Text = (string)cn.cmd.ExecuteScalar();
                    prenom.ReadOnly = true;

                    //EMAIL
                    cn.cmd = new SqlCommand("select email_frn from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    email.Text = (string)cn.cmd.ExecuteScalar();
                    email.ReadOnly = true;

                    //ADRESS
                    cn.cmd = new SqlCommand("select adr_frn from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    adress.Text = (string)cn.cmd.ExecuteScalar();
                    adress.ReadOnly = true;

                    //NUMERO DE TELEPHONE
                    cn.cmd = new SqlCommand("select numTel_frn from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    tel.Text = Convert.ToString(cn.cmd.ExecuteScalar());
                    tel.ReadOnly = true;

                    //AGE
                    cn.cmd = new SqlCommand("select age_frn from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    age.Text = Convert.ToString(cn.cmd.ExecuteScalar());
                    age.ReadOnly = true;

                    //MOT DE PASSE
                    cn.cmd = new SqlCommand("select mdp_frn from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    mdp.Text = (string)cn.cmd.ExecuteScalar();
                    mdp.ReadOnly = true;

                    //METIER
                    cn.cmd = new SqlCommand("select ID_metier_fk from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    DropdownMetier.SelectedIndex = (Int32)cn.cmd.ExecuteScalar();
                    DropdownMetier.Enabled = false;

                    //PRIX/HEURE
                    cn.cmd = new SqlCommand("select Prix_service from Fournisseurs where ID_frn=" + Session["Identifiant"], cn.con);
                    tbPrix.Text = Convert.ToString(cn.cmd.ExecuteScalar());
                    tbPrix.ReadOnly = true;


                    Enregistrer.Visible = false;
                    Annuler.Visible = false;
                    cn.con.Close();

                }
                else if((string)Session["Role"] == "client")
                {
                    //NOM
                    cn.cmd = new SqlCommand("select nom_clt, prenom_clt from Clients where ID_clt=" + Session["Identifiant"], cn.con);
                    nom_prenom.InnerText = (string)cn.cmd.ExecuteScalar();


                    //NOM
                    cn.cmd = new SqlCommand("select nom_clt from Clients where ID_clt=" + Session["Identifiant"], cn.con);
                    nom.Text = (string)cn.cmd.ExecuteScalar();
                    nom.ReadOnly = true;

                    //PRENOM
                    cn.cmd = new SqlCommand("select prenom_clt from Clients where ID_clt=" + Session["Identifiant"], cn.con);
                    prenom.Text = (string)cn.cmd.ExecuteScalar();
                    prenom.ReadOnly = true;

                    //EMAIL
                    cn.cmd = new SqlCommand("select email_clt from Clients where ID_clt=" + Session["Identifiant"], cn.con);
                    email.Text = (string)cn.cmd.ExecuteScalar();
                    email.ReadOnly = true;

                    //ADRESS
                    cn.cmd = new SqlCommand("select adresse_clt from Clients where ID_clt=" + Session["Identifiant"], cn.con);
                    adress.Text = (string)cn.cmd.ExecuteScalar();
                    adress.ReadOnly = true;

                    //NUMERO DE TELEPHONE
                    cn.cmd = new SqlCommand("select numTel_clt from Clients where ID_clt=" + Session["Identifiant"], cn.con);
                    tel.Text = Convert.ToString(cn.cmd.ExecuteScalar());
                    tel.ReadOnly = true;

                    //AGE
                    cn.cmd = new SqlCommand("select age_clt from Clients where ID_clt=" + Session["Identifiant"], cn.con);
                    age.Text = Convert.ToString(cn.cmd.ExecuteScalar());
                    age.ReadOnly = true;

                    //MOT DE PASSE
                    cn.cmd = new SqlCommand("select mdp_clt from Clients where ID_clt=" + Session["Identifiant"], cn.con);
                    mdp.Text = (string)cn.cmd.ExecuteScalar();
                    mdp.ReadOnly = true;

                    Enregistrer.Visible = false;
                    Annuler.Visible = false;
                    cn.con.Close();
                }

                
            }
            
        }

       
        protected void Unnamed1_Click(object sender, EventArgs e)
        {

            if ((string)Session["Role"] == "prestataire")
            {
                nom.ReadOnly = false;
                prenom.ReadOnly = false;
                email.ReadOnly = false;
                adress.ReadOnly = false;
                tel.ReadOnly = false;
                age.ReadOnly = false;
                mdp.ReadOnly = false;
                tbPrix.ReadOnly = false;
                DropdownMetier.Enabled = true;

            }
            else if ((string)Session["Role"] == "client")
            {
                nom.ReadOnly = false;
                prenom.ReadOnly = false;
                email.ReadOnly = false;
                adress.ReadOnly = false;
                tel.ReadOnly = false;
                age.ReadOnly = false;
                mdp.ReadOnly = false;
            }


                


            modifier.Visible = false;
        

            Enregistrer.Visible = true;
            Annuler.Visible = true;
            Enregistrer.BackColor = System.Drawing.Color.Green;


        }
       
        protected void enregistrer(object sender, EventArgs e)
        {
            cn.con.Open();

            if ((string)Session["Role"] == "prestataire")
            {
                cn.cmd = new SqlCommand("update fournisseurs set nom_frn='" + nom.Text + "', prenom_frn='" + prenom.Text + "', email_frn='" + email.Text + "', adr_frn='" + adress.Text + "', ID_metier_fk='" + (DropdownMetier.SelectedIndex + 1) + "', Prix_service='" + tbPrix.Text + "', mdp_frn='" + mdp.Text + "', numTel_frn=" + Convert.ToInt32(tel.Text) + ", age_frn=" + Convert.ToInt32(age.Text) + " where ID_frn=" + Session["Identifiant"], cn.con);
                cn.cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Les modifications sont enregistrer avec succees');</script>");

                modifier.Visible = true;
                Enregistrer.Visible = false;
                Annuler.Visible = false;

                nom.ReadOnly = true;
                prenom.ReadOnly = true;
                email.ReadOnly = true;
                adress.ReadOnly = true;
                tel.ReadOnly = true;
                age.ReadOnly = true;
                mdp.ReadOnly = true;
                tbPrix.ReadOnly = true;
                DropdownMetier.Enabled = false;


            }
            else if ((string)Session["Role"] == "client")
            {
                cn.cmd = new SqlCommand("update Clients set nom_clt='" + nom.Text + "', prenom_clt='" + prenom.Text + "', email_clt='" + email.Text + "', adresse_clt='" + adress.Text + "', mdp_clt='" + mdp.Text + "', numTel_clt=" + Convert.ToInt32(tel.Text) + ", age_clt=" + Convert.ToInt32(age.Text) + " where ID_clt=" + 4, cn.con);
                cn.cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Les modifications sont enregistrer avec succees');</script>");

                modifier.Visible = true;
                Enregistrer.Visible = false;
                Annuler.Visible = false;

                nom.ReadOnly = true;
                prenom.ReadOnly = true;
                email.ReadOnly = true;
                adress.ReadOnly = true;
                tel.ReadOnly = true;
                age.ReadOnly = true;
                mdp.ReadOnly = true;
            }


            
           
        }

      
        protected void Oui(object sender, EventArgs e)
        {
            cn.cmd = new SqlCommand("delete from Clients where ID_clt=" + 4, cn.con);
            cn.cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Votre compte est supprimer avec succees!');</script>");
            modifier.Visible = true;
        }

        protected void Supprimmer(object sender, EventArgs e)
        {
            modifier.Visible = false;
            Enregistrer.Visible = false;
            attempt.Visible = true;
        }

        protected void Non(object sender, EventArgs e)
        {
            attempt.Visible = false;
            modifier.Visible = true;
        }

        protected void annuler(object sender, EventArgs e)
        {
            nom.ReadOnly = true;
            prenom.ReadOnly = true;
            email.ReadOnly = true;
            adress.ReadOnly = true;
            tel.ReadOnly = true;
            age.ReadOnly = true;
            mdp.ReadOnly = true;
            modifier.Visible = true;
            Enregistrer.Visible = false;
            Annuler.Visible = false;
        }
    }
}