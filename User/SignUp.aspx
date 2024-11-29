<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ProjectDB.User.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="..\XHire\public\Test.css" />
    <style>
        /* Add any additional styles here if needed */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup-form">
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

        <h2>Sign Up</h2>
        <form id="signupForm" onsubmit="return submitForm()">
            <label for="username">Name</label>
            <asp:TextBox ID="username" runat="server" CssClass="form-control" required="required" Placeholder="Username"></asp:TextBox>
            <h6>
                <asp:Label ID="ErrUsername" runat="server" CssClass="Err" Text=""></asp:Label></h6>

            <label for="email">Email</label>
            <asp:TextBox ID="Email" runat="server" CssClass="form-control" required="required" Placeholder="Email" TextMode="Email"></asp:TextBox>
            <h6>
                <asp:Label ID="ErrEmail" runat="server" Visible="false" Text="" CssClass="Err"></asp:Label></h6>

            <label for="password">Password</label>
            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" required="required" Placeholder="Password"></asp:TextBox>
            <h6>
                <asp:Label ID="ErrPassword" runat="server" Text="" Visible="false" CssClass="Err"></asp:Label></h6>
            <label for="confirmPassword">Confirm Password</label>
            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" required="required" Placeholder="Confirm Password"></asp:TextBox>
            <h6>
                <asp:Label ID="ErrConfirmPassword" runat="server" Text="" Visible="false" CssClass="Err"></asp:Label></h6>

            <label for="Phone">Phone</label>
            <asp:TextBox ID="Phone" runat="server" CssClass="form-control" required="required" Placeholder="031234567789"></asp:TextBox>
            <h6>
                <asp:Label ID="ErrPhone" runat="server" Visible="false" Text="" CssClass="Err"></asp:Label></h6>

            <label for="Address">Address</label>
            <asp:TextBox ID="Address" runat="server" CssClass="form-control" required="required" Placeholder="Lahore, Pakistan"></asp:TextBox>
            <h6>
                <asp:Label ID="ErrAddress" runat="server" Visible="false" Text="" CssClass="Err"></asp:Label></h6>

            <!-- Add CssClass attribute with the appropriate class name -->
            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnRegister_Click" CssClass="btn btn-primary" />

            <h6 style="align-items: center;">
                <asp:Label ID="lblErr" runat="server" Visible="false" Text="" CssClass="Err"></asp:Label></h6>

        </form>
        <p>Already have an account? <a href="Login.aspx">Login</a></p>
        <div class="outputMsg" style="display: none;">
            <asp:Label ID="lblMsg" runat="server" Text="Message has been sent"></asp:Label>
        </div>
    </div>

    <script></script>
</asp:Content>
