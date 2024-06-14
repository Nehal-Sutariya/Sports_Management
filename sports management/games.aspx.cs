using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class games : Page
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
        cmd = new SqlCommand("INSERT INTO games (g_name) VALUES (@g_name)", con);
        cmd.Parameters.AddWithValue("@g_name", g_nm.SelectedValue);
        
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("home.aspx");
    }
}
