using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace websiteproject11.Admin
{
    public partial class Manage_Country : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobCountry();
            }
        }
        public void BindJobCountry()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblcountry", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvcountry.DataSource = dt;
            gvcountry.DataBind();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblcountry(cname)values('" + txtcountry.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindJobCountry();

        }
    }
}