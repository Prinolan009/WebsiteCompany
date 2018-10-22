﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Pages_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" EnableModelValidation="True" Width="16px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" 
                SortExpression="Item_Name" />
            <asp:BoundField DataField="Item_Desc" HeaderText="Item_Desc" 
                SortExpression="Item_Desc" />
            <asp:BoundField DataField="Item_Price" HeaderText="Item_Price" 
                SortExpression="Item_Price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" 
        SelectCommand="SELECT [Item_Name], [Item_Desc], [Item_Price], [Item_Image] FROM [Item_Table]">
    </asp:SqlDataSource>
    <asp:Label ID="LabelDate" runat="server" Text="Label"></asp:Label>
    <div style="text-align: left">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Item Selected:  "></asp:Label>
&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" 
            ontextchanged="TextBox1_TextChanged" style="text-align: left"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Enabled="False" 
            ForeColor="Red" Text="Required field" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label2" runat="server" Text="Quantity:  "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox1_TextChanged" 
            style="text-align: left"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Enabled="False" ForeColor="Red" 
            Text="Required quantity" Visible="False"></asp:Label>
        <br />
        Cost:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox1_TextChanged" 
            style="text-align: left" Enabled="False" Width="112px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Add to cart" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Height="81px" TextMode="MultiLine" 
            Width="333px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Total Cost"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Confirm purchase" 
            onclick="Button2_Click" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</asp:Content>
