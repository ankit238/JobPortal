using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace websiteproject11.Admin
{
    public partial class ManageJobPost : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindJobPost();
            }
        }


        public void BindJobPost()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost join tbljobrecruiter on tbljobpost.jr_id=tbljobrecruiter.jr_id join tbljobprofile on tbljobpost.jpr_id=tbljobprofile.jpr_id join tbljoblocaion on tbljobpost.jp_id=tbljoblocaion.jl_id", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            gvjobs.DataSource = dt;
            gvjobs.DataBind();


        }

        protected void gvjobs_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "B")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("JobPost_StatusChange", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@jp_id", e.CommandArgument);
                cmd.ExecuteNonQuery();
                con.Close();
                BindJobPost();
            }
        }
    }
}