using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using websiteproject11.Jobrecruiter;

namespace websiteproject11.Admin
{
    public partial class Manage_JobProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobProfile();
            }
        }

        public void BindJobProfile()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from  tbljobprofile", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            gvjobprofile.DataSource = dt;
            gvjobprofile.DataBind();

        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tbljobprofile(jpr_name) values('" + txtname.Text + "')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindJobProfile();
        }

    }
}