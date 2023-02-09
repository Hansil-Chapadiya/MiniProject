using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Remove_dish : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Label3.Visible = false;
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        for(int i = 0; i < RadioButtonList1.Items.Count; i++)
        {
            if (RadioButtonList1.Items[0].Selected == true)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false; 
                Panel4.Visible = false;
            }
            else if(RadioButtonList1.Items[1].Selected == true)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
            else if(RadioButtonList1.Items[2].Selected == true)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
            }
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        conn.Open();
        string sql1 = "delete from Chinease_Food where Dish_name = '" + DropDownList1.SelectedItem.Text+"'";
        
        try
        {
            SqlCommand cmd = new SqlCommand(sql1, conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Label3.Visible = true;
            Label3.Text = "Selected Dish "+DropDownList1.SelectedItem.Text+" is Deleted !!";

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        conn.Close();
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        conn.Open();
        string sql1 = "delete from French_Food where Dish_name = '" + DropDownList2.SelectedItem.Text + "'";

        try
        {
            SqlCommand cmd = new SqlCommand(sql1, conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Label3.Visible = true;
            Label3.Text = "Selected Dish " + DropDownList2.SelectedItem.Text + " is Deleted !!";

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        conn.Close();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        conn.Open();
        string sql1 = "delete from Italian_Food where Dish_name = '" + DropDownList3.SelectedItem.Text + "'";

        try
        {
            SqlCommand cmd = new SqlCommand(sql1, conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Label3.Visible = true;
            Label3.Text = "Selected Dish " + DropDownList3.SelectedItem.Text + " is Deleted !!";

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        conn.Close();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        conn.Open();
        string sql1 = "delete from Japanese_Food where Dish_name = '" + DropDownList4.SelectedItem.Text + "'";

        try
        {
            SqlCommand cmd = new SqlCommand(sql1, conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Label3.Visible = true;
            Label3.Text = "Selected Dish " + DropDownList4.SelectedItem.Text + " is Deleted !!";

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        conn.Close();
    }
}