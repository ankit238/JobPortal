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
    public partial class Manage_JobProfileSkills : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from tbljobprofile ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            ddljobprofile.DataValueField = "jpr_id";
            ddljobprofile.DataTextField = "jpr_name";
            ddljobprofile.DataSource = dt;
            ddljobprofile.DataBind();
            ddljobprofile.Items.Insert(0, new ListItem("--select--", "0"));
        }


        public void BindSkills()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobprofileskills join tbljobprofile on tbljobprofileskills.jpr_id=tbljobprofile.jpr_id", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvjobprofileskills.DataSource = dt;
            gvjobprofileskills.DataBind();
        }
        protected void txtbutton_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tbljobprofileskills(jpr_id,sk_name)values('" + ddljobprofile.SelectedValue + "','" + txtskills.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindSkills();
        }
    }
}