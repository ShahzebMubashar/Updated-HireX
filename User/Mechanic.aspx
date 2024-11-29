<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Mechanic.aspx.cs" Inherits="ProjectDB.User.Mechanic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>X-HIRE</title>
        <link rel="stylesheet" href="..\XHire\public\mechanic.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    </head>
    <body>
        <form id="form1">
            <nav class="navbar">
                <div class="container">
                    <div class="logo">
                        <a href="Home.aspx">
                            <img src="..\XHire\public\X-Nitrate_nobg.png" alt="X-Nitrate Logo"></a>
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
                <div class="herooverlay"></div>
                <div class="text_container">
                    <div class="lefttext">
                        <h1>Keeping Your Vehicles Running With Expertise</h1>
                        <br>
                        <p>
                            Trust our skilled mechanics for top-notch car repairs and maintenance. 
                        We keep you rolling smoothly on the road. You can call us from anywhere.
                        </p>
                    </div>

                    <div class="righttext1">
                        <h3>April Special</h3>
                        <h4>After Sales Service</h4>
                        <p>Free wheels Safety Check with Any Service! Ensure your vehicles are safe and sound with our limited-time offer.</p>
                    </div>

                    <div class="righttext2">
                        <h3>1 Month Contract</h3>
                        <h4>Damage Repair</h4>
                        <p>
                            Secure your space. Expert mechanic<br>
                            service at an affordable price.
                        </p>
                    </div>
                </div>
            </header>

            <div class="herobtn">
                <a href="#" class="herobtnsee">See All Offers</a>
            </div>

            <section class="features">
                <div class="container">
                    <!-- <h2>Features</h2> -->
                    <div class="features-container">
                        <div class="feature">

                            <div class="feature-content">
                                <img src="..\XHire\public\f1.png" alt="Feature Image" id="feature1img">
                                <h3 style="text-align: center; font-size: 35px;">3 Minutes</h3>
                                <p style="text-align: center; font-size: 15px; font-weight: bold;">Average Response Time to Connect</p>

                            </div>
                        </div>

                        <div class="feature">

                            <div class="feature-content">
                                <img src="..\XHire\public\f2.png" alt="Feature Image" id="feature2img">
                                <h3 style="text-align: center; font-size: 35px;">8,354</h3>
                                <p style="text-align: center; font-size: 15px; font-weight: bold;">Total Number of Tradesmen</p>
                            </div>
                        </div>

                        <div class="feature">

                            <div class="feature-content">
                                <img src="..\XHire\public\f3.png" alt="Feature Image" id="feature3img">
                                <h3 style="text-align: center; font-size: 35px;">95.7</h3>
                                <p style="text-align: center; font-size: 15px; font-weight: bold;">Customer Satisfaction Score (NPS)</p>
                            </div>
                        </div>

                        <div class="feature">

                            <div class="feature-content">
                                <img src="..\XHire\public\f4.png" alt="Feature Image" id="feature4img">
                                <h3 style="text-align: center; font-size: 35px;">2,459</h3>
                                <p style="text-align: center; font-size: 15px; font-weight: bold;">Customers Currently Active</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- "Posts" Section -->
            <section class="posts">

                <h1>Best Sellers of the Month</h1>
                <div class="container">
                    <div class="post">
                        <img src="..\XHire\public\t1.png" alt="Post Image">
                        <div class="post-content">
                            <h3>Emily Harris</h3>
                            <p>Specializes in indoor house painting and vibrant colors.</p>
                            <div class="ratings">
                                <span class="fa fa-star checked">&nbsp;4.2</span>
                            </div>

                            <div class="money">
                                <p>5,739 Orders</p>
                            </div>

                        </div>
                    </div>

                    <div class="post">
                        <img src="..\XHire\public\t2.png" alt="Post Image">
                        <div class="post-content">
                            <h3>Marcus Rodriguez</h3>
                            <p>Expert in door polish and enhancing wood textures.</p>
                            <div class="ratings">
                                <span class="fa fa-star checked">&nbsp;4.5</span>
                            </div>

                            <div class="money">
                                <p>3,210 Orders</p>
                            </div>
                        </div>
                    </div>

                    <div class="post">
                        <img src="..\XHire\public\t3.png" alt="Post Image">
                        <div class="post-content">
                            <h3>Sophia Chang</h3>
                            <p>Masters gray structure paint for elegant and modern looks.</p>
                            <div class="ratings">
                                <span class="fa fa-star checked">&nbsp; 3.9</span>
                            </div>

                            <div class="money">
                                <p>6,110 Orders</p>
                            </div>

                        </div>
                    </div>

                    <div class="post">
                        <img src="..\XHire\public\t4.png" alt="Post Image">
                        <div class="post-content">
                            <h3>Jackson Lee</h3>
                            <p>Creates bold statements with exterior wall murals and designs.</p>
                            <div class="ratings">
                                <span class="fa fa-star checked">&nbsp; 4.4</span>
                            </div>

                            <div class="money">
                                <p>4,780 Orders</p>
                            </div>
                        </div>
                    </div>

                    <div class="post">
                        <img src="..\XHire\public\t5.png" alt="Post Image">
                        <div class="post-content">
                            <h3>Ethan Nguyen</h3>
                            <p>Achieves flawless matte finish on walls for a sleek appearance.</p>
                            <div class="ratings">
                                <span class="fa fa-star checked">&nbsp; 4.7</span>
                            </div>

                            <div class="money">
                                <p>1,980 Orders</p>
                            </div>
                        </div>
                    </div>

                    <div class="post">
                        <img src="..\XHire\public\t6.png" alt="Post Image">
                        <div class="post-content">
                            <h3>Akbar Ali</h3>
                            <p>Transforms wooden doors with rich, protective paints for beauty.</p>
                            <div class="ratings">
                                <span class="fa fa-star checked">&nbsp;4.1</span>
                            </div>

                            <div class="money">
                                <p>2,780 Orders</p>
                            </div>
                        </div>
                    </div>

                </div>
            </section>

             <h1 class="newposth1">Mechanic Services</h1>

            <%--<section class="new-post">
                <div class="newpostcontainer">
                    <div class="newpost">
                        <img src="..\XHire\public\t1.png" alt="Post Image">
                        <div class="newpost-content">
                            <div class="newpost-details">
                                <h3>Dylan Brushworks</h3>
                                <p>
                                    Hey there! I'm Dylan, a seasoned painter with over a decade of experience in transforming spaces. From elegant door paints to intricate wall textures, I specialize in bringing your vision to life. Let's craft your dream home with meticulous attention to detail and a touch of artistic flair!
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
                        <img src="..\XHire\public\t4.png" alt="Post Image">
                        <div class="newpost-content">
                            <div class="newpost-details">
                                <h3>Mike Steven</h3>
                                <p>
                                    Hello, I'm Mike, your go-to expert for door polish perfection. With a knack for enhancing wooden surfaces, I'll give your doors a glossy finish that radiates elegance. Trust me to bring out the natural beauty of your home's entrance.
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
                        <img src="..\XHire\public\t2.png" alt="Post Image">
                        <div class="newpost-content">
                            <div class="newpost-details">
                                <h3>Alex Artistry</h3>
                                <p>
                                    Hi, I'm Alex, dedicated to painting windows that illuminate your space. With a blend of precision and creativity, I'll adorn your windows with vibrant hues, creating a picturesque view both inside and out. Let's add a splash of color to your home's charm!
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
            </section>--%>
            <asp:Repeater ID="postRepeater" runat="server">
                <ItemTemplate>
                    <section class="new-post">
                        <div class="newpostcontainer">
                            <div class="newpost">
                                <img src="..\XHire\public\t1.png" alt="Post Image" />
                                <%--<img src='<%# Eval("PostImage") %>' alt="Post Image" />--%>
                                <div class="newpost-content">
                                    <div class="newpost-details">
                                        <h3><%# Eval("PostTitle") %></h3>
                                        <p><%# Eval("PostContent") %></p>

                                    </div>
                                    <div class="ratings-orders">
                                        <p><strong><%#Eval("Username") %></strong></p>
                                        <p>4.2 <i class="fas fa-star checked"></i></p>
                                        <p>5,739 Orders</p>
                                        <p>Service: <%#Eval("Service") %></p>
                                    </div>
                                    <div class="Date">
                                        <br />
                                        <p><%#Eval("PostDate") %></p>
                                    </div>
                                </div>
                                <div class="post-actions">
                                    <button class="like-btn"><i class="far fa-thumbs-up"></i>Like</button>
                                    <button class="comment-btn"><i class="far fa-comment"></i>Comment</button>
                                    <asp:Button ID="NegititateID" runat="server" CssClass="Nego" Text="Negotiate" OnClick="Negotiate_Click" CommandArgument='<%# Eval("PostID") %>' />
                                    <i class="fas fa-handshake"></i>
                                    <%--<button class="negotiate-btn"><i class="fas fa-handshake"></i>Negotiate</button>--%>
                                </div>
                            </div>
                        </div>
                        </div>
                    </section>
                </ItemTemplate>
            </asp:Repeater>


            <footer>
                <div class="container">
                    <p>&copy; 2024 Hire-X Inc. All rights reserved.</p>
                </div>
            </footer>
        </form>
    </body>
    </html>
</asp:Content>
