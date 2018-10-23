using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["User"]==null){
            Button1.Text = "Sign-In";
            //Response.Redirect("~/Pages/LoginPage.aspx");
        }
        if (Session["User"] != null)
        {
            Button1.Text = "Sign-out";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Session["User"] = null;
        }

        if (Session["User"] == null)
        {
            Button1.Text = "Sign-In";
            Response.Redirect("~/Pages/LoginPage.aspx");
        }
    }
}
