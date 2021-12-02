<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="GestionDesServices.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Acceuil.css" />
        <script src="https://cdn.linearicons.com/free/1.0.0/svgembedder.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Banner-->
    <div id="home-banner">
        <img src="Images/banner-image.jpg" />
        <h1>Bienvenue a <span>Go Service</span></h1>
        <p>Plongez dans une grande variété de services.</p>
        <a href="section">découvrir plus</a>
    </div>
    <!--Contenu-->
    <section id="section">
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
    <!--Footer-->
    <footer>
        <img src="../website logo/android-chrome-192x192.png" alt="logo"/>
        <div>
            <span>E-mail : elmanioui.soulaimane@gmail.com</span><br />
            <br /><a href="https://www.linkedin.com/in/soulaimane-elmanioui/">Linkedin</a>
            <br /><a href="https://github.com/elmaniouiSoulaimane">Github</a>
            <br /><a href="">Portfolio</a>
        </div>
    </footer>
</asp:Content>
