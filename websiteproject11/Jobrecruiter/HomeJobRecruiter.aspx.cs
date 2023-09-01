using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace websiteproject11.Jobrecruiter
{
    public partial class HomeJobRecruiter : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from tbljobRecruiter where jr_id='" + Session["JRID"] + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lblname.Text = dt.Rows[0]["jr_name"].ToString();
            lblcompanyurl.Text = dt.Rows[0]["jr_url"].ToString();
            lblemail.Text = dt.Rows[0]["jr_email"].ToString();
            lblpassword.Text = dt.Rows[0]["jr_password"].ToString();

        }
    }
}