<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ProjectDB.User.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="..\XHire\public\aboutus.css">
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

    <header>
        <h1>About Us</h1>
    </header>
    <main>
        <section id="mission">
            <h2>Our Mission</h2>
            <p>At Hire-X, our mission is to connect people with skilled tradesmen, making it easy for everyone to find reliable professionals for their home improvement needs.</p>
        </section>
        <section id="team">
            <h2>Our Team</h2>
            <p>We are a dedicated team of professionals passionate about providing exceptional service. From our customer support team to our tradesmen, everyone at Hire-X is committed to ensuring a seamless experience for our users.</p>
        </section>
        <section id="values">
            <h2>Our Values</h2>
            <ul>
                <li>Customer satisfaction is our top priority.</li>
                <li>We believe in honesty, integrity, and transparency.</li>
                <li>Continuous improvement and innovation drive our success.</li>
                <li>We value professionalism, reliability, and excellence in all aspects of our work.</li>
            </ul>
        </section>
        <section id="contact">
            <h2>Contact Us</h2>
            <p>If you have any questions or inquiries, feel free to reach out to us:</p>
            <p>Email: info@example.com</p>
            <p>Phone: 123-456-7890</p>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 HIRE-X. All rights reserved.</p>
    </footer>
</asp:Content>
