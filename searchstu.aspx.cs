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
    public partial class searchstu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                string str = "select*from Addjobtb";
                SqlDataAdapter dob = new SqlDataAdapter(str, con);
                DataTable tb = new DataTable();
                dob.Fill(tb);

            }



        }

    

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string str = "select*from Addjobtb";
            SqlDataAdapter dob = new SqlDataAdapter(str, con);
            DataTable tb = new DataTable();
            dob.Fill(tb);



            if (tb.Rows.Count > 0)
            {
                SqlCommand lol = new SqlCommand("select*from Addjobtb where Jobcategory='" + DropDownList1.SelectedValue + "' and Min_Qualification='" + DropDownList2.SelectedValue + "' and Requiredskill='" + DropDownList3.SelectedValue + "'", con);
                SqlDataAdapter sa = new SqlDataAdapter(lol);
                DataTable dt = new DataTable();
                con.Open();
                sa.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            else
            {
                Label1.Text = "Not Found..";
            }
        }

    }
    }
