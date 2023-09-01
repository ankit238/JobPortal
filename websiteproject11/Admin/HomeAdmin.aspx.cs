using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using websiteproject11.Jobseeker;

namespace websiteproject11.Admin
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAdmin();
            }

        }

        public void BindAdmin()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblAdmin where admin_id='" + Session["ADMINID"] + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            lblname.Text = dt.Rows[0]["admin_name"].ToString();
           
            lblemail.Text = dt.Rows[0]["admin_email"].ToString();
            lblpassword.Text = dt.Rows[0]["admin_password"].ToString();

        }
    }
}