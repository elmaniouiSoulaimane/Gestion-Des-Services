<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SeConnecter.aspx.cs" Inherits="GestionDesServices.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="SeConnecter.css" rel="stylesheet" />
    <title>Connecter comme Client</title>

    <!--nececessary for body-->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!--end-->
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Login-->
    
<div class="container">
    <div  id="inscri" class="row py-5 mt-4 align-items-center">
        <!-- The image half -->
        <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
            <img src="Images/pexels-photo-3184287.jpeg" alt="" class="img-fluid mb-3 d-none d-md-block">
        </div>


        <!-- The content half -->
        <div class="col-md-6 bg-light">
            <div class="login d-flex align-items-center py-5">

                <!-- Demo content-->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 col-xl-7 mx-auto">
                            <h3 class="display-4">Connecter-vous</h3>
                            <p class="text-muted mb-4">Rejoigner nous pour etre mis a jour avec notre nouveau actualiters</p>
                 
                                <div class="form-group mb-3">
                                    <asp:TextBox runat="server" id="inputEmail" type="email" placeholder="Email address" required="required" autofocus="" class="form-control rounded-pill border-0 shadow-sm px-4"></asp:TextBox>
                                </div>
                                <div class="form-group mb-3">
                                    <asp:TextBox runat="server" id="inputPassword" type="password" placeholder="Password" required="required" class="form-control rounded-pill border-0 shadow-sm px-4 text-primary"></asp:TextBox>
                                </div>
                                <div class="custom-control custom-checkbox mb-3">
                                    <input id="customCheck1" type="checkbox" checked class="custom-control-input" runat="server">
                                    <label for="customCheck1" class="custom-control-label">Remember password</label>
                                </div>
                                <asp:Button runat="server"  class="btn btn-danger btn-block text-uppercase mb-2 rounded-pill shadow-sm" Text="Connecter" OnClick="Button1_Click1"/>
                                <div class="text-center d-flex justify-content-between mt-4">
                                    <asp:HyperLink runat="server" NavigateUrl="../Page Inscription/Inscription.aspx">Cree un compte</asp:HyperLink>
                                </div>
                            
                            
                        </div>
                    </div>
                </div><!-- End -->

            </div>
        </div><!-- End -->

    </div>
</div>


<!--End Login-->



</asp:Content>
