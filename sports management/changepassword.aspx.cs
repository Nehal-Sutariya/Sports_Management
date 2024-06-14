using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class changepassword : Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");
    }

    protected void btnclogin_click(object sender, EventArgs e)
    {
        string str = "SELECT * FROM registration WHERE u_unm=@username AND u_pwd=@oldpassword";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@username", txtunm.Text);
        cmd.Parameters.AddWithValue("@oldpassword", txtopwd.Text);

        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        con.Close();

        if (dt.Rows.Count > 0)
        {
            if (txtnpwd.Text == txtconfipass.Text)
            {
                con.Open();
                int u_id = Convert.ToInt32(dt.Rows[0]["u_id"]);
                string updateQuery = "UPDATE registration SET u_pwd=@newpassword WHERE u_id=@userid";
                SqlCommand updateCmd = new SqlCommand(updateQuery, con);
                updateCmd.Parameters.AddWithValue("@newpassword", txtnpwd.Text);
                updateCmd.Parameters.AddWithValue("@userid", u_id);
                updateCmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("home.aspx");
            }
            else
            {
                // Passwords do not match logic or error handling
            }
        }
        else
        {
            // Username or old password is incorrect logic or error handling
        }
    }
}
