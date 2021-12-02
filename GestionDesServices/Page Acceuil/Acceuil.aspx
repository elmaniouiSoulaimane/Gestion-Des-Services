<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="GestionDesServices.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Acceuil.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Banner-->
    <div id="home-banner">
        <img src="Images/banner-image.jpg" />
        <h1>Bienvenue a <span>Go Service</span></h1>
        <p>Plongez dans une grande variété de services.</p>
        <a href="#section">découvrir plus</a>
    </div>
    <!--Contenu-->
    <section>
        <h2>Découvrez nos fonctionnalités</h2>
        <div id="container">
            <div class="sub-container">
                <img src="Images/give.png" alt="" />
                <p>nous avons inclus la plupart des services dont on aurait besoin dans tous les secteurs d'activité, il vous suffit 
                    d'entrer des informations spécifiques sur le service dont vous avez besoin et vous êtes prêt à partir.
                </p>
            </div>
            <div class="sub-container">
                <img src="Images/client.png" alt="" />
                <p>la satisfaction du client est notre priorité absolue en tant que créateurs de contenu, c'est pourquoi nous sommes 
                    prêts à entendre votre avis sur nous, afin que nous puissions vous aider à être plus à l'aise avec notre produit.
                </p>
            </div>
            <div class="sub-container">
                <img src="Images/quality.png" alt="" />
                <p>chaque jour, nous nous assurons que nos prestataires de services ont une qualité supérieure, et surtout une hestorique de satisfaction 
                    des clients.
                </p>
            </div>
            <div class="sub-container">
                <img src="Images/lock.png" alt="" />
                <p>La chose la plus importante en utilisant un site Web est sa sécurité, c'est pourquoi faire de la confidentialité de nos utilisateurs 
                    notre priorité absolue, afin que vos données ne puissent pas être divulguées.
                </p>
            </div>
            <div class="sub-container">
                <img src="Images/maintenance.png" alt="" />
                <p>nous effectuons un diagnostic quotidien du site Web pour nous assurer que tout est sous contrôle et qu'il fonctionne 
                    parfaitement.
                </p>          
            </div>
            <div class="sub-container">
                <img src="Images/gratuit.png" alt="" />
                <p>nous nous sommes assurés que tout le monde a accès à nos services sans payer d'argent, car notre objectif est de 
                    rapprocher les deux parties et de vous faire économiser temps et argent en recherchant ce prestataire de services
                </p>
            </div>
        </div>
    </section>
    <!--A PROPOS-->
    <section class="about py-5" id="about" style="background-color:indianred; margin-bottom:0px !important">
        <div class="container py-lg-5 py-md-3">
            <h3 class="heading mb-4">A Propos</h3>
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
    <section class="about-bottom py-5" style="background-color:white; margin-bottom:0px !important">
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
                            <p class="mt-3">
                                En travaillant avec notre site Web, vous pouvez trouver des prestataires prêts à travailler qui recherchent des clients
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="about-bottom py-5" style="background-color:indianred; margin-bottom:0px !important">
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
    <section class="about-bottom py-5" style="background-color:white; margin-bottom:0px !important">
        <div class="container py-md-3">
            <div class="row">
                <div class="col-lg-6 left-img">
                    <img src="../Page Services disponibles/Images/babysitter5.jpg" class="img-fluid" alt="" />
                </div>
                <div class="col-lg-6 mt-lg-0 mt-4">
                    <h3 class="heading mb-5">Vous controller qui peut voir votre demande</h3>
                    <div class="row inner-heading">
                        <div class="col-md-1">
                            <span class="fa fa-anchor"></span>
                        </div>
                        <div class="col-md-11">

                            <p class="mt-3">
                              Les clients ont le pouvoir de choisir qui peut voir leurs services écrits, il est logique que ce soit le thème auquel le service sera envoyé
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
</asp:Content>
