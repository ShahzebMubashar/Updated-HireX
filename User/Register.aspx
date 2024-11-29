<%--<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProjectDB.User.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="..\XHire\public\login.css" />
    <style>
        /* Add any additional styles here if needed */
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-form">
        <nav class="navbar">
            <div class="logo">
                <a href="Home.aspx">
                    <img src="..\XHire\public\X-Nitrate_nobg.png" alt="X-Nitrate Logo" /></a>
            </div>
        </nav>

        <video style="opacity: 0.8;" autoplay muted loop class="background">
            <source src="..\XHire\public\tech.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>

        <h2>Register</h2>
        <form id="registerForm" runat="server">
            <label for="fullname">Full Name</label>
            <asp:TextBox ID="fullname" runat="server" CssClass="form-control" required="required"></asp:TextBox>

            <label for="email">Email</label>
            <asp:TextBox ID="email" runat="server" CssClass="form-control" required="required"></asp:TextBox>

            <label for="password">Password</label>
            <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control" required="required"></asp:TextBox>

            <!-- Add CssClass attribute with the appropriate class name -->
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-primary" />

            <p>Already have an account? <a href="Login.aspx">Login</a></p>
            <div class="outputMsg" style="display: none;">
                <asp:Label ID="lblMsg" runat="server" Text="Registration successful!" ForeColor="Green"></asp:Label>
            </div>
        </form>
    </div>
</asp:Content>--%>
