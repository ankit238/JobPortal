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
    public partial class Manage_State : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-4M3GBNE\\SQLEXPRESS; initial catalog=DB_JOBPORTAL; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindCountry();
                BindState();
            }

        }
        public void BindState()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblstate join tblcountry on tblstate.cid=tblcountry.cid", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            gvstates.DataSource = dt;
            gvstates.DataBind();
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

        protected void txtbutton_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblstate(cid,statename)values('" + ddlcountry.SelectedValue + "','" + txtstate.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindState();

        }
    }
}