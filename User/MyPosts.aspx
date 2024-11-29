<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="MyPosts.aspx.cs" Inherits="ProjectDB.User.MyPosts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="..\XHire\public\allpost.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar">
        <div class="container">
            <div class="logo">
                <a href="Home.aspx">
                    <img src="..\XHire\public\X-Nitrate_nobg.png" alt="X-Nitrate Logo" /></a>
            </div>
            <ul class="nav-links">
                <li class="dropdown">
                    <a href="#" class="dropdown-link">Services</a>
                    <ul class="dropdown-menu">
                        <p><a href="Technician.aspx">Technician</a></p>
                        <p><a href="Plumber.aspx">Plumber</a></p>
                        <p><a href="Electrician.aspx">Electrician</a></p>
                        <p><a href="Carpenter.aspx">Carpenter</a></p>
                        <p><a href="Mechanic.aspx">Mechanic</a></p>
                        <p><a href="Painter.aspx">Painter</a></p>
                        <p><a href="Welder.aspx">Welder</a></p>
                    </ul>
                </li>
                <li><a href="About.aspx">About</a></li>
                <li><a href="Dashboard.aspx">Dashboard</a></li>
                <li><a href="newPosts.aspx">Posts</a></li>
            </ul>
            <div class="login">
                <asp:Label ID="LoginVisibility" Visible="true" runat="server"><a href="Login.aspx" class="btn">Log In</a></asp:Label>
                <asp:Label ID="SignUpVisibility" Visible="true" runat="server"><a href="SignUp.aspx" class="btn signup">Sign Up</a></asp:Label>
            </div>
        </div>
    </nav>
    <header class="hero">
        <div class="herooverlay" style="width: 100%;">
            <%--<img src="..\XHire\public\contract.png" alt="" />--%>
        </div>
        <div class="text_container">
            <div class="lefttext">
                <h1>My Posts</h1>
            </div>
        </div>
    </header>
    <asp:Repeater ID="postRepeater" runat="server">
        <itemtemplate>
            <section class="new-post">
                <div class="newpostcontainer">
                    <div class="newpost">
                        <img src="..\XHire\public\t1.png" alt="Post Image" />
                        <div class="newpost-content">
                            <div class="newpost-details">
                                <h3><%# Eval("PostTitle") %></h3>
                                <p><%# Eval("PostContent") %></p>

                            </div>
                            <div class="ratings-orders">
                                <p><strong><%#Eval("Username") %></strong></p>
                                <p>4.2 <i class="fas fa-star checked"></i></p>
                                <p>5,739 Orders</p>
                            </div>
                            <div class="Date">
                                <br />
                                <p><%#Eval("PostDate") %></p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </itemtemplate>
    </asp:Repeater>
    <footer>
        <div class="container">
            <p>&copy; 2024 X-Nitrate Inc. All rights reserved.</p>
        </div>
    </footer>
</asp:Content>
