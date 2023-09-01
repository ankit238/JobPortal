using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace websiteproject11.Admin
{
    public partial class Manage_Qualification : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindQualification();
            }
        }

        public void BindQualification()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblqualification", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvqualification.DataSource = dt;
            gvqualification.DataBind();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblqualification(qname)values('" + txtname.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindQualification();

        }
    }
}