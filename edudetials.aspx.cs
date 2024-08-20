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
    public partial class edudetials : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sa = new SqlConnection(cs);
            sa.Open();
             SqlCommand check = new SqlCommand("select Enrollno from edudetials where Enrollno =' " + Txtrollno.Text + "'", sa);
            SqlDataAdapter adapt = new SqlDataAdapter(check);
            DataTable dt = new DataTable();
            adapt.Fill(dt);


            if (dt.Rows.Count > 0 && dt.Rows.Count==0) 
            {
                string st = "insert into edudetials  values('" + Txtrollno.Text + "','" + Txtclgname.Text + "','" + Txtsemester.Text + "','" + Txteducation.Text + "','" + Txtbranch.Text + "','" + Txtpassingyear.Text + "','" + Txtcpi.Text + "','" + Txtcgpa.Text + "','" + Txtskill.Text + "','" + Txtextraskill.Text + "','" + Txtresume.Text + "')";
                   SqlCommand cmd = new SqlCommand(st, sa);

                cmd.ExecuteNonQuery();
                sa.Close();
             Label1.Text = "Data Submitted Sucessfully ";
            }



            else
            {
                 Label1.Text = "Roll no not match";



            }

             Txtrollno.Text = "";
            Txtclgname.Text = "";
            Txtsemester.Text = "";
            Txteducation.Text = "";
            Txtbranch.Text = "";
            Txtpassingyear.Text = "";
            Txtcpi.Text = "";
            Txtcgpa.Text = "";
            Txtskill.Text = "";
            Txtextraskill.Text = "";
            Txtresume.Text = "";

   }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            Txtrollno.Text = "";
            Txtclgname.Text = "";
            Txtsemester.Text = "";
            Txteducation.Text = "";
            Txtbranch.Text = "";
            Txtpassingyear.Text = "";
            Txtcpi.Text = "";
            Txtcgpa.Text = "";
            Txtskill.Text = "";
            Txtextraskill.Text = "";
            Txtresume.Text = "";



        }
    }
}
