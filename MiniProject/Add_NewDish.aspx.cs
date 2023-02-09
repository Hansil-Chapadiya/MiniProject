using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Add_NewDish : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        conn.Open();
        
        try
        {
            string sql1 = "insert into "+DropDownList1.SelectedItem.Text+" values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            SqlCommand cmd = new SqlCommand(sql1,conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
        conn.Close();
    }
}