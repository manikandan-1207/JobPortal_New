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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                this.BindGrid();
            }


        }
        private void BindGrid()
        {
            string cs = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sa = new SqlConnection(cs);
            string str = "select * from cmpregtb where Username='" + Session["Username"] + "'";
            SqlCommand cmd = new SqlCommand(str, sa);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            TextBox1.Text = ds.Tables[0].Rows[0]["CName"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["City"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["State"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["Pincode"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["Contact_person"].ToString();
            TextBox7.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
            TextBox8.Text = ds.Tables[0].Rows[0]["Contact_No"].ToString();
            TextBox9.Text = ds.Tables[0].Rows[0]["EmailId"].ToString();
            TextBox10.Text = ds.Tables[0].Rows[0]["Website"].ToString();
            TextBox11.Text = ds.Tables[0].Rows[0]["UserName"].ToString();
            TextBox12.Text = ds.Tables[0].Rows[0]["Password"].ToString();
            


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sa = new SqlConnection(str);

            string get = "update   cmpregtb set Address='" + TextBox2.Text + "'," +
              " City='" + TextBox3.Text + "',State='" + TextBox4.Text + "',Pincode='" + TextBox5.Text + "'," +
              "Contact_person='" + TextBox6.Text + "',MobileNo='" + TextBox7.Text + "',Contact_No='" + TextBox8.Text + "'," +
              "EmailId='" + TextBox9.Text + "',Website='" + TextBox10.Text + "',UserName='" + TextBox11.Text + "'," +
              "Password='" + TextBox12.Text + "' where CName ='" + TextBox1.Text + "' ";
            SqlCommand cmd = new SqlCommand(get, sa);
            sa.Open();
            cmd.ExecuteNonQuery();

            sa.Close();



          Lblsuccess.Text = "Profile Updated Sucessfully !!!";




        }
    }
}


