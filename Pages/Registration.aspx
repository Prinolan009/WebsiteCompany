<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 125%">
    <tr>
        <td style="width: 147px">
            Name:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="385px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            Surname:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="385px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Surname Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            Email:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="385px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
        &nbsp;
            <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" 
                Text="Email already in use" Visible="False"></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Invalid email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            Cellphone Number:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="385px" 
                ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Cell Required"></asp:RequiredFieldValidator>
        &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Invalid cell number"  ValidationExpression="^\+[1-9]{1}[0-9]{3,14}$"></asp:RegularExpressionValidator>
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
            Username:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="385px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Username Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 147px">
            Password:</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="385px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
        </td>
        
    </tr>
     <tr>
        <td style="width: 147px">
            Retype Password:</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="385px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                ErrorMessage="Passwords do not match"></asp:CompareValidator>
        </td>
        
    </tr>
    <tr>
        <td style="width: 147px">
            &nbsp;</td>
        <td>
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Register" />
        </td>
    </tr>
</table>
</asp:Content>

