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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* string cs = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sa = new SqlConnection(cs);
            string str = "Select "
            SqlCommand cmd = new SqlCommand(str, sa);*/


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sa = new SqlConnection(cs);
            string str = "select count(1) from studreg where Username=@Username and Password=@Password";
            SqlCommand cmd = new SqlCommand(str,sa);
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
            sa.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());

            if (count == 1)
            {
                Session["Username"] = TextBox1.Text.Trim();
                Session["Password"] = TextBox2.Text.Trim();

                Response.Redirect("WebForm1.aspx");


            }
            else
            {
                Label1.Text = "login failed !!!! Username not found";

            }

        }
    }

}

 