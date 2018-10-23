<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            font-size: x-large;
            text-decoration: underline;
        }
    </style>
     <link rel="stylesheet" type="text/css" href="~/Styles/StyleSheetLogin.css"/>
</head>
<body style="background-image: url('../Images/Background.jpg');">
    <form id="form1" runat="server">
    <div class="style1">
    
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="X-Large" ForeColor="#6600FF" Text="Welcome to Guppy Stores"></asp:Label>
        <br />
        <br />
    
        <div >
        <asp:TextBox ID="TextBox1" placeholder="Username" runat="server" style="text-align: left" 
            Width="251px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Username Required" 
                BackColor="White" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
            </div>
        <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" 
            style="text-align: left" Width="254px" 
            ontextchanged="TextBox2_TextChanged"></asp:TextBox>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Password Required" 
            BackColor="White" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
        <br />
        <br />
    </div>
    <div>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
            style="text-align: left" ForeColor="#660033" Height="52px" Width="140px" />
    &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Incorrect Credentials" 
                Visible="False" ForeColor="Red"></asp:Label>

    </div>
    <div style="text-align: center">
    
        <br />
        <span class="style2">New around here?&nbsp; 
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style2" 
            ForeColor="#000066" NavigateUrl="~/Registration.aspx">REGISTER NOW</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
