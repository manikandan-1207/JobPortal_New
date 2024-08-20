using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace job_portal
{
    public partial class Applyjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.bind();




            }



        }

        private void bind()
        {



            string str = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sn = new SqlConnection(str);

            Label1.Text = Request.QueryString["Companyname"];
            Label2.Text = Request.QueryString["Jobcategory"];
            Label3.Text = Request.QueryString["Requiredskill"];
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sn = new SqlConnection(str);


  
            string put = "insert into Jobapp values('" + Label1.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + txtemailid.Text + "','" + TextBox5.Text + "')";



            SqlCommand cmd = new SqlCommand(put, sn);
            sn.Open();
            cmd.ExecuteNonQuery();



            sn.Close();



            Label1.Text = "submited Sucessfully";
        }
    }
}