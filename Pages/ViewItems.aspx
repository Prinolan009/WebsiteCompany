<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewItems.aspx.cs" Inherits="Pages_ViewItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;</p>
<p>
    You can only view the fish on this page, please you this link
    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" 
        NavigateUrl="~/Pages/ShoppingCart.aspx">Buy Some Fish!</asp:HyperLink>
&nbsp;Or the above menu to purchase some fish.<br />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" EnableModelValidation="True" 
        Width="644px">
        <Columns>
            <asp:BoundField DataField="Item_Name" HeaderText="Fish" 
                SortExpression="Item_Name" />
            <asp:BoundField DataField="Item_Desc" HeaderText="Size" 
                SortExpression="Item_Desc" />
            <asp:BoundField DataField="Item_Price" HeaderText="Price" 
                SortExpression="Item_Price" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" 
        SelectCommand="SELECT [Item_Name], [Item_Desc], [Item_Price] FROM [Item_Table]">
    </asp:SqlDataSource>
</p>
<p style="text-align: left">
    <asp:Image ID="Image1" runat="server" Height="111px" 
        ImageUrl="~/Images/Guppy.jpg" Width="151px" />
&nbsp;&nbsp;&nbsp; <span style="font-size: x-large">Guppies - R5</span></p>
<p>
    <asp:Image ID="Image2" runat="server" Height="99px" 
        ImageUrl="~/Images/Goldfish.jpg" Width="162px" />
&nbsp; <span style="font-size: x-large; text-align: left;">&nbsp;Goldfish - R10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:Image ID="Image3" runat="server" Height="102px" 
        ImageUrl="~/Images/Simese.jpg" Width="159px" />
&nbsp;<span style="font-size: x-large">Simese Fighter - R25</span>
    <asp:Image ID="Image4" runat="server" Height="123px" 
        ImageUrl="~/Images/Clown.jpg" Width="173px" />
&nbsp; <span style="font-size: x-large">Clown Fish - R100</span>
    <asp:Image ID="Image5" runat="server" Height="110px" 
        ImageUrl="~/Images/Pirahna.jpeg" style="text-align: left" Width="177px" />
    <span style="font-size: x-large">Pirahna - R500</span></p>
</asp:Content>

