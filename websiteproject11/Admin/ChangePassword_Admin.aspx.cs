using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace websiteproject11.Admin
{
    public partial class ChangePassword_Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncp_Click(object sender, EventArgs e)
        {

            if (txtnewpassword.Text == txtconfirmnewpassword.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tblAdmin set admin_password='" + txtnewpassword.Text + "' where admin_id='" + Session["ADMINID"] + "' and admin_password='" + txtcurrentpassword.Text + "'", con);
                int i = cmd.ExecuteNonQuery();


                con.Close();
                if (i == 0)
                {
                    lblmsg.Text = "your current password is not matched!!";
                }
                else
                {
                    lblmsg.Text = "your password has been changed successfully!!";
                }
            }
            else
            {
                lblmsg.Text = "password do not match!!";
            }
        }
    }
}