<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%-- Add content controls here --%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: large; font-family: 'Arial Black'">
        <strong>Welcome to Guppy stores.</strong></p>
<p style="font-size: large; font-family: 'Arial Black'">
    <strong>Shop from our wide variety of fish! </strong></p>
    <p>
        <strong><span style="font-size: large; font-family: 'Arial Black'">Login in to 
        buy our fish, if you are new please </span>
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Pages/Registration.aspx" 
            style="font-size: large; font-family: 'Arial Black'">REGSITER NOW!</asp:HyperLink>
        </strong></p>
</asp:Content>