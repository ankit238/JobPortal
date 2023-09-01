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
    public partial class Manage_City : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountry();
                BindCity();
            }
        }

        public void BindState()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblstate where cid='" + ddlcountry.SelectedValue + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            ddlstate.DataValueField = "stateid";
            ddlstate.DataTextField = "statename";
            ddlstate.DataSource = dt;
            ddlstate.DataBind();
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
        }

        public void BindCity()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblcity join tblstate on tblcity.sid= tblstate.stateid join tblcountry on tblstate.cid=tblcountry.cid", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvcity.DataSource = dt;
            gvcity.DataBind();
        }
        protected void btncity_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblcity(sid,ciname)values('" + ddlstate.SelectedValue + "','" + txtcity.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindCity();
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindState();
        }
    }
}