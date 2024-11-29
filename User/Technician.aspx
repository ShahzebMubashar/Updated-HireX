<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Technician.aspx.cs" Inherits="ProjectDB.User.Technician" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap">
    <link rel="stylesheet" href="..\XHire\public\technician.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                <h1>Technical Solutions Tailored Just For Your Comfort</h1>
                <br>
                <p>Get customized technical solutions for your home, ensuring comfort and peace of mind with our expert technicians. Your satisfaction guaranteed.</p>
            </div>

            <div class="righttext1">
                <h3>April Special</h3>
                <h4>After Sales Service</h4>
                <p>Free Home Safety Check with Any Service! Ensure your home is safe and sound with our limited-time offer.</p>
            </div>

            <div class="righttext2">
                <h3>1 Month Contract</h3>
                <h4>Damage Repair</h4>
                <p>Secure your space. Expert repairing service at an affordable price.</p>
            </div>
        </div>
    </header>

    <div class="herobtn">
        <a href="#" class="herobtnsee">See All Offers</a>
    </div>

    <section class="features">
        <div class="container">
            <div class="features-container">
                <div class="feature">
                    <div class="feature-content">
                        <img src="..\XHire\public\f1.png" alt="Feature Image" id="feature1img">
                        <h3 style="text-align: center; font-size: 35px;">10 Minutes</h3>
                        <p style="text-align: center; font-size: 15px; font-weight: bold;">Average Response Time to Connect</p>
                    </div>
                </div>

                <div class="feature">
                    <div class="feature-content">
                        <img src="..\XHire\public\f2.png" alt="Feature Image" id="feature2img">
                        <h3 style="text-align: center; font-size: 35px;">4,241</h3>
                        <p style="text-align: center; font-size: 15px; font-weight: bold;">Total Number of Tradesmen</p>
                    </div>
                </div>

                <div class="feature">
                    <div class="feature-content">
                        <img src="..\XHire\public\f3.png" alt="Feature Image" id="feature3img">
                        <h3 style="text-align: center; font-size: 35px;">91.9</h3>
                        <p style="text-align: center; font-size: 15px; font-weight: bold;">Customer Satisfaction Score (NPS)</p>
                    </div>
                </div>

                <div class="feature">
                    <div class="feature-content">
                        <img src="..\XHire\public\f4.png" alt="Feature Image" id="feature4img">
                        <h3 style="text-align: center; font-size: 35px;">2,140</h3>
                        <p style="text-align: center; font-size: 15px; font-weight: bold;">Customers Currently Active</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

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

    <h1 class="newposth1">Technician Services</h1>

    <%--<section class="new-post2">
        <div class="newpostcontainer">
            <div class="newpost">
                <img src="..\XHire\public\t3.png" alt="Post Image">
                <div class="newpost-content">
                    <div class="newpost-details">
                        <h3>Sophia Chang</h3>
                        <p>
                            Masters gray structure paint for elegant and modern looks.
                        </p>
                        <div class="ratings-orders">
                            <p>3.9 <i class="fas fa-star checked"></i></p>
                            <p>6,110 Orders</p>
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
                        <h3>Jackson Lee</h3>
                        <p>
                            Creates bold statements with exterior wall murals and designs.
                        </p>
                        <div class="ratings-orders">
                            <p>4.4 <i class="fas fa-star checked"></i></p>
                            <p>4,780 Orders</p>
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
                <img src="..\XHire\public\t5.png" alt="Post Image">
                <div class="newpost-content">
                    <div class="newpost-details">
                        <h3>Ethan Nguyen</h3>
                        <p>
                            Achieves flawless matte finish on walls for a sleek appearance.
                        </p>
                        <div class="ratings-orders">
                            <p>4.7 <i class="fas fa-star checked"></i></p>
                            <p>1,980 Orders</p>
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
                <img src="..\XHire\public\t6.png" alt="Post Image">
                <div class="newpost-content">
                    <div class="newpost-details">
                        <h3>Akbar Ali</h3>
                        <p>
                            Transforms wooden doors with rich, protective paints for beauty.
                        </p>
                        <div class="ratings-orders">
                            <p>4.1 <i class="fas fa-star checked"></i></p>
                            <p>2,780 Orders</p>
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
                            <div>
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
</asp:Content>
