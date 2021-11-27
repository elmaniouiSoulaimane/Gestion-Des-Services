using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GestionDesServices.UI.Services_dispo.Fomrulaire_de_demande
{
    public partial class Form : System.Web.UI.Page
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
                DropDownList3.DataTextField = ds.Tables[0].Columns["nom_metier"].ToString(); // text field name of table dispalyed in dropdown
                DropDownList3.DataValueField = ds.Tables[0].Columns["ID_metier"].ToString();             // to retrive specific  textfield name 
                DropDownList3.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                DropDownList3.DataBind();  //binding dropdownlist
                cn.con.Close();

                DropDownList3.SelectedIndex = int.Parse(Request.QueryString["Name"]);

                //DropDownList3.Items.Insert(0, new ListItem("selecter Un Service", ""));
            }

            

        }

        protected void Step_Click(object sender, EventArgs e)
        {
            /*if (DropDownList3.SelectedIndex == 0)
            {
                Response.Write("<script> alert('selecter une service; ')</script>");
            }
            else
            {*/
            string Service = DropDownList3.SelectedItem.Text;



            string desc = textblock2.InnerText;

            string daterendevous;
            daterendevous = TextBox3.Text;

            Session["service"] = Service;
            Session["description"] = desc;
            Session["rendevous"] = daterendevous;
            Response.Redirect("~/Page List des fournisseurs/List des fournisseurs.aspx");
            // }



        }
    }
}