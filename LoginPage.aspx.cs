using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class LoginPage : System.Web.UI.Page
{
    private SqlDbConnect con;
    private string Uname, pass;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlDbConnect();
        con.SqlQuery("SELECT * FROM Cust_Table WHERE Customer_Username = '"+TextBox1.Text.Trim()+"' AND Customer_Password= '"+TextBox2.Text.Trim()+"' ");
        //QueryEx datatable
        if (con.QueryEx().Rows.Count == 0)
        {
            Response.Redirect("~/Home.aspx");
        }
        else {
            Label1.Text = "Invalid Credentials";
        }
        
        //Response.Redirect("~/Home.aspx");
    }
}