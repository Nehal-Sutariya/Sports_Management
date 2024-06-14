using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class forgetpassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new SqlCommand("select * from registration where u_unm=@unm and u_sq=@sq and u_ans=@ans", con);
        com.Parameters.AddWithValue("@unm", u_unm.Text);
        com.Parameters.AddWithValue("@sq", u_sq.Text);
        com.Parameters.AddWithValue("@ans", u_ans.Text);
        dr = com.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            // Assuming you have a page to reset the password
            Response.Redirect("resetpassword.aspx");
        }
        else
        {
            // Inform user that the details are incorrect
            // You can add a label on the page and set its text here
        }
        con.Close();
    }
}
