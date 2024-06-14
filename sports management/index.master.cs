using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class index : System.Web.UI.MasterPage
{
    SqlCommand com;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\sportsmanagement\App_Data\sportsmanagement.mdf;Integrated Security=True");

        if (Session.Contents.Keys.Count > 0)
        {
            if (Session.Contents["u_type"].ToString() == "0")
            {
                msg.Text = "Welcome: " + Session["u_unm"].ToString();
                userlogin.Visible = false;
                userlogout.Visible = true;
                feedback.Visible = true;
                contactus.Visible = true;
                aboutus.Visible = true;
                viewregistration.Visible = false;
                viewgames.Visible = false;
                viewplayer.Visible = false;
                team.Visible = true;
                viewfeedback.Visible = false;
                viewteam.Visible = false;
                player.Visible = true;
            }
            else
            {
                changepassword.Visible = true;
                msg.Text = "Welcome: " + Session["u_unm"].ToString();
                userlogin.Visible = false;
                userlogout.Visible = true;
                feedback.Visible = false;
                contactus.Visible = false;
                aboutus.Visible = false;
                viewregistration.Visible = true;
                viewgames.Visible = true;
                viewplayer.Visible = true;
                team.Visible = false;
                viewfeedback.Visible = true;
                viewteam.Visible = true;
                player.Visible = false;
                games.Visible = false;
                changepassword.Visible = false;
            }
        }
        else
        {
            userlogin.Visible = true;
            userlogout.Visible = false;
            feedback.Visible = false;
            contactus.Visible = true;
            aboutus.Visible = true;
            viewregistration.Visible = false;
            viewgames.Visible = false;
            viewplayer.Visible = false;
            team.Visible = false;
            viewfeedback.Visible = false;
            viewteam.Visible = false;
            player.Visible = false;
            games.Visible = false;
            changepassword.Visible = false;
        }
    }

    protected void userlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Remove("u_unm");
        Session["u_unm"] = "";
        Response.Redirect("~/home.aspx");
    }

    protected void userlogin_Click(object sender, EventArgs e)
    {
        // Your login logic here
    }
}
 