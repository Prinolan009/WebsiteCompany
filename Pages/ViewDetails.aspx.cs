using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ViewDetails : System.Web.UI.Page
{
    private SqlDbConnect con;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label1.Text = Session["User"].ToString();
        Label1.Visible = false;
        /*con = new SqlDbConnect();
        con.SqlQuery("SELECT Customer_Username FROM Cust_Table WHERE Customer_Username=" +Label1.Text.Trim() );
       con.ExecuteScalar().Trim();*/
    }
}