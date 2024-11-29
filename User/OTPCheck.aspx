<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="OTPCheck.aspx.cs" Inherits="ProjectDB.OTPCheck" %>

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

        <h2 style="text-align: center;">One Time Password</h2>
        <form id="signupForm">
            <div style="text-align: center;">

                <label for="OTPConfirmation"></label>
                <asp:TextBox ID="OTP" runat="server" Visible="true"></asp:TextBox>
                <br />
                <br />

                <asp:Button ID="SubmitOTP" runat="server" Visible="true" Text="Submit" OnClick="SubmitOTP_Click" />

                <h4>
                    <asp:Label ID="ErrOTP" Visible="false" runat="server" Text=""></asp:Label></h4>
            </div>
    </form>
    </div>

    <script></script>
</asp:Content>
