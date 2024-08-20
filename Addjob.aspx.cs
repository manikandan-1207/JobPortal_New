using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal
{
    public partial class Addjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.show();




            }




        }
        private void show()
        {



            string constr = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand checkroll = new SqlCommand("select * from cmpregtb where UserName='" + Session["UserName"] + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataSet dt = new DataSet();
            sd.Fill(dt);



            lblcmpnyname.Text = dt.Tables[0].Rows[0]["CName"].ToString();
           



        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string put = "insert into Addjobtb values('" + lblcmpnyname.Text + "','" + TxtJobCtgry.Text + "','" + TxtRequiredskill.Text + "','" + dropjobrole.Text + "','" + TxtQualification.Text + "','" + TxtExtraSkill.Text + "','" + TxtMaxAge.Text + "','" + DropExpectedSalary.Text + "','" + dropJobLocation.Text + "','" + DropWorkinghours.Text + "','" + Txtjobdescription.Text + "')";



            SqlCommand cmd = new SqlCommand(put, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}