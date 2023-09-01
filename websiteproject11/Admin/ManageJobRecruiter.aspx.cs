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
    public partial class ManageJobRecruiter : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from  tbljobRecruiter", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            gvjobrecruiter.DataSource = dt;
            gvjobrecruiter.DataBind();

        }
    }
}