<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ServicesDisponibles.aspx.cs" Inherits="GestionDesServices.DemandeDeService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Services Disponibles</title>
        
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        /*********************** Demo - 17 *******************/
.box17{position:relative}
.box17:after{width:100%;height:100%;position:absolute;top:0;left:0;opacity:0;transition:all .5s ease 0s}
.box17:hover:after{opacity:1}
.box17 img{width:100%;height:auto;transition:all 1.5s ease 0s}
.box17 .box-content,.box17 .icon li a{position:absolute;transition:all .6s ease 0s}
.box17:hover img{transform:scale(1.2)}
.box17 .icon{width:100%;height:100%;list-style:none;padding:0;margin:0 auto;position:absolute;top:0;left:0;z-index:1}
.box17 .icon li a{width:45px;height:45px;line-height:45px;margin:0 auto;top:50%;border:1px solid #fff;opacity:0}
.box17:hover .icon li a{top:30%;opacity:1}
.box17 .icon li a:hover{background:#fff;color:#02a2dd}
.box17 .icon li:first-child a{left:-90%;right:0}
.box17:hover .icon li:first-child a{left:-55px}
.box17 .icon li:last-child a{right:-90%;left:0}
.box17:hover .icon li:last-child a{right:-55px}

.box17:hover .box-content{bottom:0;display:block;}
.box17 .title{font-size:18px;font-weight:700;color:#fff;margin-top:0}
.box17 .post{display:block;font-size:14px;color:#fff}
.box-content{
    display:none;
}
.box17 img{
    border-radius:20px;
}
@media only screen and (max-width:990px){.box17{margin-bottom:30px}
}

/*********************** EndDemo - 17 *******************/
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!------------------ Hover Effect Style : Demo - 17 --------------->
        <div class="container mt-40">
            <h3 class="text-center">Hover Effect Style : Demo - 17</h3>
            <div class="row mt-30">
                
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=1">
                        <div class="box17">
                            <img src="Images/babysitter5.jpg" alt="">
                            <div class="box-content">
                                <h3 class="title">Baby Sitter</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=20">
                        <div class="box17">
                            <img src="Images/lift service.jpg" alt="">
                            <div class="box-content">
                                <h3 class="title">Monte Meuble</h3>
                            </div>
                        </div>
                    </a>
                    <br />
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=2">
                        <div class="box17">
                            <img src="Images/cook2.jpg">
                            <div class="box-content">
                                <h3 class="title">Cuisiniere</h3>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=3">
                        <div class="box17">
                            <img src="Images/electrician4.jpg">
                            <div class="box-content">
                                <h3 class="title">Electricien</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=5">
                        <div class="box17">
                            <img src="Images/gardener2.jpg">
                            <div class="box-content">
                                <h3 class="title">Jardinier</h3>
                            </div>
                        </div>
                    </a>
                    <br />
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=0">
                        <div class="box17">
                            <img src="Images/home nurse2.jpg">
                            <div class="box-content">
                                <h3 class="title">Infirmiere</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=4">
                        <div class="box17">
                            <img src="Images/mechanical3.jpg">
                            <div class="box-content">
                                <h3 class="title">Mechanicien</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=6">
                        <div class="box17">
                            <img src="Images/painter1.jpg">
                            <div class="box-content">
                                <h3 class="title">Painteur</h3>
                            </div>
                        </div>
                    </a>
                    <br />
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=17">
                        <div class="box17">
                            <img src="Images/pexels-photo-313776.jpeg">
                            <div class="box-content">
                                <h3 class="title">Menuisier</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=7">
                        <div class="box17">
                            <img src="Images/plumber2.jpg">
                            <div class="box-content">
                                <h3 class="title">Plombier</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=19">
                        <div class="box17">
                            <img src="Images/semsar2.jpg">
                            <div class="box-content">
                                <h3 class="title">Agent Immobiler</h3>
                            </div>
                        </div>
                    </a>
                    <br />
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=16">
                        <div class="box17">
                            <img src="Images/blacksmith.jpg">
                            <div class="box-content">
                                <h3 class="title">Forgeron</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=18">
                        <div class="box17">
                            <img src="Images/construction.jpg">
                            <div class="box-content">
                                <h3 class="title">Ouvrier de Batiment</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=15">
                        <div class="box17">
                            <img src="Images/maid2.jpg">
                            <div class="box-content">
                                <h3 class="title">Menage</h3>
                            </div>
                        </div>
                    </a>
                    <br />
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=9">
                        <div class="box17">
                            <img src="Images/web  developer.jpg">
                            <div class="box-content">
                                <h3 class="title">Developeur</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=13">
                        <div class="box17">
                            <img src="Images/hairdresser.jpg">
                            <div class="box-content">
                                <h3 class="title">Coiffeur</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=14">
                        <div class="box17">
                            <img src="Images/beautician.jpg">
                            <div class="box-content">
                                <h3 class="title">Masseur</h3>
                            </div>
                        </div>
                    </a>
                    <br />
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=12">
                        <div class="box17">
                            <img src="Images/tailor.jpg">
                            <div class="box-content">
                                <h3 class="title">Tailleur</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=10">
                        <div class="box17">
                            <img src="Images/home teacher.jpg">
                            <div class="box-content">
                                <h3 class="title">Enseignant</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=11">
                        <div class="box17">
                            <img src="Images/photographer.jpg">
                            <div class="box-content">
                                <h3 class="title">Photographeur</h3>
                            </div>
                        </div>
                    </a>
                    <br />
                </div>
                <div class="col-md-4 col-sm-1">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=8">
                        <div class="box17">
                            <img src="Images/driver.jpg">
                            <div class="box-content">
                                <h3 class="title">Baby Sitter</h3>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    
        <!------------------ End Hover Effect Style : Demo - 18 --------------->
    <!--
    <div class="my-5">
        <h2 class="mb-3">De quel service avez-vous besoin ?</h2>
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom show">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=1">
                        <img class="rounded" src="Images/babysitter5.jpg" runat="server" alt="Baby Sitter">
                        
                    </a>
                      
                </div>
                <div class="text-block" style="color:black"><h3>babysitter</h3></div>
             </div>

            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom show">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=20"><img src="Images/lift service.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>lifters</h3></div>
             </div>

            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=2"><img src="Images/cook2.jpg" ></a>
                </div>
                <div class="text-block"><h3>Chef</h3></div>
             </div>
        </div>
       
        <br />
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=3"><img src="Images/electrician4.jpg" ></a>
                </div>                       
                <div class="text-block"><h3>Electricien</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=5"><img src="Images/gardener2.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>jardignier</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=0"><img src="Images/home nurse2.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>Infermier</h3></div>
             </div>
        </div>

        <br />
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=4"><img src="Images/mechanical3.jpg" ></a>
                </div>                       
                <div class="text-block"><h3>Technicien</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=6"><img src="Images/painter1.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>painteur</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=17"><img src="Images/pexels-photo-313776.jpeg" ></a>
                </div>                      
                <div class="text-block"><h3>nejar</h3></div>
             </div>
        </div>
        <br />
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=7"><img src="Images/plumber2.jpg" ></a>
                </div>                       
                <div class="text-block"><h3>plombier</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=19"><img src="Images/semsar2.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>semsar</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=8"><img src="Images/driver.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>Chaufeur</h3></div>
             </div>
        </div>
        <br />
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=16"><img src="Images/blacksmith.jpg" ></a>
                </div>                       
                <div class="text-block"><h3>Blacksmith</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=18"><img src="Images/construction.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>Construction workers</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=15"><img src="Images/maid2.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>Maid</h3></div>
             </div>
        </div>
        <br />
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=9"><img src="Images/web  developer.jpg" ></a>
                </div>                       
                <div class="text-block"><h3>Programmeur</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=13"><img src="Images/hairdresser.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>Hairdresser</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=14"><img src="Images/beautician.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>Beautician</h3></div>
             </div>
        </div>
        <br />
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=12"><img src="Images/tailor.jpg" ></a>
                </div>                       
                <div class="text-block"><h3>Tailleur</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=10"><img src="Images/home teacher.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>Home Teacher</h3></div>
             </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="img-hover-zoom">
                    <a href="../Page Demande Service/Baby Siter/BabySitter.aspx?Name=11"><img src="Images/photographer.jpg" ></a>
                </div>                      
                <div class="text-block"><h3>Photographer</h3></div>
             </div>
        </div>
        
            
    </div>-->
</asp:Content>
