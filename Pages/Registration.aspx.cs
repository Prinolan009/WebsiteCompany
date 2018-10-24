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
    private SqlDbConnect con;
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Boolean proceed = false;
            string Email = "";
            //validation cell number


            //validation email
            con = new SqlDbConnect();
            con.SqlQuery("SELECT Customer_Email FROM Cust_Table ");//selecting email from customer table for validation
            Email = con.ExecuteScalar();
            if (TextBox3.Text == Email)
            {
                Label2.Visible = true;
                proceed = false;
            }
            else
            {
                Label2.Visible = false;
                proceed = true;
            }

            if (proceed == true)
            {

                con = new SqlDbConnect();
                con.SqlQuery("INSERT INTO Cust_Table (Customer_Name, Customer_Surname, Customer_Email, Customer_Cell, Customer_Username, Customer_Password) VALUES(@NameP,@SurnameP,@EmailP, @CellP,@UserP,@PassP )");
                con.cmd.Parameters.Add("@NameP", TextBox1.Text.Trim());
                con.cmd.Parameters.Add("@SurnameP", TextBox2.Text.Trim());
                con.cmd.Parameters.Add("@EmailP", TextBox3.Text.Trim());
                con.cmd.Parameters.Add("@CellP", TextBox4.Text.Trim());
                con.cmd.Parameters.Add("@UserP", TextBox5.Text.Trim());
                con.cmd.Parameters.Add("@PassP", TextBox6.Text.Trim());
                con.NonQuery();
                //inserting new details into db


                Response.Redirect("~/Pages/LoginPage.aspx");
            }
        }
        catch { 
        
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox4.Text="+27";
    }
}