<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Votre Role.aspx.cs" Inherits="GestionDesServices.Page_Choisir_Role.Votre_Role" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="RoleStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="split left">
  <div class="centered">
    <a href="../Page Inscription/InscriptionFournisseur.aspx"><img src="../Page Services disponibles/Images/maid2.jpg" alt="Avatar woman"></a>
    <h2>Espace Prestataire</h2>
    <p>Devenir Prestataire</p>
  </div>
</div>

<div class="split right">
  <div class="centered">
    <a href="../Page Inscription/Inscription.aspx"><img src="../Page Services disponibles/Images/maid2.jpg" alt="Avatar man"></a>
    <h2>Espace Client</h2>
    <p>Devenir Client</p>
  </div>
</div>
</asp:Content>
