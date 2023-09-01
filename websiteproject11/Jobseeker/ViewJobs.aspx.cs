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
    public partial class ViewJobs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindJobPost();
                BindJobLocation();
            }
        }


        public void BindJobPost()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost join tbljobrecruiter on tbljobpost.jr_id=tbljobrecruiter.jr_id join tbljobprofile on tbljobpost.jpr_id=tbljobprofile.jpr_id join tbljoblocaion on tbljobpost.jp_id=tbljoblocaion.jl_id where tbljobpost.status=0", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
           
            gvjobs.DataSource = dt;
            gvjobs.DataBind();
           

        }

        public void BindJobLocation()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljoblocaion", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            ddljoblocation.DataValueField = "jl_id";
            ddljoblocation.DataTextField = "jl_name";
            ddljoblocation.DataSource = dt;
            ddljoblocation.DataBind();
            ddljoblocation.Items.Insert(0, new ListItem("--Select--", "0"));

        }


        protected void btnsearch_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost join tbljobrecruiter on tbljobpost.jr_id=tbljobrecruiter.jr_id join tbljobprofile on tbljobpost.jpr_id=tbljobprofile.jpr_id join tbljoblocaion on tbljobpost.jp_id=tbljoblocaion.jl_id where tbljobpost.status=0 and tbljobpost.jl_id='"+ddljoblocation.SelectedValue+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            gvjobs.DataSource = dt;
            gvjobs.DataBind();
        }
    }
}