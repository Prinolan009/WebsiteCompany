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
        try
        {
            con = new SqlDbConnect();
            con.SqlQuery("SELECT Customer_Username , Customer_Password FROM Cust_Table WHERE Customer_Username = '" + TextBox1.Text.Trim() + "' AND Customer_Password= '" + TextBox2.Text.Trim() + "'");

            Uname = con.ExecuteScalar();


            if (Uname.Equals(TextBox1.Text.Trim()))
            {
              //  Label1.Text = "Found";
                Label1.Visible = false;
                Session["User"] = TextBox1.Text.Trim();
                Response.Redirect("~/Pages/Home.aspx");
                
            }
           

        }
        catch {
            Label1.Visible = true;
        }
        
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}