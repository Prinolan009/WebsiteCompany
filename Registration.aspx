<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 147px">
            Name:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="385px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            Surname:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="385px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            Email:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="385px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            Cellphone Number:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="385px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 147px">
            Password:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="385px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            Re-Enter Password:</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="385px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            &nbsp;</td>
        <td>
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Register" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" 
                SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

