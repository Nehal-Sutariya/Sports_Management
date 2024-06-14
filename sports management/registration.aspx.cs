using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new SqlCommand("insert into registration(u_unm, u_fnm, u_lnm, u_pwd, u_add, u_city, u_eid, u_con, u_sq, u_ans) values(@unm, @fnm, @lnm, @pwd, @add, @city, @eid, @con, @sq, @ans)", con);
        com.Parameters.AddWithValue("@unm", u_unm.Text);
        com.Parameters.AddWithValue("@fnm", u_fnm.Text);
        com.Parameters.AddWithValue("@lnm", u_lnm.Text);
        com.Parameters.AddWithValue("@pwd", u_pwd.Text);
        com.Parameters.AddWithValue("@add", u_add.Text);
        com.Parameters.AddWithValue("@city", u_city.Text);
        com.Parameters.AddWithValue("@eid", u_eid.Text);
        com.Parameters.AddWithValue("@con", u_con.Text);
        com.Parameters.AddWithValue("@sq", u_sq.SelectedItem.Text);
        com.Parameters.AddWithValue("@ans", u_ans.Text);

        com.ExecuteNonQuery();
        Response.Redirect("login.aspx");
        con.Close();
        clear();
    }

    protected void Reset_Click(object sender, EventArgs e)
    {
        clear();
    }

    void clear()
    {
        u_unm.Text = "";
        u_fnm.Text = "";
        u_lnm.Text = "";
        u_pwd.Text = "";
        u_add.Text = "";
        u_city.Text = "";
        u_eid.Text = "";
        u_con.Text = "";
        u_sq.SelectedIndex = 0; // Assuming the first item is the default one
        u_ans.Text = "";
    }
}

