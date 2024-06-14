using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class forgetpassword3 : Page
{
    SqlConnection con;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        if (new_pwd.Text == con_pwd.Text)
        {
            int u_id = Convert.ToInt32(Request.QueryString["u_id"].ToString());
            
            cmd = new SqlCommand("update Registration set u_pwd=@password where u_id=@id", con);
            cmd.Parameters.AddWithValue("@password", new_pwd.Text);
            cmd.Parameters.AddWithValue("@id", u_id);
            
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (i > 0)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                // Handle update failure scenario
                Response.Redirect("forgetpassword3.aspx");
            }
        }
        else
        {
            // Passwords don't match scenario
            Response.Redirect("forgetpassword3.aspx");
        }
    }
}
