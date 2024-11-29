<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ProjectDB.User.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="..\XHire\public\Dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <nav>
            <ul>
                <li><a href="#" class="logo">
                    <img src="..\XHire\public\t1.png" />
                    <span class="nav-item">My profile</span>
                </a></li>
                <li><a href="Home.aspx">
                    <i class="fas fa-home"></i>
                    <span class="nav-item">Home</span>
                </a></li>
                <li><a href="">
                    <i class="fas fa-person-booth"></i>
                    <span class="nav-item">Details</span>
                </a></li>
                <li><a href="">
                    <i class="fas fa-book"></i>
                    <span class="nav-item">Financial History</span>
                </a></li>
                <li><a href="MyPosts.aspx">
                    <i class="fas fa-pen"></i>
                    <span class="nav-item">My Posts</span>
                </a></li>
                <li><a href="#">
                    <i class="fas fa-cog"></i>
                    <span class="nav-item">Settings</span>
                </a></li>

                <li>
    <a href="#" class="removal">
        <i class="fas fa-trash"></i>
        <span class="nav-item">
            <asp:Button 
                ID="DeleteAccount" 
                Visible="true" 
                runat="server" 
                Text=" " 
                OnClick="DeleteAccount_Click" 
                OnClientClick="return confirm('Are you sure you want to delete your account?');" 
                CssClass="delete-button" 
            /> Delete Account
        </span>
    </a>
</li>


                <li><a href="Home.aspx" class="logout">

                    <i class="fas fa-sign-out-alt"></i>
                    <%--<span class="nav-item">--%>
                        <asp:Button ID="Session_Timeout" Visible="true" runat="server" Text="Log Out" OnClick="SessionTimeout" CssClass="nav-item" />
                </a></li>
            </ul>
        </nav>
        <div class="screen">
            <div class="dashboard-container">
                <div class="dashboard-sidebar">

                    <a href="CreatePost.aspx" class="post">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                        <button href="CreatePost.aspx" class="btn-post">Create Post</button>
                    </a>

                    <ul class="sidebar-links">
                        <li id="sidebarlink1"><a href="#">All Orders</a></li>
                        <li id="sidebarlink2"><a id="rr" href="#">Ratings & Reviews</a></li>
                        <li id="sidebarlink3"><a href="#">Portfolio</a></li>
                        <li id="sidebarlink4"><a href="#">Financials</a></li>
                        <li id="sidebarlink5"><a href="#">Offers</a></li>
                        <li id="sidebarlink6"><a href="newPosts.aspx">Posts</a></li>
                    </ul>
                </div>
                <div class="sidebar-header">
                    <h3>
                        <asp:Label ID="lblName" runat="server" Visible="true" Text="" CssClass="h1"></asp:Label></h3>
                    <p>Welcome to Hire-X dashboard. Navigate your journey</p>
                </div>
                <div class="dashboard-main">
                    <div class="dashboard-header">
                        <h2>Orders Information</h2>
                    </div>
                    <div class="orders-section">
                        <h3>Recent Orders</h3>
                        <div class="order-card">
                            <h4>
                                <asp:Label ID="Order1" runat="server" Visible="true" Text=""></asp:Label></h4>
                            <asp:Label ID="Order1Customer" runat="server" Visible="true" Text=""></asp:Label><p></p>
                            <p>Service: Interior Painting</p>
                            <asp:Label ID="Order1Amount" runat="server" Visible="true" Text=""></asp:Label><p></p>
                            <p>Status: In Progress</p>
                        </div>
                        <div class="order-card">
                            <h4>
                                <asp:Label ID="Order2" runat="server" Visible="true" Text=""></asp:Label></h4>
                            <p>
                                <asp:Label ID="Order2Customer" runat="server" Visible="true" Text=""></asp:Label>
                            </p>
                            <p>Service: Exterior Painting</p>
                            <p>
                                <asp:Label ID="Order2Amount" runat="server" Visible="true" Text=""></asp:Label>
                            </p>
                            <p>Status: Completed</p>
                        </div>
                    </div>
                    <div class="ratings-section">
                        <h3>Ratings & Reviews</h3>
                        <div class="rating-card">
                            <h4>
                                <asp:Label ID="Overall" runat="server" Visible="true" Text=""></asp:Label></h4>
                            <p>
                                <asp:Label ID="Rating" runat="server" Visible="true" Text="Rating: "></asp:Label>
                            </p>
                            <p>Communication: 4.5/5</p>
                            <p><%--<asp:Label ID="Overall" runat="server" Visible="true" Text=""></asp:Label>--%></p>
                        </div>
                        <!-- Add more rating cards as needed -->
                    </div>
                    <div class="location-section">
                        <h3>Personal Information</h3>
                        <p>
                            <asp:Label ID="Name" runat="server" Visible="true" Text=""></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Address" runat="server" Visible="true" Text=""></asp:Label>
                        </p>
                        <p>Blood Type: B+</p>
                        <p>Age: 23</p>
                        <p>
                            <asp:Label ID="Contact" runat="server" Visible="true" Text=""></asp:Label>
                        </p>
                    </div>
                    <div class="portfolio-section">
                        <h3>Portfolio</h3>
                        <div class="portfolio-images">
                            <img src="..\XHire\public\portfolio1.jpg" alt="Portfolio Image">
                            <img src="..\XHire\public\portfolio2.jpg" alt="Portfolio Image">
                            <!-- More portfolio images -->
                        </div>
                    </div>
                    <div class="financials-section">
                        <h3>Financial Details</h3>
                        <asp:Label ID="TotalEarnings" runat="server" Visible="true"></asp:Label><p></p>
                        <asp:Label ID="CurrentBalance" runat="server" Visible="true"></asp:Label><p></p>
                        <asp:Label ID="transactions" Visible="true" runat="server" Text=""><p></p></asp:Label>
                    </div>
                    <div class="offers-section">
                        <h3>Offers Running</h3>
                        <div class="offer-card">
                            <h4>Offer #1</h4>
                            <p>Description: 10% off on Exterior Painting</p>
                            <p>Validity: 1 month</p>
                        </div>
                        <div class="offer-card">
                            <h4>Offer #2</h4>
                            <p>Description: Free consultation for Interior Design</p>
                            <p>Validity: 2 weeks</p>
                        </div>
                        <!-- Add more offer cards as needed -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
