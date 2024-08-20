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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sa = new SqlConnection(cs);
            string str = "select count(1) from Admintb where UserName=@Username and Password=@Password";
            SqlCommand cmd = new SqlCommand(str, sa);
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
            sa.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());

            if (count == 1)
            {
                Session["Username"] = TextBox1.Text.Trim();
                Session["Password"] = TextBox2.Text.Trim();

                Response.Redirect("Admindetials.aspx");


            }
            else
            {
                Label1.Text = "login failed !!!! Username not found";

            }
        }
    }

}
