<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="ProjectDB.User.CreatePost" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background: #343a40;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 850px;
            background: white;
            border-radius: 30px;
            padding: 20px;
        }

        h2 {
            text-align: center;
            font-size: 32px;
            font-family: "Courier New", Courier, monospace;
            margin-top: 15px;
        }

        .input-group {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

            .input-group p {
                font-size: 18px;
                letter-spacing: 1px;
                font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            }

        .input-field {
            width: 300px;
            height: 50px;
            margin-bottom: 20px;
            padding-left: 10px;
            outline: none;
            border: none;
            border-bottom: 2px solid #343a40;
        }

            .input-field.price {
                margin-left: 0;
            }

        .services {
            display: grid;
            grid-template-columns: auto auto auto auto;
            width: 350px;
        }

        .check-box {
            margin-bottom: 15px;
        }

        textarea {
            background: none;
            border: 1px solid #343a40;
            border-bottom: 2px solid #343a40;
            color: #343a40;
            font-weight: 200;
            font-size: 16px;
            padding: 10px;
            outline: none;
            min-height: 90px;
            max-height: 90px;
            min-width: 620px;
            max-width: 620px;
            margin-bottom: 20px;
        }

        .submit-btn {
            width: 200px;
            padding: 10px 30px;
            cursor: pointer;
            display: block;
            background: linear-gradient(to right, #7393b3, #6f8faf);
            border: 0;
            outline: none;
            border-radius: 30px;
            font-size: 20px;
            color: #fff;
            text-align: center;
            margin: auto;
        }

        .Confirmation {
            color: green;
            text-align: center;
        }

        .error {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Create Post</h2>

        <form class="input-group">

            <asp:TextBox ID="txtPostTitle" runat="server" placeholder="Post Title" CssClass="input-field" Required="true"></asp:TextBox>
            <asp:TextBox ID="txtPrice" runat="server" placeholder="Price" CssClass="input-field price" Required="true" type="number"></asp:TextBox>

            <p>Service Required</p>
            <div class="services">
                <%--                <asp:CheckBox ID="chkTechnician" runat="server" CssClass="check-box" />
                <span>Technician</span>
                <asp:CheckBox ID="chkPlumber" runat="server" CssClass="check-box" />
                <span>Plumber</span>
                <asp:CheckBox ID="chkElectrician" runat="server" CssClass="check-box" />
                <span>Electrician</span>
                <asp:CheckBox ID="chkCarpenter" runat="server" CssClass="check-box" />
                <span>Carpenter</span>
                <asp:CheckBox ID="chkMechanic" runat="server" CssClass="check-box" />
                <span>Mechanic</span>
                <asp:CheckBox ID="chkPainter" runat="server" CssClass="check-box" />
                <span>Painter</span>
                <asp:CheckBox ID="chkWelder" runat="server" CssClass="check-box" />
                <span>Welder</span>--%>

                <asp:RadioButtonList ID="Checks" runat="server">
                    <asp:ListItem Text="Technician" Value="Technician"></asp:ListItem>
                    <asp:ListItem Text="Plumber" Value="Plumber"></asp:ListItem>
                    <asp:ListItem Text="Electrician" Value="Electrician"></asp:ListItem>
                    <asp:ListItem Text="Carpenter" Value="Carpenter"></asp:ListItem>
                    <asp:ListItem Text="Mechanic" Value="Mechanic"></asp:ListItem>
                    <asp:ListItem Text="Painter" Value="Painter"></asp:ListItem>
                    <asp:ListItem Text="Welder" Value="Welder"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="ErrCheck" runat="server" Visible="false" Text=""></asp:Label>

            </div>

            <p>Service Description</p>
            <asp:TextBox ID="txtServiceDescription" runat="server" TextMode="MultiLine" Required="true"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="submit-btn" OnClick="btnSubmit_Click" OnClientClick="" />
            <asp:Label ID="Confirmation" Visible="false" runat="server" Text=""></asp:Label>
        </form>
    </div>
</asp:Content>

