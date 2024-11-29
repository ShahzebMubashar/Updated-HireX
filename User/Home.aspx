<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectDB.User.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="..\XHire\public\styles.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HIRE-X</title>
        <link rel="stylesheet" href="..\XHire\public\styles.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    </head>
    <body>
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
            <video autoplay muted loop class="hero-video">
                <source src="..\XHire\public\tech.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
            <div class="hero-overlay"></div>
            <div class="container_hero">
                <h1>Introducing the Revolution</h1>
                <br>
                <h1>HIRE-X</h1>
                <p>Where Skill Meets Service: Your pathway to Home Service Excellence</p>
                <a href="#" class="btn">Learn More</a>
            </div>
        </header>

        <section class="features">
            <div class="container">
                <!-- <h2>Features</h2> -->
                <div class="features-container">
                    <div class="feature">
                        <div class="feature-content">
                            <img src="..\XHire\public\f1.png" alt="Feature Image" id="feature1img">
                            <h3 style="text-align: center; font-size: 35px;">30 Minutes</h3>
                            <p style="text-align: center; font-size: 15px; font-weight: bold;">Average Response Time to Connect</p>
                        </div>
                    </div>
                    <div class="feature">
                        <div class="feature-content">
                            <img src="..\XHire\public\f2.png" alt="Feature Image" id="feature2img">
                            <h3 style="text-align: center; font-size: 35px;">5,342</h3>
                            <p style="text-align: center; font-size: 15px; font-weight: bold;">Total Number of Tradesmen</p>
                        </div>
                    </div>
                    <div class="feature">
                        <div class="feature-content">
                            <img src="..\XHire\public\f3.png" alt="Feature Image" id="feature3img">
                            <h3 style="text-align: center; font-size: 35px;">84.7</h3>
                            <p style="text-align: center; font-size: 15px; font-weight: bold;">Customer Satisfaction Score (NPS)</p>
                        </div>
                    </div>
                    <div class="feature">
                        <div class="feature-content">
                            <img src="..\XHire\public\f4.png" alt="Feature Image" id="feature4img">
                            <h3 style="text-align: center; font-size: 35px;">3,121</h3>
                            <p style="text-align: center; font-size: 15px; font-weight: bold;">Customers Currently Active</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="pricing">
            <div class="container">
                <h2 style="text-align: center">Pricing</h2>
                <div class="plans">
                    <!-- Widget 1 -->
                    <div class="plan">
                        <div class="plan-content">
                            <div class="plan-img">
                                <img src="..\XHire\public\t1.png" alt="Service Provider 1" class="seller-img">
                                <div class="actions">
                                    <a href="#" class="action-icon"><i class="far fa-thumbs-up"></i></a>
                                    <a href="#" class="action-icon"><i class="far fa-comment"></i></a>
                                    <a href="#" class="action-icon1">&nbsp; Price &nbsp;</a>
                                </div>
                            </div>
                            <div class="plan-inner">
                                <h3>Service Provider 1</h3>
                                <br>
                                <p>Experienced service provider with over 10 years in the industry. Specializes in web development.</p>
                                <br>
                                <p>
                                    <medium>Price: $50/hr &nbsp; &nbsp; &nbsp; Location: New York</medium>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- Widget 2 -->
                    <div class="plan">
                        <div class="plan-content">
                            <div class="plan-img">
                                <img src="..\XHire\public\t2.png" alt="Service Provider 2" class="seller-img">
                                <div class="actions">
                                    <a href="#" class="action-icon"><i class="far fa-thumbs-up"></i></a>
                                    <a href="#" class="action-icon"><i class="far fa-comment"></i></a>
                                    <a href="#" class="action-icon1">&nbsp; Price &nbsp;</a>
                                </div>
                            </div>
                            <div class="plan-inner">
                                <h3>Service Provider 2</h3>
                                <br>
                                <p>Graphic designer with a passion for creativity. Offering design solutions for businesses.</p>
                                <br>
                                <p>
                                    <medium>Price: $40/hr &nbsp; &nbsp; &nbsp; Location: Los Angeles</medium>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- Widget 3 -->
                    <div class="plan">
                        <div class="plan-content">
                            <div class="plan-img">
                                <img src="..\XHire\public\t3.png" alt="Service Provider 3" class="seller-img">
                                <div class="actions">
                                    <a href="#" class="action-icon"><i class="far fa-thumbs-up"></i></a>
                                    <a href="#" class="action-icon"><i class="far fa-comment"></i></a>
                                    <a href="#" class="action-icon1">&nbsp; Price &nbsp;</a>
                                </div>
                            </div>
                            <div class="plan-inner">
                                <h3>Service Provider 3</h3>
                                <br>
                                <p>Marketing expert with a track record of successful campaigns. Ready to boost your brand.</p>
                                <br>
                                <p>
                                    <medium>Price: $60/hr &nbsp; &nbsp; &nbsp; Location: Chicago</medium>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- Widget 4 -->
                    <div class="plan">
                        <div class="plan-content">
                            <div class="plan-img">
                                <img src="..\XHire\public\t4.png" alt="Service Provider 4" class="seller-img">
                                <div class="actions">
                                    <a href="#" class="action-icon"><i class="far fa-thumbs-up"></i></a>
                                    <a href="#" class="action-icon"><i class="far fa-comment"></i></a>
                                    <a href="#" class="action-icon1">&nbsp; Price &nbsp;</a>
                                </div>
                            </div>
                            <div class="plan-inner">
                                <h3>Service Provider 4</h3>
                                <br>
                                <p>Experienced photographer capturing life's moments. Book your session now to get discount.</p>
                                <br>
                                <p>
                                    <medium>Price: $80/hr &nbsp; &nbsp; &nbsp; Location: San Francisco</medium>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- Widget 5 -->
                    <div class="plan">
                        <div class="plan-content">
                            <div class="plan-img">
                                <img src="..\XHire\public\t5.png" alt="Service Provider 5" class="seller-img">
                                <div class="actions">
                                    <a href="#" class="action-icon"><i class="far fa-thumbs-up"></i></a>
                                    <a href="#" class="action-icon"><i class="far fa-comment"></i></a>
                                    <a href="#" class="action-icon1">&nbsp; Price &nbsp;</a>
                                </div>
                            </div>
                            <div class="plan-inner">
                                <h3>Service Provider 5</h3>
                                <br>
                                <p>Virtual assistant providing administrative support to businesses to encourage them. Hire now!</p>
                                <br>
                                <p>
                                    <medium>Price: $30/hr &nbsp; &nbsp; &nbsp; Location: Miami</medium>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- Widget 6 -->
                    <div class="plan">
                        <div class="plan-content">
                            <div class="plan-img">
                                <img src="..\XHire\public\t6.png" alt="Service Provider 6" class="seller-img">
                                <div class="actions">
                                    <a href="#" class="action-icon"><i class="far fa-thumbs-up"></i></a>
                                    <a href="#" class="action-icon"><i class="far fa-comment"></i></a>
                                    <a href="#" class="action-icon1">&nbsp; Price &nbsp;</a>
                                </div>
                            </div>
                            <div class="plan-inner">
                                <h3>Service Provider 6</h3>
                                <br>
                                <p>Software engineer specializing in app development. Transform your ideas into reality.</p>
                                <br>
                                <p>
                                    <medium>Price: $70/hr &nbsp; &nbsp; &nbsp; Location: Seattle</medium>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="contact">
            <div class="container">
                <h2>Contact Us</h2>
                <div class="contact-form">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <asp:TextBox ID="Name" runat="server" Visible="true"></asp:TextBox>
                        <%--<input type="text" id="NameReview" name="name" placeholder="Enter your name">--%>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <asp:TextBox ID="Email" runat="server" Visible="true"></asp:TextBox>
                        <%--<input type="email" id="EmailReview" name="email" placeholder="Enter your email">--%>
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <asp:TextBox ID="Message" runat="server" Visible="true"></asp:TextBox>
                        <%--<textarea id="message" name="MessageReview" placeholder="Write your message here"></textarea>--%>
                    </div>
                    <asp:Button ID="Submit" runat="server" Visible="true" Text="Submit" OnClick="Submit_Feedback" CssClass="contact-btn" />
                    <%--<button type="submit" class="contact-btn">Submit</button>--%>
                </div>
            </div>
        </section>

        <footer>
            <div class="container">
                <p>&copy; 2024 X-Nitrate Inc. All rights reserved.</p>
            </div>
        </footer>
    </body>
    </html>
</asp:Content>
