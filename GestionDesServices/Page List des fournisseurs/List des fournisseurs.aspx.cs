using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using GestionDesServices.Page_Demande_Service.Baby_Siter;
namespace GestionDesServices.Page_List_des_fournisseurs
{
    public partial class List_des_fournisseurs : System.Web.UI.Page
    {
        Connecter cn = new Connecter();
        public int service;

        protected void Page_Load(object sender, EventArgs e)
        {
            //int id_frn = int.Parse(Session["pres"].ToString());
            /*string s = Request.QueryString["Name"];
            string d = Request.QueryString["desc"];
            string clt = Request.QueryString["clt"];
            Response.Write( d + " " + s + "" + clt);*/
            try
            {
               cn.con.Open();
                cn.cmd = new SqlCommand("select f.ID_frn , f.nom_frn , f.prenom_frn , f.email_frn , f.adr_frn , f.Prix_service , f.numTel_frn   from Fournisseurs f JOIN Metiers m on f.ID_metier_fk = m.ID_metier where m.nom_metier = '" + Session["service"].ToString() + "'", cn.con);
                SqlDataReader dr = cn.cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);

                dt.Columns[1].ColumnName = "Nom";
                dt.Columns[2].ColumnName = "Prenom";
                dt.Columns[3].ColumnName = "Email";
                dt.Columns[4].ColumnName = "Adresse";
                dt.Columns[6].ColumnName = "Prix en DH";
                dt.Columns[6].ColumnName = "Tel";


                int i, j;
                /*for (i = 0; i < dt.Rows.Count; i++)
                {
                    HtmlGenericControl div = new HtmlGenericControl("div");
                    div.Attributes.Add("class", "span12");
                    menu1.Controls.Add(div);
                    HtmlGenericControl ul = new HtmlGenericControl("ul");
                    ul.Attributes.Add("class", "thumbnails");
                    div.Controls.Add(ul);
                    HtmlGenericControl li = new HtmlGenericControl("li");
                    li.Attributes.Add("class", "span5 clearfix");
                    ul.Controls.Add(li);
                    HtmlGenericControl div2 = new HtmlGenericControl("div");
                    div2.Attributes.Add("class", "thumbnail clearfix");
                    li.Controls.Add(div2);
                    HtmlGenericControl div3 = new HtmlGenericControl("div");
                    div3.Attributes.Add("class", "caption");
                    div2.Controls.Add(div3);
                    /*HtmlGenericControl img = new HtmlGenericControl("img");
                    img.Attributes.Add("src", "Images/Deidara.jpg");
                    img.Attributes.Add("class", "pull-left span2 clearfix");
                    img.Attributes.CssStyle.Add("margin-right", "10px");
                    div3.Controls.Add(img);*/
                /* HtmlGenericControl img = new HtmlGenericControl("img");
                 div3.Controls.Add(img);
                 HtmlGenericControl div4 = new HtmlGenericControl("div");
                 div4.Attributes.Add("class", "caption");
                 div3.Controls.Add(div4);*/

                /*HtmlGenericControl a = new HtmlGenericControl("a");
                a.Attributes.Add("class", "btn btn-primary icon  pull-right");
                string indicefrn = i.ToString();
                a.Attributes.Add("id",indicefrn);
                a.InnerText = "Select";
                a.Attributes.Add("href", "../Page Service desire/ServiceDesire.aspx?indicefrn="+indicefrn);*/
                /*HtmlGenericControl a = new HtmlGenericControl("a");



                for (j = 1; j < dt.Columns.Count; j++)
                {

                    a.Attributes.Add("class", "btn btn-primary icon  pull-right");
                    string indicefrn = dt.Rows[i][0].ToString();
                    a.Attributes.Add("id", indicefrn);
                    a.InnerText = "Select";
                    a.Attributes.Add("href", "../Page Service desire/ServiceDesire.aspx?indicefrn=" + indicefrn);

                    img.Attributes.Add("src", "Images/Deidara.jpg");
                    img.Attributes.Add("class", "pull-left span2 clearfix");
                    img.Attributes.CssStyle.Add("margin-right", "10px");

                    HtmlGenericControl pn = new HtmlGenericControl("p");
                    pn.InnerText = dt.Columns[j].ToString() + " : " + dt.Rows[i][j].ToString();
                    div4.Controls.Add(pn);

                }
                div4.Controls.Add(a);
            }*/


                /*HtmlGenericControl img = new HtmlGenericControl("img");
                img.Attributes.Add("src", "Images/Deidara.jpg");
                img.Attributes.Add("class", "pull-left span2 clearfix");
                img.Attributes.CssStyle.Add("margin-right", "10px");
                div3.Controls.Add(img);*/
                /* HtmlGenericControl img = new HtmlGenericControl("img");
                 div3.Controls.Add(img);
                 HtmlGenericControl div4 = new HtmlGenericControl("div");
                 div4.Attributes.Add("class", "caption");
                 div3.Controls.Add(div4);*/

                /*HtmlGenericControl a = new HtmlGenericControl("a");
                a.Attributes.Add("class", "btn btn-primary icon  pull-right");
                string indicefrn = i.ToString();
                a.Attributes.Add("id",indicefrn);
                a.InnerText = "Select";
                a.Attributes.Add("href", "../Page Service desire/ServiceDesire.aspx?indicefrn="+indicefrn);*/
                /*HtmlGenericControl a = new HtmlGenericControl("a");



                for (j = 1; j < dt.Columns.Count; j++)
                {

                    a.Attributes.Add("class", "btn btn-primary icon  pull-right");
                    string indicefrn = dt.Rows[i][0].ToString();
                    a.Attributes.Add("id", indicefrn);
                    a.InnerText = "Select";
                    a.Attributes.Add("href", "../Page Service desire/ServiceDesire.aspx?indicefrn=" + indicefrn);

                    img.Attributes.Add("src", "Images/Deidara.jpg");
                    img.Attributes.Add("class", "pull-left span2 clearfix");
                    img.Attributes.CssStyle.Add("margin-right", "10px");

                    HtmlGenericControl pn = new HtmlGenericControl("p");
                    pn.InnerText = dt.Columns[j].ToString() + " : " + dt.Rows[i][j].ToString();
                    div4.Controls.Add(pn);

                }
                div4.Controls.Add(a);
            }
            }
            catch (Exception)
            {


            }*/
                for (i = 0; i < dt.Rows.Count; i++)
                {
                    HtmlGenericControl div = new HtmlGenericControl("div");
                    div.Attributes.Add("class", "col-sm-6 col-md-4 col-lg-3 mt-4");
                    menu1.Controls.Add(div);
                    HtmlGenericControl div2 = new HtmlGenericControl("div");
                    div2.Attributes.Add("class", "card");
                    div.Controls.Add(div2);
                    HtmlGenericControl img = new HtmlGenericControl("img");
                    HtmlGenericControl div3 = new HtmlGenericControl("div");
                    HtmlGenericControl div4 = new HtmlGenericControl("div");
                    
                    HtmlGenericControl div5 = new HtmlGenericControl("div");
                    HtmlGenericControl small = new HtmlGenericControl("small");
                    HtmlGenericControl a = new HtmlGenericControl("a");
                    for (j = 1; j < dt.Columns.Count; j++)
                    {
                        HtmlGenericControl p = new HtmlGenericControl("p");
                        img.Attributes.Add("class", "card-img-top");
                        img.Attributes.Add("src", "https://picsum.photos/200/150/?random");
                        div2.Controls.Add(img);
                        
                        div3.Attributes.Add("class", "card-block");
                        img.Controls.Add(div3);
               
                        
                        div4.Attributes.Add("class", "card-text");
                        div3.Controls.Add(div4);
                        
                        p.InnerText = dt.Columns[j].ToString() + " : " + dt.Rows[i][j].ToString();
                        div4.Controls.Add(p);
                        
                        div5.Attributes.Add("class", "card-footer");
                        div3.Controls.Add(div5);
                        
                        small.InnerText = "Choisir Votre Prestataire";
                        div5.Controls.Add(small);
                        
                        a.Attributes.Add("class", "btn btn-danger float-right btn-sm");
                        string indicefrn = i.ToString();
                        a.Attributes.Add("id", indicefrn);
                        a.InnerText = "Select";
                        a.Attributes.Add("href", "../Page Service desire/ServiceDesire.aspx?indicefrn=" +dt.Rows[int.Parse(indicefrn)][0].ToString() );
                        div5.Controls.Add(a);
                    }
                    
                }            
                


                /*int i, j;
                for ( i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        ListItem li = new ListItem();
                        li.Text = dt.Rows[i][j].ToString() + " " + dt.Rows[i][j].ToString();

                        //Adresse.InnerHtml = dt.Rows[i][j].ToString();

                           //text name goes i.e. here tab1
                        blTabs.Items.Add(li);
                    }

                }*/


            


            }
            catch (Exception)
            {

            }
        }
    }
}