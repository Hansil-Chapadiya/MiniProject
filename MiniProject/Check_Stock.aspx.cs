using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Check_Stock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < RadioButtonList1.Items.Count; i++)
        {
            if (RadioButtonList1.Items[0].Selected == true)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
            else if (RadioButtonList1.Items[1].Selected == true)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
            else if (RadioButtonList1.Items[2].Selected == true)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
            }
            else if (RadioButtonList1.Items[3].Selected == true)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
            }
        }
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        conn.Open();
        string sql1 = "select * from " + RadioButtonList1.SelectedItem.Text + "  ";
        try
        {
            SqlCommand cmd = new SqlCommand(sql1, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (Panel1.Visible == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
                Label3.Text = "This is " + RadioButtonList1.SelectedItem.Text;
            }
            else if (Panel2.Visible == true)
            {
                GridView2.DataSource = dr;
                GridView2.DataBind();
                Label4.Text = "This is " + RadioButtonList1.SelectedItem.Text;
            }
            else if (Panel3.Visible == true)
            {
                GridView3.DataSource = dr;
                GridView3.DataBind();
                Label5.Text = "This is " + RadioButtonList1.SelectedItem.Text;
            }
            else
            {
                GridView4.DataSource = dr;
                GridView4.DataBind();
                Label6.Text = "This is " + RadioButtonList1.SelectedItem.Text;
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        con.Open();
        string sql2 = "select * from Chinease_Food where Dish_name = '"+TextBox1.Text+"'";
        
        try
        {
            SqlCommand cmd = new SqlCommand(sql2, con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            GridView5.DataSource = dr;
            GridView5.DataBind();
            
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        con.Open();
        string sql2 = "select * from French_Food where Dish_name = '" + TextBox2.Text + "'";

        try
        {
            SqlCommand cmd = new SqlCommand(sql2, con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;

            GridView6.DataSource = dr;
            GridView6.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        con.Open();
        string sql2 = "select * from Italian_Food where Dish_name = '" + TextBox3.Text + "'";

        try
        {
            SqlCommand cmd = new SqlCommand(sql2, con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
            GridView7.DataSource = dr;
            GridView7.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        con.Open();
        string sql2 = "select * from Japanese_Food where Dish_name = '" + TextBox4.Text + "'";

        try
        {
            SqlCommand cmd = new SqlCommand(sql2, con);
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
            GridView8.DataSource = dr;
            GridView8.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}