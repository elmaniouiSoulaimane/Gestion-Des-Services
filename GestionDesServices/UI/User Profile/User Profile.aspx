<%@ Page Title="" Language="C#" MasterPageFile="~/UI/UI.Master" AutoEventWireup="true" CodeBehind="User Profile.aspx.cs" Inherits="GestionDesServices.UI.User_Profile.User_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--CSS--%>
    <link href="User%20Profile.css" rel="stylesheet" />
    <%--JAVASCRIPT--%>
    <script src="User%20Profile.js"></script>

    <%--shit necessary for template to work--%>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <%--end for that shit--%>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--template--%>
    <div class="container" style="margin-top:60px;">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title" id="nom_prenom" runat="server"></h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3 col-lg-3 " align="center">
                                <img alt="User Pic" src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png" class="img-circle img-responsive">
                            </div>

                     
                            <div class=" col-md-9 col-lg-9 ">
                                <table class="table table-user-information">
                                    <tbody>


                                        <%--NOM--%>
                                        <tr>
                                            <td>Nom :</td>
                                            <td>
                                                <asp:TextBox runat="server" id="nom"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Le nom est obligatoire" ControlToValidate="nom" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="REVName" ControlToValidate="nom" ErrorMessage="Le nom doit etre compose de characters" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>

                                        <%--PRENOM--%>
                                        <tr>
                                            <td>Prenom :</td>
                                            <td>
                                                <asp:TextBox runat="server" id="prenom"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ErrorMessage="Le prenom est obligatoire" ControlToValidate="prenom" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidatorprenom" ControlToValidate="prenom" ErrorMessage="Le prenom doit etre compose de characters" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>

                                            </td>
                                        </tr>

                                        <%--EMAIL--%>
                                        <tr>
                                            <td>Email :</td>
                                            <td>
                                                <asp:TextBox runat="server" ID="email"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="L'email est obligatoire" ControlToValidate="email" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ControlToValidate="email" ErrorMessage="L'email est invalid" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                            </td>
                                        </tr>

                                        <%--ADRESS--%>
                                        <tr>
                                            <td>Address :</td>
                                            <td>
                                                <asp:TextBox runat="server" ID="adress"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdresse" runat="server" ErrorMessage="L'adresse est obligatoire" ControlToValidate="adress" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <%--NUMERO DE TELEPHONE--%>
                                        <tr>
                                            <td>Numero de Telephone :</td>
                                            <td>
                                                <asp:TextBox runat="server" ID="tel"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhoneNumber" runat="server" ErrorMessage="Le numero de telephone est obligatoire" ControlToValidate="tel" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ControlToValidate="tel" ErrorMessage="number should be 9 digits" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="[567][0-9]{8}"></asp:RegularExpressionValidator>

                                            </td>
                                        </tr>

                                        <%--AGE--%>
                                        <tr>
                                            <td>Age :</td>
                                            <td>
                                                <asp:TextBox runat="server" ID="age"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="L'age est obligatoire" ControlToValidate="age" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                <asp:RangeValidator ID="RangeValidatorAge" runat="server" ErrorMessage="L'age doit etre un nombre et entre 18 et 100  " ControlToValidate="age" ForeColor="Red" Operator="DataTypeCheck" MinimumValue="18" MaximumValue="100" Type="Integer" Display="Dynamic" SetFocusOnError="true"></asp:RangeValidator>

                                            </td>
                                        </tr>

                                        <%--MOT DE PASSE--%>
                                        <tr>
                                            <td>Mot de passe :</td>
                                            <td>
                                                <asp:TextBox runat="server" ID="mdp"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassword" runat="server" ErrorMessage="Le mot de passe est obligatoire" ControlToValidate="mdp" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                  <%--              <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidatorpass" ControlToValidate="mdp" ErrorMessage="le mote de passe doit contenir au moins un nombre, un miniscule, majuscule,chiffre, et 8 characters en langeur" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"></asp:RegularExpressionValidator>--%>
                                            </td>
                                        </tr>

                                        <%--Metier--%>
                                        <tr id="metier" runat="server">
                                            <td>Metier ou service :</td>
                                            <td>
                                                <asp:DropDownList runat="server" ID="DropdownMetier">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorMetier" runat="server" ErrorMessage="Le metier est obligatoire" ControlToValidate="DropdownMetier" ForeColor="Red" InitialValue="1" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <%--Prix de service--%>
                                        <tr id="prix" runat="server">
                                            <td>Prix/Heur :</td>
                                            <td>
                                                <asp:TextBox runat="server" ID="tbPrix"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrix" runat="server" ErrorMessage="Le prix est obligatoire" ControlToValidate="tbPrix" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CPP" runat="server" ErrorMessage="Le prix de travail doit etre un nombre" ControlToValidate="tbPrix" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>

                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <span class="pull-right">
                            <asp:Button runat="server" class="btn btn-sm btn-warning" Text="Modifier mes infos" OnClick="Unnamed1_Click" ID="modifier"/>
                            <asp:Button runat="server" class="btn btn-sm btn-warning" Text="Enregistrer" OnClick="enregistrer" ID="Enregistrer"/>
                            <asp:Button runat="server" class="btn btn-sm btn-warning" Text="Annuler" OnClick="annuler" ID="Annuler"/>
                            <asp:Button runat="server" class="btn btn-sm btn-danger" Text="Supprimer mon compte" OnClick="Supprimmer"/>
                        </span>
                        <p runat="server" style="color:red" id="attempt">Tu est sure que tu veux supprimer votre compte ?! 
                            <asp:Button runat="server"  Text="oui" OnClick="Oui" ID="Button1"/>
                            <asp:Button runat="server" Text="Non" OnClick="Non"/>

                        </p>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <%--end template--%>
</asp:Content>
