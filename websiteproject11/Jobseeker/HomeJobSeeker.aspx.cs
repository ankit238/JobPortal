using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace websiteproject11.Jobseeker
{
    public partial class HomeJobSeeker : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("JobSeeker_Join_one", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@js_id" ,Session["JSID"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lblname.Text = dt.Rows[0]["js_name"].ToString();
            lblgender.Text = dt.Rows[0]["js_gender"].ToString()=="1"?"male" : dt.Rows[0]["js_gender"].ToString()=="2"? "female":"other";
            lblemail.Text = dt.Rows[0]["js_email"].ToString();
            lblpassword.Text = dt.Rows[0]["js_password"].ToString();
            lblqualification.Text = dt.Rows[0]["qname"].ToString();
            lblskills.Text = dt.Rows[0]["js_skills"].ToString();
            lbljobprofile.Text = dt.Rows[0]["jpr_name"].ToString();
            lbladdress.Text = dt.Rows[0]["ciname"].ToString() + "," + dt.Rows[0]["statename"].ToString() + "," + dt.Rows[0]["cname"].ToString();
            imgjobseeker.ImageUrl = "../jobseeker\\JobSeeker_Image\\" + dt.Rows[0]["js_image"].ToString();
            btnresume.Text = dt.Rows[0]["js_resume"].ToString();
        }

        protected void btnresume_Click(object sender, EventArgs e)
        {

        }
    }
}