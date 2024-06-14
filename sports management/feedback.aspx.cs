using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class feedback : Page
{
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("INSERT INTO feedback (u_unm, comment) VALUES (@u_unm, @comment)", con);
        cmd.Parameters.AddWithValue("@u_unm", u_unm.Text);
        cmd.Parameters.AddWithValue("@comment", comment.Text);
        
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("home.aspx");

        clear();
    }

    void clear()
    {
        u_unm.Text = "";
        comment.Text = "";
    }
}
