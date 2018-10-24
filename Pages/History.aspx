<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="Pages_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />
    <div style="text-align: left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <span style="font-size: medium; font-family: 'Arial Black'">Please select a date 
        to view your purchase history.</span><br />
<asp:Calendar ID="Calendar1" runat="server" 
    onselectionchanged="Calendar1_SelectionChanged" BackColor="White" 
            BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
            ForeColor="#003399" Height="200px" style="text-align: center" Width="290px">
    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
    <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
    </div>
<br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<br />
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<br />
    <span style="font-family: 'Arial Black'"><strong>Your purchase history:</strong></span><br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3">
        <Columns>
            <asp:BoundField DataField="Purchase_Date" HeaderText="Date of purchase" 
                SortExpression="Purchase_Date" />
            <asp:BoundField DataField="Purchase_Price" HeaderText="Total amount" 
                SortExpression="Purchase_Price" />
            <asp:BoundField DataField="Purchase_Desc" HeaderText="Description" 
                SortExpression="Purchase_Desc" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
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

