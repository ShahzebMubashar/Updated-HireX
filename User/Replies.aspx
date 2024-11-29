<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Replies.aspx.cs" Inherits="ProjectDB.User.Replies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="..\XHire\public\negotiate.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>Post</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <section class="new-post">
            <div class="newpostcontainer">
                <div class="newpost">
                    <img src="..\XHire\public\t1.png" alt="Post Image" />
                    <div class="newpost-content">
                        <div class="newpost-details">
                            <h3>
                                <asp:Label ID="PostAuthor" runat="server" Visible="true" Text=""></asp:Label></h3>
                            <p>
                                <asp:Label ID="AuthorContent" runat="server" Text="" Visible="true"></asp:Label>
                            </p>
                            <div class="ratings-orders">
                                <p>4.2 <i class="fa fa-star" aria-hidden="true"></i></p>
                                <p>5,739 Orders</p>
                            </div>
                            <div>
                                <br />
                                <br />
                                <asp:Label runat="server" ID="Date" Text="" Visible="true"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="user-message">
            <asp:Repeater ID="AllReplies" runat="server">
                <ItemTemplate>
                    <p><%#Eval("ReplyContent") %></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <%--<div class="seller-message"></div>--%>

        <div class="input-field">
            <asp:TextBox ID="txtMessage" runat="server" placeholder="Enter Text"></asp:TextBox>
            <asp:Button ID="Send" runat="server" Visible="true" Text="Send" OnClick="SendReply" CssClass="SendButton"/>
        </div>
    </div>
</asp:Content>
