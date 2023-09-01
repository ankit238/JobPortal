using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace websiteproject11.Jobrecruiter
{
    public partial class Registration_jobrecuriter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_jobrecruiter_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@jr_name", txtname.Text);
            cmd.Parameters.AddWithValue("@jr_url", txtcompanyurl.Text);
            cmd.Parameters.AddWithValue("@jr_email", Txtemail.Text);
            cmd.Parameters.AddWithValue("@jr_password", Txtpassword.Text);

            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}