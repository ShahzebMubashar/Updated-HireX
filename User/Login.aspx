<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectDB.User.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="..\XHire\public\login.css" />
    <style>
        /* Add any additional styles here if needed */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<nav class="navbar">
        <div class="logo">
            <a href="Home.aspx"><img src="..\XHire\public\X-Nitrate_nobg.png" alt="X-Nitrate Logo" /></a>
        </div>
    </nav>

    <video style="opacity: 0.8;" autoplay muted loop class="background">
        <source src="..\XHire\public\tech.mp4" type="video/mp4" />
        Your browser does not support the video tag.
    </video>

    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="#">
                <h1>Create Account</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <span>or use your email for registration</span>
                <div class="infield">
                    <input type="text" placeholder="Name" />
                    <label></label>
                </div>
                <div class="infield">
                    <input type="email" placeholder="Email" name="email" />
                    <label></label>
                </div>
                <div class="infield">
                    <input type="password" placeholder="Password" />
                    <label></label>
                </div>
                <button>Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="#">
                <h1>Sign in</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <span>or use your account</span>
                <div class="infield">
                    <input type="email" placeholder="Email" name="email" />
                    <label></label>
                </div>
                <div class="infield">
                    <input type="password" placeholder="Password" />
                    <label></label>
                </div>
                <a href="#" class="forgot">Forgot your password?</a>
                <button>Sign In</button>
            </form>
        </div>
        <div class="overlay-container" id="overlayCon">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please login with your personal info</p>
                    <button>Sign In</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <button>Sign Up</button>
                </div>
            </div>
            <button id="overlayBtn"></button>
        </div>
    </div>--%>

    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1">
        <%--<script>
      const container = document.getElementById("container");
      const overlayCon = document.getElementById("overlayCon");
      const overlayBtn = document.getElementById("overlayBtn");

      overlayBtn.addEventListener("click", () => {
          container.classList.toggle("right-panel-active");

          overlayBtn.classList.remove("btnScaled");
          window.requestAnimationFrame(() => {
              overlayBtn.classList.add("btnScaled");
          });
      });

      // Add the new code here:
      const overlayLeft = document.querySelector(".overlay-panel.overlay-left");
      const overlayRight = document.querySelector(".overlay-panel.overlay-right");

      overlayLeft.addEventListener("click", () => {
          container.classList.remove("right-panel-active");
      });

      overlayRight.addEventListener("click", () => {
          container.classList.add("right-panel-active");
      });
  </script>--%>
    </asp:Content>

    <asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1">
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

            <h2>Login</h2>
            <form id="loginForm" onsubmit="return submitForm()">
                <label for="username">Username or Email</label>
                <asp:TextBox ID="UsernameInput" runat="server" CssClass="form-control" required="required" Placeholder="Email/Username"></asp:TextBox>

                <label for="password">Password</label>
                <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" required="required" Placeholder="Password"></asp:TextBox>

                <!-- Add CssClass attribute with the appropriate class name -->
                <asp:Label ID="ErrRes" runat="server" Visible="false" Text=""></asp:Label>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary" />
            </form>
            <p>Don't have an account? <a href="SignUp.aspx">Register</a></p>
            <div class="outputMsg" style="display: none;">
                <asp:Label ID="lblMsg" runat="server" Text="Message has been sent"></asp:Label>
            </div>
        </div>

        <%-- <script>
            function submitForm() {
                // Get username and password values
                var username = document.getElementById('<%= username.ClientID %>').value;
            var password = document.getElementById('<%= password.ClientID %>').value;

            // Validate username and password (you can add more validation if needed)
            if (username.trim() === "" || password.trim() === "") {
                alert("Please enter username and password");
                return false;
            }

            // You can perform further validation here if needed

            // Simulate form submission (replace this with your actual form submission logic)
            // Here, I'm just showing a success message
            var outputMsg = document.querySelector('.outputMsg');
            var msgLabel = document.getElementById('<%= lblMsg.ClientID %>');
                outputMsg.style.display = 'block';
                msgLabel.innerText = 'Login successful!';
                msgLabel.style.color = 'green';

                // Prevent default form submission
                return false;
            }
        </script>--%>
    </asp:Content>

</asp:Content>