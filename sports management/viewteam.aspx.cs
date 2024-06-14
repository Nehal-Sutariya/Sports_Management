using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class viewteam : Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");

        if (!IsPostBack)
        {
            if (Request.QueryString["t_id"] != null)
            {
                int sid = Convert.ToInt32(Request.QueryString["t_id"]);
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM team WHERE t_id=@sid", con);
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
        SqlCommand cmd = new SqlCommand("SELECT t_id, t_nm, c_nm, t_weight, t_height, t_age FROM team", con);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView2.DataSource = dr;
        GridView2.DataBind();
        con.Close();
    }
}
