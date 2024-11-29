﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Posts.aspx.cs" Inherits="ProjectDB.User.Posts" %>

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
            <img src="..\XHire\public\contract.png" alt="" />
        </div>
        <div class="text_container">
            <div class="lefttext">
                <h1>All Posts</h1>
            </div>
        </div>
    </header>

    <section class="new-post">
        <div class="newpostcontainer">
            <div class="newpost">
                <img src="..\XHire\public\t1.png" alt="Post Image" />
                <div class="newpost-content">
                    <div class="newpost-details">
                        <h3>Dylan Brushworks</h3>
                        <p>
                            Hey there! I'm Dylan, a seasoned painter with over a decade of experience in transforming
                            spaces. From elegant door paints to intricate wall textures, I specialize in bringing your
                            vision to life. Let's craft your dream home with meticulous attention to detail and a touch
                            of artistic flair!
                        </p>
                        <div class="ratings-orders">
                            <p>4.2 <i class="fas fa-star checked"></i></p>
                            <p>5,739 Orders</p>
                        </div>
                    </div>
                    <div class="post-actions">
                        <button class="like-btn"><i class="far fa-thumbs-up"></i>Like</button>
                        <button class="comment-btn"><i class="far fa-comment"></i>Comment</button>
                        <button class="negotiate-btn"><i class="fas fa-handshake"></i>Negotiate</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="new-post2">
        <div class="newpostcontainer">
            <div class="newpost">
                <img src="..\XHire\public\t4.png" alt="Post Image" />
                <div class="newpost-content">
                    <div class="newpost-details">
                        <h3>Mike Steven</h3>
                        <p>
                            Hello, I'm Mike, your go-to expert for door polish perfection. With a knack for enhancing
                            wooden surfaces, I'll give your doors a glossy finish that radiates elegance. Trust me to
                            bring out the natural beauty of your home's entrance.
                        </p>
                        <div class="ratings-orders">
                            <p>4.0 <i class="fas fa-star checked"></i></p>
                            <p>2,109 Orders</p>
                        </div>
                    </div>
                    <div class="post-actions">
                        <button class="like-btn"><i class="far fa-thumbs-up"></i>Like</button>
                        <button class="comment-btn"><i class="far fa-comment"></i>Comment</button>
                        <button class="negotiate-btn"><i class="fas fa-handshake"></i>Negotiate</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="new-post2">
        <div class="newpostcontainer">
            <div class="newpost">
                <img src="..\XHire\public\t2.png" alt="Post Image" />
                <div class="newpost-content">
                    <div class="newpost-details">
                        <h3>Alex Artistry</h3>
                        <p>
                            Hi, I'm Alex, dedicated to painting windows that illuminate your space. With a blend of
                            precision and creativity, I'll adorn your windows with vibrant hues, creating a picturesque
                            view both inside and out. Let's add a splash of color to your home's charm!
                        </p>
                        <div class="ratings-orders">
                            <p>3.9 <i class="fas fa-star checked"></i></p>
                            <p>4,185 Orders</p>
                        </div>
                    </div>
                    <div class="post-actions">
                        <button class="like-btn"><i class="far fa-thumbs-up"></i>Like</button>
                        <button class="comment-btn"><i class="far fa-comment"></i>Comment</button>
                        <button class="negotiate-btn"><i class="fas fa-handshake"></i>Negotiate</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 Hire-X Inc. All rights reserved.</p>
        </div>
    </footer>
</asp:Content>
