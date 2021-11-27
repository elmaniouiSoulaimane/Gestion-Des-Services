<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="GestionDesServices.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="row" style="width:50%">
	    <div class="col-md-7">
            <div class="panel panel-default">
                <div class="panel-heading">  
                    <h4 >User Profile</h4></div>
                    <div class="panel-body">
                        <div class="box box-info">
                            <div class="box-body">
                                <div class="col-sm-6" style="height:3%">
                                    
                                        <div> 
                                            <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle" alt="avatar">
                                            <br />
                                            <input id="profile-image-upload" class=" file-upload" type="file">
                                            <div style="color:#999;" >click here to change profile image</div>
                                            <!--Upload Image Js And Css-->
                                        </div>
                                        <br>
                                        <!-- /input-group -->
                                    </div>
                                    <div class="col-sm-6">
                                        <h4 style="color:#00b1b1;">khalfi abdellah</h4>
                                        <span><p>Developer</p></span>            
                                    </div>
                               
                            <div class="clearfix"></div>
                            <hr style="margin:5px 0 5px 0;">
                            <div class="col-sm-5 col-xs-6 tital " >First Name:</div>
                            <div class="col-sm-7 col-xs-6 ">khalfi</div>
                            <div class="clearfix"></div>
                            <div class="bot-border"></div>
                            <div class="col-sm-5 col-xs-6 tital " >Last Name:</div>
                            <div class="col-sm-7"> abdellah</div>
                            <div class="clearfix"></div>
                            <div class="bot-border"></div>

                            <div class="col-sm-5 col-xs-6 tital " >Date Of Joining:</div>
                            <div class="col-sm-7">15 Jun 2016</div>

                            <div class="clearfix"></div>
                            <div class="bot-border"></div>

                            <div class="col-sm-5 col-xs-6 tital " >Date Of Birth:</div>
                            <div class="col-sm-7">11 Jun 1998</div>

                            <div class="clearfix"></div>
                            <div class="bot-border"></div>

                            <div class="col-sm-5 col-xs-6 tital " >Place Of Birth:</div>
                            <div class="col-sm-7">casablanca</div>

                            <div class="clearfix"></div>
                            <div class="bot-border"></div>

                            <div class="col-sm-5 col-xs-6 tital " >Nationality:</div>
                            <div class="col-sm-7">Morocan</div>

                            <div class="clearfix"></div>
                            <div class="bot-border"></div>

                            <div class="col-sm-5 col-xs-6 tital " >Religion:</div>
                            <div class="col-sm-7">Muslime</div>


            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
       
            
    </div> 
    </div>
</div>  
    <script>
       $(document).ready(function() {
            var readURL = function(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                    $('.avatar').attr('src', e.target.result);
                    }
                reader.readAsDataURL(input.files[0]);
                }
            }
            $(".file-upload").on('change', function(){
                readURL(this);
            });
       });

    </script> 
       
       
       
       
       
       
       
       
       
   </div>
</div>




         
</asp:Content>
