using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class forgetpassword2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string ans;
    int k;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0; AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf; Integrated Security=True");

        if (!IsPostBack)
        {
            if (Request.QueryString["u_id"] != null)
            {
                k = Convert.ToInt32(Request.QueryString["u_id"]);
                cmd = new SqlCommand("select * from registration where u_id = @id", con);
                cmd.Parameters.AddWithValue("@id", k);
                
                con.Open();
                dr = cmd.ExecuteReader();
                
                if (dr.HasRows)
                {
                    dr.Read();
                    u_sq.SelectedValue = dr["u_sq"].ToString();
                    ans = dr["u_ans"].ToString();
                }

                con.Close();
            }
            else
            {
                // Handle error or redirect if u_id parameter is missing
            }
        }
    }

    protected void next_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from registration where u_sq = @sq and u_id = @id", con);
        cmd.Parameters.AddWithValue("@sq", u_sq.SelectedValue);
        cmd.Parameters.AddWithValue("@id", k);

        con.Open();
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            string correctAnswer = dr["u_ans"].ToString();
            if (string.Equals(correctAnswer, u_ans.Text, StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("forgetpassword3.aspx?u_id=" + k);
            }
            else
            {
                // Handle incorrect answer scenario
            }
        }
        else
        {
            // Handle no rows found scenario
        }

        con.Close();
    }
}
