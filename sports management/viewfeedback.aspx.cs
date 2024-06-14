using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class viewfeedback : Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");

        if (!IsPostBack)
        {
            con.Open();
            if (Request.QueryString["f_id"] != null)
            {
                int sid = Convert.ToInt32(Request.QueryString["f_id"]);
                SqlCommand cmd = new SqlCommand("DELETE FROM feedback WHERE f_id=@sid", con);
                cmd.Parameters.AddWithValue("@sid", sid);
                cmd.ExecuteNonQuery();
            }
            con.Close();

            DisplayData();
        }
    }

    protected void DisplayData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT f_id, u_unm, comment FROM feedback", con);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        con.Close();
    }
}
