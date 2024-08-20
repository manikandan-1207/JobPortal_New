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
    public partial class studentreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncontinue_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection sa = new SqlConnection(cs);
            string sar = "insert into studreg values('" + Txtenrollno.Text + "','" + TxtName.Text + "','" + TxtSurName.Text + "','" + Txtaddress.Text + "','" + TxtCity.Text + "','" + TxtState.Text + "','" + TxtPincode.Text + "','" + birthday.Text + "','" + DropDownList1.Text + "','" + TxtMobNo.Text + "','" + Txtemail.Text + "','" + Txtusername.Text + "','" + TxtPassword.Text + "') ";
            SqlCommand cmd = new SqlCommand(sar, sa);
            sa.Open();
            cmd.ExecuteNonQuery();
            sa.Close();



            Txtenrollno.Text = "";
            TxtName.Text = "";
            TxtSurName.Text = "";
            Txtaddress.Text = "";
            TxtCity.Text = "";
            TxtState.Text = "";
            TxtPincode.Text = "";
            birthday.Text = "";
            DropDownList1.Text = "";
            TxtMobNo.Text = "";
            Txtemail.Text = "";
            Txtusername.Text = "";
            TxtPassword.Text = "";
            Txtconfirmpassword.Text = "";


        }

        protected void btnreset_Click(object sender, EventArgs e)
        {

            Txtenrollno.Text = "";
            TxtName.Text = "";
            TxtSurName.Text = "";
            Txtaddress.Text = "";
            TxtCity.Text = "";
            TxtState.Text = "";
            TxtPincode.Text = "";
            birthday.Text = "";
            DropDownList1.Text = "";
            TxtMobNo.Text = "";
            Txtemail.Text = "";
            Txtusername.Text = "";
            TxtPassword.Text = "";
            Txtconfirmpassword.Text = "";

        }
    }
}