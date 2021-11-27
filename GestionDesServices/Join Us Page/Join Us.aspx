<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Join Us.aspx.cs" Inherits="PFM_ELMANIOUI_HARAKAT_TDI204.Join_Us_Page.Join_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Join%20Us.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" id="l">
        <div class="split left">
            <asp:HyperLink runat="server" NavigateUrl="~/Page Inscription/InscriptionFournisseur.aspx" class="button" >Devenir Presataire</asp:HyperLink>
        </div>
        <div class="split right">
            <asp:HyperLink runat="server" NavigateUrl="~/Page Inscription/Inscription.aspx" class="button">Devenir client</asp:HyperLink>
        </div>
    </div>
</asp:Content>
