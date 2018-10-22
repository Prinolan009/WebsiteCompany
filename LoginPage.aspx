<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
     <link rel="stylesheet" type="text/css" href="~/Styles/StyleSheetLogin.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <br />
        <br />
        <br />
        <br />
    
        Username:&nbsp;&nbsp;&nbsp;&nbsp;
        <div id="TextBox">
        <asp:TextBox ID="TextBox1" placeholder="Username" runat="server" style="text-align: left" 
            Width="222px"></asp:TextBox>
            </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Password:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" 
            style="text-align: left" Width="208px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
    
    </div>
    </form>
</body>
</html>
