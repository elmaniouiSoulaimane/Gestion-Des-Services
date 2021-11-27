<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BabySitter.aspx.cs" Inherits="GestionDesServices.Page_Demande_Service.Baby_Siter.BabySitter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>Demander un service</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="../../Ressource/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!--
<div class="row">
<div class="col-sm-6 col-sm-offset-3 form-box">
<div role="form" class="register-form">
    <fieldset class="tab" >
        <div class="form-top">
            <div class="form-top-left">
		        <h3>Information complementaire</h3>
		    </div>
		    <div class="form-top-right">
		        
		    </div>
        </div>    
	    <div class="form-bottom" >
            
	        <div class="form-group">
		        <label>Nom de service</label><span id="msg1" runat="server"></span>
	            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" ></asp:DropDownList>
            </div>
            
            <div class="form-group">
		        <label>Description</label><span id="msg2" runat="server"></span>
		        <textarea class="form-control" placeholder="Mes critaires" runat="server" cols="20" rows="10" id="textblock1"></textarea>
	        </div>

            <div class="form-group" >
                <label>A quelle date souhaitez vous que le job soit effectué ?</label><span id="msg3" runat="server"></span>
	            <asp:TextBox class="form-control" ID="TextBox2" type="date"  pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" runat="server"></asp:TextBox>
	        </div>
	        <br />
            <asp:Button runat="server" OnClick="Step_Click" Text="Next"  />
	    </div>
       </div>         
</fieldset>
    

  
    </div>
   
    </div>
</div>

    -->
    
    
<div class="cotainer">
        <div class="row justify-content-center py-5">
            <br />
            <div class="col-md-8">
                    
                    <div class="card ">
                        
                        <div class="card-header bg-danger text-center">Information Complaimentaire</div>
                        <div class="card-body">
                            <div>
                                <div class="form-group row">
		                            <label class="col-md-4 col-form-label text-md-right">Nom de service</label>
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" ></asp:DropDownList>
                                    </div>
	                                
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Description</label>
		        
                                    <div class="col-md-6">
                                        <textarea class="form-control" placeholder="Mes critaires" runat="server" cols="20" rows="10" id="textblock2"></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">A quelle date souhaitez vous que le job soit effectué ?</label>
	                                <div class="col-md-6">
                                        <asp:TextBox class="form-control" ID="TextBox3" type="date"  pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                

                                    <div class="col-md-6 offset-md-4">
                                        <asp:Button runat="server" OnClick="Step_Click" Text="Next" class="btn-danger" />
                                        
                                        
                                    </div>
                                </div>
                            
                        </div>
                    </div>
            </div>
        </div>
    </div>

</asp:Content>
