using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class viewgames : Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");

        if (!IsPostBack)
        {
            if (Request.QueryString["g_id"] != null)
            {
                int sid = Convert.ToInt32(Request.QueryString["g_id"]);
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM games WHERE g_id=@sid", con);
                cmd.Parameters.AddWithValue("@sid", sid);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            DisplayData();
        }
    }

    protected void DisplayData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT g_id, g_name FROM games", con);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        con.Close();
    }
}
