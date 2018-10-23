using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_History : System.Web.UI.Page
{
    private DateTime dt;
    private SqlDbConnect con;
    private int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("~/Pages/LoginPage.aspx");
        }
        Label1.Text = Session["User"].ToString();
        con = new SqlDbConnect();
        con.SqlQuery("SELECT Customer_ID FROM Cust_Table WHERE Customer_Username= '" + Label1.Text.Trim()+ "' ");
        this.id = int.Parse(con.ExecuteScalar());
        Label2.Text = this.id.ToString();
    }


    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
      
        
        
        /* Label1.Text = Session["User"].ToString();
        Label1.Visible = false;
        con = new SqlDbConnect();
        con.SqlQuery("SELECT Customer_ID FROM Cust_Table WHERE Customer_Username=" + Label1.Text);
        this.id = int.Parse(con.ExecuteScalar());
        Label2.Text = this.id.ToString();
       /* dt = Calendar1.SelectedDate;
        con = new SqlDbConnect();
        con.SqlQuery("SELECT Item_Price FROM Item_Table WHERE Item_ID=" + int.Parse(TextBox1.Text));*/

    }
}