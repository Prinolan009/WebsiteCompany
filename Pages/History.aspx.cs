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
        try
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/Pages/LoginPage.aspx");//if no session is created, reverts to login page
            }
            Label1.Text = Session["User"].ToString();
            con = new SqlDbConnect();
            con.SqlQuery("SELECT Customer_ID FROM Cust_Table WHERE Customer_Username= '" + Label1.Text.Trim() + "' ");//selects customer ID (FOREIGN KEY) to identify the customers products
            this.id = int.Parse(con.ExecuteScalar());
            Label2.Text = this.id.ToString();
        }
        catch { }
    }


   
}