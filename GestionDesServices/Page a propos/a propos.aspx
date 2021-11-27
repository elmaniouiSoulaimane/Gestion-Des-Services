<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="a propos.aspx.cs" Inherits="GestionDesServices.Page_a_propos.a_propos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="a%20propos.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="background-color:darkslategray !important">
    <!-- banner -->
    <div class="banner_w3lspvt" id="home" style=" margin-bottom:53px;">
        <div class="csslider infinity" id="slider1">
            <input type="radio" name="slides" checked="checked" id="slides_1" />
            <input type="radio" name="slides" id="slides_2" />
            <input type="radio" name="slides" id="slides_3" />
            <input type="radio" name="slides" id="slides_4" />

            <ul class="banner_slide_bg">
                <li>
                    <div class="slider-info bg1">
                        <div class="bs-slider-overlay">
                            <div class="banner-text">
                                <div class="container">
                                    <h2 class="movetxt agile-title text-capitalize">Bienvenue dans <span style="color:indianred">Go Service</span></h2>
                                    <h4 class="movetxt mb-3 agile-title text-capitalize" style="font-size:large">
                                        Le seul endroit où les fournisseurs de services et les clients se rencontrent
                                        pour satisfaire leurs besoins</h4>
                                    
                                    <asp:HyperLink class="btn" NavigateUrl="~/Page a propos/a propos.aspx" runat="server">Savoire plus</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-info bg2">
                        <div class="bs-slider-overlay1">
                            <div class="banner-text">
                                <div class="container">

                                    <h4 class="movetxt mb-3 agile-title text-capitalize" style="font-size:50px;">Trouver des prestataires de services prêts à se lancer dans le travail</h4>
                                    <asp:HyperLink class="btn" NavigateUrl="~/Page Services disponibles/ServicesDisponibles.aspx" runat="server">Decouvrez nos services</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-info bg3">
                        <div class="bs-slider-overlay1">
                            <div class="banner-text">
                                <div class="container">

                                    <h4 class="movetxt mb-3 agile-title text-capitalize">Trouvez des clients qui ont besoin de votre service</h4>
                                    <asp:HyperLink class="btn" NavigateUrl="~/Page Inscription/Inscription.aspx" runat="server">Cree un compte</asp:HyperLink>

                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="slider-info bg4">
                        <div class="bs-slider-overlay1">
                            <div class="banner-text">
                                <div class="container">

                                    <h4 class="movetxt mb-3 agile-title text-capitalize" style="font-size:50px;">restez informé de nos actualités pour ne pas manquer les prestataires de services prêts à l'emploi ainsi que les clients</h4>
                                    <asp:HyperLink class="btn" NavigateUrl="~/Page Inscription/Inscription.aspx" runat="server">Cree un compte</asp:HyperLink>

                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="navigation">
                <div>
                    <label for="slides_1"></label>
                    <label for="slides_2"></label>
                    <label for="slides_3"></label>
                    <label for="slides_4"></label>
                </div>
            </div>
        </div>
    </div>
    <!-- //banner -->

    <!-- about -->
    <section class="about py-5" id="about" style="background-color:lightslategray">
        <div class="container py-lg-5 py-md-3">
            <h3 class="heading mb-4">About <span>Us</span> </h3>
            <div class="row">
                <div class="col-lg-6 left-img">
                    <img src="Images/about1.jpg" class="img-fluid" alt="" />
                </div>
                <div class="col-lg-5 about-left">
                    <p class="" style="color:white !important">
                       Go SERVICE dans une application Web en ligne dont le but est d'aider à la fois les prestataires qui fournissent un certain service et les clients qui recherchent ce service
                    </p>
                </div>

            </div>
        </div>
    </section>
    <!-- //about -->


    <!-- about bottom -->
    <section class="about-bottom py-5" style="background-color: indianred;">
        <div class="container py-md-3">
            <div class="row">
                <div class="col-lg-6 left-img">
                    <img src="Images/about2.jpg" class="img-fluid" alt="" />
                </div>
                <div class="col-lg-6 mt-lg-0 mt-4">
                    <h3 class="heading mb-5">Trouvez les prestataires desiress</h3>
                    <div class="row inner-heading">
                        <div class="col-md-1">
                            <span class="fa fa-anchor"></span>
                        </div>
                        <div class="col-md-11">

                            <p class="mt-3" style="color: white;">
                                En travaillant avec notre site Web, vous pouvez trouver des prestataires prêts à travailler qui recherchent des clients
                            </p>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-bottom py-5" style="background-color: gray;">
        <div class="container py-md-3">
            <div class="row">
                <div class="col-lg-6 left-img">
                    <img src="../Page%20Services%20disponibles/Images/plumber2.jpg" class="img-fluid" alt="" />
                </div>
                <div class="col-lg-6 mt-lg-0 mt-4">
                    <h3 class="heading mb-5">Cree des commandes </h3>
                    <div class="row inner-heading">
                        <div class="col-md-1">
                            <span class="fa fa-anchor"></span>
                        </div>
                        <div class="col-md-11">

                            <p class="mt-3" style="color: white;">
                              Satisfaire à la fois les clients et les travailleurs est notre priorité absolue, nous donnons donc la possibilité aux clients de créer et de décrire leurs propres services personnalisés qu'ils souhaitent avoir.
                            </p>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-bottom py-5" style="background-color: indianred;">
        <div class="container py-md-3">
            <div class="row">
                <div class="col-lg-6 left-img">
                    <img src="../Page Services disponibles/Images/babysitter5.jpg" class="img-fluid" alt="" />
                </div>
                <div class="col-lg-6 mt-lg-0 mt-4">
                    <h3 class="heading mb-5">Vous controller qui peut voir votre demande<h3>
                    <div class="row inner-heading">
                        <div class="col-md-1">
                            <span class="fa fa-anchor"></span>
                        </div>
                        <div class="col-md-11">

                            <p class="mt-3" style="color: white;">
                              Les clients ont le pouvoir de choisir qui peut voir leurs services écrits, il est logique que ce soit le thème auquel le service sera envoyé
                            </p>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- //about bottom -->

    <!-- stats -->
    <section class="stats py-5" id="stats">
        <div class="container py-3">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-6 text-center">
                    <span class="fa mr-1 fa-desktop"></span>
                    <h4 class="mt-3">20+</h4>
                    <p>Prestatires</p>
                </div>
                <div class="col-md-3 col-sm-6 col-6 text-center">
                    <span class="fa mr-1 fa-calendar"></span>
                    <h4 class="mt-3">1500+</h4>
                    <p>Clients</p>
                </div>
                <div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-5 text-center">
                    <span class="fa mr-1 fa-users"></span>
                    <h4 class="mt-3">400+</h4>
                    <p>Services Envoyees</p>
                </div>
                <div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-5 text-center">
                    <span class="fa mr-1 fa-anchor"></span>
                    <h4 class="mt-3">200+</h4>
                    <p>Demandes Realisees</p>
                </div>
            </div>
        </div>
    </section>
    <!-- //stats -->

    <!-- Blog section -->
    <section class="blog py-5" id="blog" style="background-color: gray;">
        <div class="container py-lg-5">
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="heading mb-4">Performance</h3>
                    <p class="mt-4" style="color:white">
                       Notre site Web ne ressemble à aucun autre site Web, il a été construit avec des outils puissants pour atteindre un haut niveau de performance
                        
                    </p>

                </div>

                <div class="col-lg-4 ">
                    <h3 class="heading mb-4">Simplicité</h3>
                    <p  style="color:white">
                        Une utilisation facile est notre priorité absolue. Cela permet à tous les utilisateurs quel que soit leur âge,
                         connaissances linguistiques et techniques, le tout pour se connecter et les aider à atteindre leurs objectifs académiques,
                         et se connecter avec leurs enseignants ainsi que d'avoir des informations multi-sources.
                    </p>

                </div>

                <div class="col-lg-4 ">
                    <h3 class="heading mb-4">Puissant</h3>
                    <p  style="color:white">
                        Notre site Web a été construit dans le but d'entendre les besoins de l'enseignant et de l'élève, nous offrons une expérience personnalisée pour aider à accélérer la recherche d'informations.                  
                    </p>

                </div>
            </div>
        </div>
    </section>
    <!-- //Blog section -->

    <!-- text -->
    <section class="text py-5" id="text">
        <div class="container py-md-5 text-center">
            <div class="row">
                <div class="col-12">
                    <h2 class="mb-4 heading">GO SERVICE</h2>
                    <p style="background-color: black; color: white">
                        Was brought to you by
                    </p>
                    <a href="contact.html" class="btn mr-3">Soulaimane ELManioui</a>
                    <a href="gallery.html" class="btn">Khalfi Abdellah</a>
                </div>
            </div>
        </div>
    </section>
    <!-- //text -->

</asp:Content>
