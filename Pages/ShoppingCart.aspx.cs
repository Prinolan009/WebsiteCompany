using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
public partial class Pages_ShoppingCart : System.Web.UI.Page
{
    private SqlDbConnect con;
    private int id;
    private string name;
    private int num;
    public ArrayList nameArr=new ArrayList();
    private Array CostArr;

    protected void Page_Load(object sender, EventArgs e)
    {
      
            if (Session["User"] == null)
            {
                Response.Redirect("~/Pages/LoginPage.aspx");
            }
            //load customer ID
            con = new SqlDbConnect();
            con.SqlQuery("SELECT Customer_ID FROM Cust_Table WHERE Customer_Username= '" + Session["User"].ToString() + "'");
            this.id = int.Parse(con.ExecuteScalar().Trim());
            LabelDate.Text = this.id.ToString();
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.num = 0;
        try
        {
            this.num = GridView1.SelectedIndex + 1;//obtains the index of items and adds 1 to get correct position corellating to ID 
            TextBox1.Text = num.ToString();
        }
        catch {
            TextBox1.Text = "Error";
        }

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Boolean proceed = true;
            //if validation is correct then proceed
          if(TextBox1.Text==""){
              Label7.Visible = true;
              proceed = false;
          }
          if (TextBox2.Text == "")
          {
              Label8.Visible = true;
              proceed = false;
          }
          if (proceed == true)
          {
              float price = 0;


              con = new SqlDbConnect();
              con.SqlQuery("SELECT Item_Price FROM Item_Table WHERE Item_ID=" + int.Parse(TextBox1.Text));
              price = float.Parse(con.ExecuteScalar().Trim());
              con.SqlQuery("SELECT Item_Name FROM Item_Table WHERE Item_ID=" + int.Parse(TextBox1.Text));
              this.name = con.ExecuteScalar().Trim();


              this.nameArr.Add(this.name);
              Label6.Text = Label6.Text + ", " + this.name;
              TextBox3.Text = ((float)price * int.Parse(TextBox2.Text)).ToString();//price of item * quantity

              ListBox1.Items.Add(setText(this.name, float.Parse(TextBox3.Text), int.Parse(TextBox2.Text)));//prints the receipt of purchase
              float temp = 0;
              if (TextBox5.Text == "")
              {
                  TextBox5.Text = temp.ToString();
              }
              TextBox5.Text = (float.Parse(TextBox3.Text) + float.Parse(TextBox5.Text)).ToString();
              //resets textboxes
              TextBox1.Text = "";
              TextBox2.Text = "";
              // TextBox3.Text = "";
          }//end proceed
        }//ends try 
        catch {
           
        }
    }
   

    public static string setText(string name, float price, int quantity) {
        return ""+name + ": R" + price.ToString()+"..........X"+quantity.ToString()+"\n";//sets the text used for printing in listBox
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Are you sure you want to proceed with the purchase?');<script>");
        try
        {
            string temp = "";
            temp = Label6.Text;
            con = new SqlDbConnect();
            //Inserting information into purchase table
            con.SqlQuery("INSERT INTO Purchase_Table (Purchase_Date, Purchase_Price, Purchase_Desc, Cust_ID) VALUES(@Date,@Price,@Desc, @ID)");
            con.cmd.Parameters.Add("@Date", DateTime.Today);
            con.cmd.Parameters.Add("@Price", float.Parse(TextBox5.Text));
            con.cmd.Parameters.Add("@Desc", temp);
            con.cmd.Parameters.Add("@ID", this.id);
            con.NonQuery();

            //resets textboxes incase user wants to purcahse more goods
            TextBox1.Text = "";
            TextBox2.Text = "";
            ListBox1.Items.Clear();
            TextBox5.Text = "";
        }
        catch {
            Response.Write("<script>alert('An error has occured')</script>");﻿
        }
        Response.Write("<script>alert('Your order has been recieved - Thank you')</script>");﻿
    }
    
}