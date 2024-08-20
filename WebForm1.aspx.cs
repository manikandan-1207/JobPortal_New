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
    public partial class WebForm1 : System.Web.UI.Page
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
            string str = "select * from studreg where Username='" + Session["Username"] +"'";
            SqlCommand cmd = new SqlCommand(str, sa);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Lblrollno.Text = ds.Tables[0].Rows[0]["Enrollno"].ToString();
            TxtName.Text = ds.Tables[0].Rows[0]["Fname"].ToString();
            TxtSurName.Text = ds.Tables[0].Rows[0]["Lname"].ToString();
            Txtaddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            TxtCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
            TxtState.Text = ds.Tables[0].Rows[0]["State"].ToString();
            TxtPincode.Text = ds.Tables[0].Rows[0]["Pincode"].ToString();
            birthday.Text = ds.Tables[0].Rows[0]["Dob"].ToString();
            DropDownList1.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
            TxtMobNo.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
            Txtemail.Text = ds.Tables[0].Rows[0]["EmailId"].ToString();
            Txtenrollno.Text = ds.Tables[0].Rows[0]["Enrollno"].ToString();
            Txtusername.Text = ds.Tables[0].Rows[0]["Username"].ToString();
            Txtpassword.Text = ds.Tables[0].Rows[0]["Password"].ToString();

          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sa = new SqlConnection(str);

            string get = "update studreg set Fname='" + TxtName.Text + "',Lname='" + TxtSurName.Text + "'," +
                " Address='" + Txtaddress.Text + "',City='" + TxtCity.Text + "',State='" + TxtState.Text + "'," +
                "Pincode='" + TxtPincode.Text + "',Dob='" + birthday.Text + "',Gender = '" + DropDownList1.Text +"'," + 
                "MobileNo='" + TxtMobNo.Text + "',EmailId='" + Txtemail.Text + "',Username='" + Txtusername.Text + "'," +
                "Password='" + Txtpassword.Text + "' where Enrollno='" + Lblrollno.Text + "' ";
            SqlCommand cmd = new SqlCommand(get, sa);
            sa.Open();
            cmd.ExecuteNonQuery();

            sa.Close();



            Lblsuccess.Text = "Profile Updated Sucessfully !!!";




        }
    }
    }
