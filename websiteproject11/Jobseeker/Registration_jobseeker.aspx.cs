using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace websiteproject11.Jobseeker
{
    public partial class Registration_jobseeker : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGender();
                BindQualification();
                BindCountry();
                BindJobProfile();
                BindSkills();
                ddlstate.Items.Insert(0, new ListItem("--select--", "0"));
                ddlcity.Items.Insert(0, new ListItem("--select--", "0"));
                ddlstate.Enabled = false;
                ddlcity.Enabled = false;
           
             
            }

        }

        public void BindGender()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblgender", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            rblgender.DataValueField = "gid";
            rblgender.DataTextField = "gname";
            rblgender.DataSource = dt;
            rblgender.DataBind();
        }

        public void BindJobProfile()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobprofile", con);
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

        public void BindQualification()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblqualification", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            ddlqualification.DataValueField = "qid";
            ddlqualification.DataTextField = "qname";
            ddlqualification.DataSource = dt;
            ddlqualification.DataBind();
            ddlqualification.Items.Insert(0, new ListItem("--select--", "0"));

        }

        public void BindCountry()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblcountry", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            ddlcountry.DataValueField = "cid";
            ddlcountry.DataTextField = "cname";
            ddlcountry.DataSource = dt;
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, new ListItem("--select--", "0"));
        }

        public void BindState()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblstate where cid='" + ddlcountry.SelectedValue + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            ddlstate.Enabled = true;
            ddlstate.DataValueField = "stateid";
            ddlstate.DataTextField = "statename";
            ddlstate.DataSource = dt;
            ddlstate.DataBind();
            ddlstate.Items.Insert(0, new ListItem("--select--", "0"));
        }

        public void BindCity()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblcity where sid='" + ddlstate.SelectedValue + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            ddlcity.Enabled = true;
            ddlcity.DataValueField = "cityid";
            ddlcity.DataTextField = "ciname";
            ddlcity.DataSource = dt;
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, new ListItem("--select--", "0"));
        }

        public void BindSkills()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobprofileskills where jpr_id='" + ddljobprofile.SelectedValue + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            //tr_skills.Visible = true;
            cblskills.DataValueField = "sk_id";
            cblskills.DataTextField = "sk_name";
            cblskills.DataSource = dt;
            cblskills.DataBind();
        }



        protected void btnregister_Click(object sender, EventArgs e)
        {
            string rs = "";
            for (int i = 0; i < cblskills.Items.Count; i++)
            {
                if (cblskills.Items[i].Selected == true)
                {
                    rs += cblskills.Items[i].Text + ",";
                }
            }

            rs = rs.TrimEnd(',');

            string imageName = Path.GetFileName(fuimage.PostedFile.FileName);
            fuimage.SaveAs(Server.MapPath("JobSeeker_Image" + "\\" + imageName));

            string resumeName = Path.GetFileName(furesume.PostedFile.FileName);
            furesume.SaveAs(Server.MapPath("JobSeeker_resume" + "\\" + resumeName));
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_jobseeker_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@js_name", txtname.Text);
            cmd.Parameters.AddWithValue("@js_gender", rblgender.SelectedValue);
            cmd.Parameters.AddWithValue("@js_dob", txtdob.Text);
            cmd.Parameters.AddWithValue("@js_qualification", ddlqualification.SelectedValue);
            cmd.Parameters.AddWithValue("@js_jobprofile", ddljobprofile.SelectedValue);
            cmd.Parameters.AddWithValue("@js_skills", rs);
            cmd.Parameters.AddWithValue("@js_country", ddlcountry.SelectedValue);
            cmd.Parameters.AddWithValue("@js_state", ddlstate.SelectedValue);
            cmd.Parameters.AddWithValue("@js_city", ddlcity.SelectedValue);
            cmd.Parameters.AddWithValue("@js_email", Txtemail.Text);
            cmd.Parameters.AddWithValue("@js_password", Txtpassword.Text);
            cmd.Parameters.AddWithValue("@js_image", imageName);
            cmd.Parameters.AddWithValue("@js_resume", resumeName);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindState();
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindCity();
        }


        protected void ddljobprofile_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindSkills();
        }
    }
}