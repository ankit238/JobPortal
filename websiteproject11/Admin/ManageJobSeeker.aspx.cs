using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;

namespace websiteproject11.Admin
{
    public partial class ManageJobSeeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobSeeker();
            }

        }

        public void BindJobSeeker()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("jobseeker_join", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            gvjobseeker.DataSource = dt;
            gvjobseeker.DataBind();

        }

        protected void gvjobseeker_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="B")
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("JobSeeker_StatusChange", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@js_id", e.CommandArgument);
                cmd.ExecuteNonQuery();
                con.Close();
                BindJobSeeker();

            }
           


             if (e.CommandName =="R")
              {
                  Response.Redirect("../Jobseeker\\JobSeeker_resume\\" + e.CommandArgument);
              }

        }
    }
       
}