<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="Pages_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<asp:Calendar ID="Calendar1" runat="server" 
    onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
<br />
<br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<br />
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<br />
<br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="Purchase_Date" HeaderText="Purchase_Date" 
                SortExpression="Purchase_Date" />
            <asp:BoundField DataField="Purchase_Price" HeaderText="Purchase_Price" 
                SortExpression="Purchase_Price" />
            <asp:BoundField DataField="Purchase_Desc" HeaderText="Purchase_Desc" 
                SortExpression="Purchase_Desc" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>" 
        SelectCommand="SELECT [Purchase_Date], [Purchase_Price], [Purchase_Desc] FROM [Purchase_Table] WHERE (([Purchase_Date] = @Purchase_Date) AND ([Cust_ID] = @Cust_ID))">
        <SelectParameters>
            <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="Purchase_Date" 
                PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="Label2" Name="Cust_ID" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
<br />
</asp:Content>

