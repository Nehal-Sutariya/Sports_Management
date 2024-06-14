using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
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
        com = new SqlCommand("select * from registration where u_unm=@unm and u_pwd=@pwd", con);
        com.Parameters.AddWithValue("@unm", u_unm.Text);
        com.Parameters.AddWithValue("@pwd", u_pwd.Text);
        dr = com.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            Session["u_unm"] = dr["u_unm"].ToString();
            Session["u_type"] = dr["u_type"].ToString(); // assuming there's a user type column in the table
            Response.Redirect("home.aspx");
        }
        else
        {
            msg.Text = "Invalid Username or Password!";
        }
        con.Close();
    }
}

