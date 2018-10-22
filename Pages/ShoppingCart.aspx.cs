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
        Boolean proceed = true;//used to check if textboxes are filled
        //validation
        if(TextBox1.Text==""){
            Label4.Visible=true;
            proceed = false;
        }
        if (TextBox2.Text == "")
        {
            Label5.Visible = true;
            proceed = false;
        }

        if (TextBox1.Text != "")
        {
            Label4.Visible = false;
        }

        if (TextBox2.Text != "")
        {
            Label5.Visible = false;
        }


        //if validation is correct then proceed
      if(proceed==true){
            Label4.Visible = false;
            Label5.Visible = false;
            float price = 0;
           // string name = "";
        
        con = new SqlDbConnect();
        con.SqlQuery("SELECT Item_Price FROM Item_Table WHERE Item_ID="+int.Parse(TextBox1.Text));
        price = float.Parse(con.ExecuteScalar().Trim());
        con.SqlQuery("SELECT Item_Name FROM Item_Table WHERE Item_ID=" + int.Parse(TextBox1.Text));
        this.name = con.ExecuteScalar().Trim();


            this.nameArr.Add(this.name);
            TextBox3.Text = ((float)price * int.Parse(TextBox2.Text)).ToString();//price of item * quantity
            TextBox4.Text = setText(TextBox4.Text, this.name, float.Parse(TextBox3.Text), int.Parse(TextBox2.Text));

        float temp=0;
        if(TextBox5.Text==""){
            TextBox5.Text = temp.ToString();
        }
            TextBox5.Text = (float.Parse(TextBox3.Text) + float.Parse(TextBox5.Text)).ToString();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }//ends validation phase
    }
   

    public static string setText(string text,string name, float price, int quantity) {
        return text+""+name + ": R" + price.ToString()+"..........X"+quantity.ToString()+"\n";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        con = new SqlDbConnect();

        con.SqlQuery("INSERT INTO Purchase_Table (Purchase_Date, Purchase_Price, Purchase_Desc, Cust_ID) VALUES(@Date,@Price,@Desc, @ID)");
        con.cmd.Parameters.Add("@Date", DateTime.Today);
        con.cmd.Parameters.Add("@Price", float.Parse(TextBox5.Text.Trim()));
        con.cmd.Parameters.Add("@Desc", this.nameArr.ToString());
        con.cmd.Parameters.Add("@ID", this.id);
        con.NonQuery();
        
    }
}