using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Add_stock : System.Web.UI.Page
{
    static string dishName = "";
    int rem_stock = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=HANSIL-S-PC-DGJ\\SQLEXPRESS;Initial Catalog=Mini;Integrated Security=True";
        con.Open();
        int stock1 = Int16.Parse(TextBox1.Text);
        string sql1 = "update " + RadioButtonList1.SelectedItem.Text + " set Stock = '" + stock1 + "' where Dish_name = '" + dishName + "'";
        try
        {
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Label2.Text = "New stock is Added in " + dishName;

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        con.Close();

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
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Peking Dunk";
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Chineses Dumplings";
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Bean Curd";
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Fried Noodles";
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Macaroni";
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Creme Brulee";
    }

    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Onion Soup";
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Souffle";
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Pizzza";
    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Lasagna";
    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Spaghetti";
    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Carpaccio";
    }

    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Shushi";
    }

    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Ramen";
    }

    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Sake";
    }

    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        dishName = "Onigiri";
    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < RadioButtonList2.Items.Count; i++)
        {
            if (RadioButtonList2.Items[0].Selected == true)
            {
                Panel5.Visible = true;
                Panel6.Visible = false;
            }
            else
            {
                Panel6.Visible = true;
                Panel5.Visible = false;
            }
        }
    }

    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < RadioButtonList3.Items.Count; i++)
        {
            if (RadioButtonList3.Items[0].Selected == true)
            {
                Panel7.Visible = true;
                Panel8.Visible = false;
                Panel9.Visible = false;
                Panel10.Visible = false;
            }
            else if (RadioButtonList3.Items[1].Selected == true)
            {
                Panel7.Visible = false;
                Panel8.Visible = true;
                Panel9.Visible = false;
                Panel10.Visible = false;
            }
            else if (RadioButtonList3.Items[2].Selected == true)
            {
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = true;
                Panel10.Visible = false;
            }
            else if (RadioButtonList3.Items[3].Selected == true)
            {
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = false;
                Panel10.Visible = true;
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int stock;

        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=LAPTOP-IJ86VO59\\SQLEXPRESS;Initial Catalog=Mini_Project;Integrated Security=True";
        con.Open();
        int today_sell = Int16.Parse(TextBox2.Text);
        string sql1 = "select stock from " + RadioButtonList3.SelectedItem.Text + " where Dish_name = '" + dishName + "'";
        string sql2 = "";
        try
        {
            SqlCommand cmd = new SqlCommand(sql1, con);
            SqlDataReader dr = cmd.ExecuteReader();
            cmd.Dispose();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    stock = dr.GetInt16(0);
                    //stock = Convert.ToInt16(stock);
                    //Response.Write(stock);
                    rem_stock = stock - today_sell;
                    dr.Close();
                    Response.Write(rem_stock);
                    //rem_stock = Convert.ToInt16(rem_stock);
                    sql2 = "update " + RadioButtonList3.SelectedItem.Text + " set Stock = '" + rem_stock + "' where Dish_name = '" + dishName + "'";

                }
            }
            //Label2.Text = "New stock is Added in " + dishName;
            try
            {
                SqlCommand cmd1 = new SqlCommand(sql2, con);
                cmd1.ExecuteNonQuery();
                cmd1.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(" 1" + ex.Message);
            }
        }
        catch (Exception ex)
        {
            Response.Write("2" + ex.Message);
        }
        con.Close();
    }
}