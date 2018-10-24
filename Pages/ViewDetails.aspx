<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="Pages_ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" EnableModelValidation="True" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
    <Columns>
        <asp:BoundField DataField="Customer_Name" HeaderText="Name" 
            SortExpression="Customer_Name" />
        <asp:BoundField DataField="Customer_Surname" HeaderText="Surname" 
            SortExpression="Customer_Surname" />
        <asp:BoundField DataField="Customer_Email" HeaderText="Email" 
            SortExpression="Customer_Email" />
        <asp:BoundField DataField="Customer_Cell" HeaderText="Cellphone" 
            SortExpression="Customer_Cell" />
        <asp:BoundField DataField="Customer_Username" HeaderText="Username" 
            SortExpression="Customer_Username" />
    </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" 
    SelectCommand="SELECT [Customer_Name], [Customer_Surname], [Customer_Email], [Customer_Cell], [Customer_Username] FROM [Cust_Table] WHERE ([Customer_Username] = @Customer_Username)">
    <SelectParameters>
        <asp:ControlParameter ControlID="Label1" Name="Customer_Username" 
            PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>

