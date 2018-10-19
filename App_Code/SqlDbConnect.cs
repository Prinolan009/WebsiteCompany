using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for SqlDbConnect
/// </summary>
public class SqlDbConnect
{
    private SqlConnection con;
    public SqlCommand cmd;
    private SqlDataAdapter da;
    private DataTable dt;

	public SqlDbConnect()
	{
        //Data Source=SAMSUNG\SQLEXPRESS;Initial Catalog=Company;Integrated Security=True
		// TODO: Add constructor logic here
		//
        con = new SqlConnection(@"Data Source=SAMSUNG\SQLEXPRESS;Initial Catalog=Company;Integrated Security=True");
        con.Open();

	}

    public void SqlQuery(string text) {
        cmd = new SqlCommand(text, con);
    }

    public DataTable QueryEx() {
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public void NonQuery()
    {
        cmd.ExecuteNonQuery();
    }
}