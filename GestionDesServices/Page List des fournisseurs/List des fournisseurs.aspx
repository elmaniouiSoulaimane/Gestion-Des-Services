<%@ Page Title="" Language="C#" MasterPageFile="~/UI/UI.Master" AutoEventWireup="true" CodeBehind="List des fournisseurs.aspx.cs" Inherits="GestionDesServices.Page_List_des_fournisseurs.List_des_fournisseurs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


    <link href="BasicCSS.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container">
        <div class="row" id="menu1" runat="server">
            <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                <div class="card">
                    <img class="card-img-top" src="https://picsum.photos/200/150/?random">
                        <div class="card-block">
                            <h4 class="card-title mt-3">Tawshif Ahsan Khan</h4>
                                <div class="card-text">
                                    <p>Tawshif is a web designer living in Bangladesh.</p>
                                </div>
                        </div>
                        <div class="card-footer">
                            <small>Choisir votre Prestataire</small>
                            <button class="btn btn-danger float-right btn-sm">show</button>
                        </div>
                </div>
            </div>
            
        </div>
 </div>
        
    <!--
    <div class="container">
	<div class="row" id="menu" runat="server">
        <br />
        
	</div>

</div>
  -->
</asp:Content>
