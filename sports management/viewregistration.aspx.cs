using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class viewregistration : Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");

        if (!IsPostBack)
        {
            if (Request.QueryString["u_id"] != null)
            {
                int sid = Convert.ToInt32(Request.QueryString["u_id"]);
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM registration WHERE u_id=@sid", con);
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
        SqlCommand cmd = new SqlCommand("SELECT u_id, u_fnm, u_lnm, u_add, u_city, u_eid, u_con, u_sq, u_ans FROM registration", con);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView2.DataSource = dr;
        GridView2.DataBind();
        con.Close();
    }
}

