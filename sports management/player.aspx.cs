using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class player : Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");
    }

    protected void btn3_click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("INSERT INTO player (p_name, g_id) VALUES (@p_name, @g_id)", con);
        cmd.Parameters.AddWithValue("@p_name", p_nm.Text);
        cmd.Parameters.AddWithValue("@g_id", g_id.Text);
        
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
        p_nm.Text = "";
        g_id.Text = "";
    }
}
