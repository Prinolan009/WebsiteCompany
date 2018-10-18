using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CompanyConnectionString"].ConnectionString);
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into Customer values('" + TextBox1.Text.ToString() + "', '" + TextBox2.Text.ToString() + "', '" + TextBox3.Text.ToString() + "', '" + TextBox4.Text.ToString() + "', '" + TextBox6.Text.ToString() + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        
    }
}