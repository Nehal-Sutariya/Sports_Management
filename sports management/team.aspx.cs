using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class team : Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");
    }

    protected void btn1_click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("INSERT INTO team (t_nm, c_nm, t_weight, t_height, t_age) VALUES (@t_nm, @c_nm, @t_weight, @t_height, @t_age)", con);
        cmd.Parameters.AddWithValue("@t_nm", t_nm.Text);
        cmd.Parameters.AddWithValue("@c_nm", c_nm.SelectedValue);
        cmd.Parameters.AddWithValue("@t_weight", t_weight.Text);
        cmd.Parameters.AddWithValue("@t_height", t_height.Text);
        cmd.Parameters.AddWithValue("@t_age", t_age.Text);
        
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("home.aspx");

        clear();
    }

    protected void btn2_click(object sender, EventArgs e)
    {
        clear();
    }

    void clear()
    {
        t_nm.Text = "";
        c_nm.SelectedIndex = 0;
        t_weight.Text = "";
        t_height.Text = "";
        t_age.Text = "";
    }
}
