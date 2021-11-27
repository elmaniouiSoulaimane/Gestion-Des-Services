using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GestionDesServices.UI.Demandes
{
    public partial class Demandes : System.Web.UI.Page
    {
        Connecter cn = new Connecter();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.con.Open();
            cn.cmd = new SqlCommand("select * from Services where ID_frn_fk="+Session["Identifiant"], cn.con);
            SqlDataReader dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            if (dt.Rows.Count != 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    HtmlGenericControl Annonce = new HtmlGenericControl("div");
                    Annonce.Attributes.Add("class", "item_wrap");
                    menu.Controls.Add(Annonce);

                    //UPPER SECTION
                    HtmlGenericControl UpperSection = new HtmlGenericControl("div");
                    UpperSection.Attributes.Add("class", "Upper");
                    Annonce.Controls.Add(UpperSection);

                    //Numero de service
                    HtmlGenericControl DivNumeroService = new HtmlGenericControl("div");
                    DivNumeroService.Attributes.Add("class", "NumeroService");
                    UpperSection.Controls.Add(DivNumeroService);

                    //Date de Publication
                    HtmlGenericControl DivDate = new HtmlGenericControl("div");
                    DivDate.Attributes.Add("class", "Date");
                    UpperSection.Controls.Add(DivDate);


                    //MIDDLE SECTION
                    HtmlGenericControl MiddleSection = new HtmlGenericControl("div");
                    MiddleSection.Attributes.Add("class", "Middle");
                    Annonce.Controls.Add(MiddleSection);

                    //Paragraphe
                    HtmlGenericControl Paragraphe = new HtmlGenericControl("p");
                    Paragraphe.Attributes.Add("class", "paragraphe");
                    MiddleSection.Controls.Add(Paragraphe);

                    //
                    HtmlGenericControl SpanFRN = new HtmlGenericControl("span");
                    SpanFRN.Attributes.Add("class", "FRN");
                    Paragraphe.Controls.Add(SpanFRN);

                    //
                    HtmlGenericControl SpanCLT = new HtmlGenericControl("span");
                    SpanCLT.Attributes.Add("class", "CLT");
                    Paragraphe.Controls.Add(SpanCLT);



                    //BOTTOM SECTION
                    HtmlGenericControl BottomSection = new HtmlGenericControl("div");
                    BottomSection.Attributes.Add("class", "Bottom");
                    Annonce.Controls.Add(BottomSection);

                    HtmlGenericControl Desc = new HtmlGenericControl("p");
                    Desc.Attributes.Add("class", "Desc");
                    BottomSection.Controls.Add(Desc);

                    HtmlGenericControl Domaine = new HtmlGenericControl("span");
                    Domaine.Attributes.Add("class", "Domaine");
                    BottomSection.Controls.Add(Domaine);

                    for (int j = 0; j < dt.Columns.Count; j++)
                    {
                        if (j == 0)                               //SECTION NUMERO DE SERVICE
                        {
                            //AFFICHAGE
                            DivNumeroService.InnerText += "Numero de Service : " + dt.Rows[i][j].ToString() + "\n";



                        }


                        //else if (j == 1)                          //SECTION DES INFORMATIONS DE PRESTATAIRE
                        //{
                        //    //RECUPERATION DU NOM DE PRESTATAIRE
                        //    string nomFournisseur = "select nom_frn from Fournisseurs where ID_frn=" + dt.Rows[i][j].ToString();
                        //    SqlCommand cmdNF = new SqlCommand(nomFournisseur, cn.con);


                        //    //RECUPERATION DU PRENOM DU PRESTATAIRE
                        //    string prenomFournisseur = "select nom_frn from Fournisseurs where ID_frn=" + dt.Rows[i][j].ToString();
                        //    SqlCommand cmdPF = new SqlCommand(nomFournisseur, cn.con);


                        //    //AFFICHAGE
                        //    SpanFRN.InnerText += cmdNF.ExecuteScalar() + "\n" + cmdPF.ExecuteScalar() + "\n a accepter la demande de service de ";



                        //}


                        else if (j == 2)                        //SECTION DES INFORMATIONS DE CLIENT
                        {
                            //RECUPERATION DU NOM DU CLIENT
                            string nomClient = "select nom_clt from Clients where ID_clt=" + dt.Rows[i][j].ToString();
                            SqlCommand cmdNC = new SqlCommand(nomClient, cn.con);


                            //RECUPERATION DU PRENOM DU CLIENT
                            string prenomClient = "select prenom_clt from Clients where ID_clt=" + dt.Rows[i][j].ToString();
                            SqlCommand cmdPC = new SqlCommand(prenomClient, cn.con);


                            //AFFICHAGE
                            SpanCLT.InnerText += cmdNC.ExecuteScalar() + "\n" + cmdPC.ExecuteScalar() + " Vous a envoyez une demande.\n";


                        }
                        else if (j == 3)                       //SECTION DE NOM DE METIER
                        {
                            //RECUPERATION DU NOM DU METIER
                            string nomMetier = "select nom_metier from Metiers where ID_metier=" + dt.Rows[i][j].ToString();
                            SqlCommand cmdNM = new SqlCommand(nomMetier, cn.con);

                            //AFFICHAGE
                            Domaine.InnerText += "Domaine de Travaille : " + cmdNM.ExecuteScalar() + "\n";
                        }
                        else if (j == 4)                       //SECTION DE DESCRIPTION DE SERVICE
                        {


                            //AFFICHAGE
                            Desc.InnerText += "Description : " + dt.Rows[i][j].ToString() + "\n";


                        }
                        else if (j == 5)                       //SECTION DE DATE DE PUBLICATION
                        {


                            //AFFICHAGE
                            DivDate.InnerText += "Date de Publication : " + dt.Rows[i][j].ToString() + "\n";


                        }


                    }


                }
            }
        }
    }
}