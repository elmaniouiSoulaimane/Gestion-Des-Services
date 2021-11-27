using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace GestionDesServices.Page_Anonce_Fournisseur
{
    public partial class liste : System.Web.UI.Page
    {
        Connecter cn = new Connecter();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.con.Open();
            cn.cmd = new SqlCommand("select * from Services where ID_frn_fk =" + Session["Pres"], cn.con);
            SqlDataReader dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            if (dt.Rows.Count!=0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    for (int j = 4; j < dt.Columns.Count; j++)
                    {
                        HtmlGenericControl div = new HtmlGenericControl("div");
                        div.Attributes.Add("class", "card");
                        div.Attributes.CssStyle.Add("margin-bottom", "2%");
                        menu.Controls.Add(div);

                        HtmlGenericControl div1 = new HtmlGenericControl("div");
                        div1.Attributes.Add("class", "row");
                        div.Controls.Add(div1);

                        HtmlGenericControl div2 = new HtmlGenericControl("div");
                        div2.Attributes.Add("class", "col-md-12 px-3");
                        div1.Controls.Add(div2);

                        HtmlGenericControl div3 = new HtmlGenericControl("div");
                        div3.Attributes.Add("class", "card-block px-6");
                        div2.Controls.Add(div3);

                        HtmlGenericControl div4 = new HtmlGenericControl("div");
                        div4.Attributes.Add("class", "card-title");
                        div3.Controls.Add(div4);
                        HtmlGenericControl h2 = new HtmlGenericControl("h2");
                        h2.InnerText = "Annonce : "+(i+1) ;
                        div4.Controls.Add(h2);
                        HtmlGenericControl choix = new HtmlGenericControl("input");
                        choix.Attributes.Add("type", "hidden");
                        string nb = i.ToString();
                        choix.Attributes.Add("value", nb);
                        choix.Attributes.Add("id", "SendA");
                        choix.Attributes.Add("name", "SendA");
                        
                        
                        HtmlGenericControl div5 = new HtmlGenericControl("p");
                        div5.Attributes.Add("class", "card-text");
                        div5.InnerHtml = dt.Rows[i][j].ToString();
                        div4.Controls.Add(div5);

                        HtmlGenericControl div8 = new HtmlGenericControl("br");
                        div5.Controls.Add(div8);
                        

                        HtmlGenericControl div6 = new HtmlGenericControl("a");
                        div6.Attributes.Add("class", "mt-auto btn btn-primary");
                        div6.Attributes.Add("href", "../Client inbox/ClientInbox.aspx?Nbtab="+dt.Rows[int.Parse(nb)][0].ToString()+"&reponse=Accepter");
                        div6.Attributes.Add("OnClick", "accepter()");
                        div6.InnerText = "Accepter";
                        div5.Controls.Add(div6);

                        HtmlGenericControl div7 = new HtmlGenericControl("a");
                        div7.Attributes.Add("class", "mt-auto btn btn-danger");
                        div7.Attributes.Add("OnClick", "refuser()");
                        div7.Attributes.Add("href", "../Client inbox/ClientInbox.aspx?Nbtab="+ dt.Rows[int.Parse(nb)][0].ToString()+ "&reponse=Refuser");
                        div7.InnerText = "Refuser";
                        div5.Controls.Add(div7);
                        //go to hell
                        /*HtmlGenericControl div6 = new HtmlGenericControl("button");
                        div6.Attributes.Add("class", "mt-auto btn btn-primary");
                     
                        div6.Attributes.Add("id", "Accepter");
                        div6.InnerHtml = "Accepter";
                        div6.Attributes.Add("runat", "server");
                        div6.Attributes.Add("OnClick" , "'+accepter(nb)+'");
                        //div7.Attributes.Add("href", "../Client inbox/ClientInbox.aspx?Name=Refuser");
                        //div7.InnerText = "Refuser";
                        div5.Controls.Add(div6);
                        
                        /*HtmlGenericControl div7 = new HtmlGenericControl("button");
                        div7.Attributes.Add("class", "mt-auto btn btn-danger");
                        div7.Attributes.Add("runat", "server");
                        div7.InnerHtml = "Refuser";
                        div7.Attributes.Add("id", "Refuser");
                        //div7.Attributes.Add("href", "../Client inbox/ClientInbox.aspx?Name=Refuser");
                        //div7.InnerText = "Refuser";
                        div7.Attributes.Add("OnClick", "refuser()");

                        /*Button button = new Button();
                        button.Attributes.Add("id", "btn");
                        button.Text = "Send";
                        button.Attributes.Add("name", nb);
                        button.Attributes.Add("OnClick",);
                        div5.Controls.Add(button);
                        div5.Controls.Add(div7);*/

                    }


                }
            }
            
        }
        public void accepter()
        {
            Session["btn1"] = "Accepter";
            Response.Write("accepter la metode");
             
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            
            
            Response.Write("<script>alert('tester testerasdfsadfsdaf');</script>");

        }
    }
}