<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="GestionDesServices.Inscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Nouveau Client</title>
    <link href="Inscription.css" rel="stylesheet" />
    <link href="../Ressource/css/all.css" rel="stylesheet" />
    <script src="../Ressource/js/all.js"></script>
    <!--the following lines are necessary for the form-->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!--the following lines are necessary for the form-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Inscription -->

<div class="container">
    <div id="inscri" class="row py-5 mt-4 align-items-center">
        <!-- For Demo Purpose -->
        <div class="col-md-5 pr-lg-0 mb-5 mb-md-0">
            <img src="Images/client.jpeg" alt="" class="img-fluid mb-3 d-none d-md-block" >
            

        </div>

        <!-- Registeration Form -->
        <div class="col-md-7 col-lg-6 ml-auto">
            <h1>Create an Account</h1>
            <p class="font-italic text-muted mb-0">Votre premiere etape pour connecter a votre fournisseur.</p>
            <br />
            <br />
            <form action="#">
                <div class="row" style="display:block">

                    <!-- First Name -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-user text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox runat="server" id="firstName" type="text" name="firstname" placeholder="First Name" class="form-control bg-white border-left-0 border-md"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Le nom est obligatoire" ControlToValidate="firstName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="REVName" ControlToValidate="firstName" ErrorMessage="Le nom doit etre compose de characters et doit debuter par une majuscule" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </div>
                    
                    

                    <!-- Last Name -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-user text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox runat="server" id="lastName" type="text" name="lastname" placeholder="Last Name" class="form-control bg-white border-left-0 border-md"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ErrorMessage="Le prenom est obligatoire" ControlToValidate="lastName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidatorprenom" ControlToValidate="lastName" ErrorMessage="Le prenom doit etre compose de characters" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                
                    </div>
                   



                    <!-- Age -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-male text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox runat="server" id="Age" type="text" name="lastname" placeholder="Age" class="form-control bg-white border-left-0 border-md"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="L'age est obligatoire" ControlToValidate="Age" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorAge" runat="server" ErrorMessage="L'age doit etre un nombre et entre 18 et 100  "  ControlToValidate="Age" ForeColor="Red"  Operator="DataTypeCheck" MinimumValue="18" MaximumValue="100" Type="Integer" Display="Dynamic" SetFocusOnError="true"></asp:RangeValidator>

                    </div>
                    

                    <!-- Email Address -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-envelope text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox runat="server" id="email" type="email" name="email" placeholder="Email Address" class="form-control bg-white border-left-0 border-md"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="L'email est obligatoire" ControlToValidate="email" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ControlToValidate="email" ErrorMessage="L'email est invalid" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                  



                    <!-- Phone Number -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-phone-square text-muted"></i>
                            </span>
                        </div>
                        <%--<select id="countryCode" name="countryCode" style="max-width: 80px" class="custom-select form-control bg-white border-left-0 border-md h-100 font-weight-bold text-muted">
                            <option value="">+212</option>
                        </select>--%>
                        <asp:TextBox runat="server" id="phoneNumber" type="tel" name="phone" placeholder="Phone Number" class="form-control bg-white border-md border-left-0 pl-3"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhoneNumber" runat="server" ErrorMessage="Le numero de telephone est obligatoire" ControlToValidate="phoneNumber" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ControlToValidate="phoneNumber" ErrorMessage="number should be 10 digits" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="0[567][0-9]{8}"></asp:RegularExpressionValidator>
                       
                    </div>
                    
                    
                    
                    <!-- Adresse -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-map-marker text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox runat="server" id="adresse" type="text" name="adresse" placeholder="Adresse" class="form-control bg-white border-left-0 border-md"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdresse" runat="server" ErrorMessage="L'adresse est obligatoire" ControlToValidate="adresse" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        
                    </div>
                    


                    <!-- Password -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-lock text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox runat="server" id="Password" type="password" name="password" placeholder="Password" class="form-control bg-white border-left-0 border-md"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassword" runat="server" ErrorMessage="Le mot de passe est obligatoire" ControlToValidate="Password" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidatorpass" ControlToValidate="Password" ErrorMessage="le mote de passe doit contenir au moins un nombre, un miniscule, majuscule,chiffre, et 8 characters en langeur" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"></asp:RegularExpressionValidator>
                        
                    </div>
                   



                    <!-- Password Confirmation -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-lock text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox runat="server" ID="passwordConfirmation" type="password" name="passwordCConfirmation" placeholder="Confirm Password" class="form-control bg-white border-left-0 border-md"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorCP" runat="server" ErrorMessage="La confirmation est obligatoire" ControlToValidate="passwordConfirmation" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Les deux champ doivent etre identiques" ControlToValidate="passwordConfirmation"  ControlToCompare="Password" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:CompareValidator>


                    </div>
                   

                   <!-- Submit Button -->
                     <asp:Button ID="Button1" runat="server" Text="Create your account" class="btn btn-danger btn-block py-2" OnClick="Button1_Click" style="margin-top:10px"/>

                    

                    <!-- Already Registered -->
                    <div class="text-center w-100">
                        <p class="text-muted font-weight-bold">Already Registered? <a href="../Page se connecter/SeConnecter.aspx" class="text-danger ml-2">Login</a></p>
                        <br />
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>

<!-- End Inscription -->
</asp:Content>
