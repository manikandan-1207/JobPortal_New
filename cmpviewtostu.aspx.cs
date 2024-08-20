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
    public partial class WebForm3 : System.Web.UI.Page
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
            string ob = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;



            SqlConnection con = new SqlConnection(ob);



            string co = "select * from cmpregtb where UserName='" + Session["UserName"] + "'   ";
            SqlDataAdapter dp = new SqlDataAdapter(co, con);
            DataSet dt2 = new DataSet();



            dp.Fill(dt2);
            Label1.Text = dt2.Tables[0].Rows[0]["CName"].ToString();




        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string ob = ConfigurationManager.ConnectionStrings["ABCD"].ConnectionString;



            SqlConnection con = new SqlConnection(ob);



            string co1 = "select * from Jobapp where CmpnyName='" + Label1.Text + "'  ";
            SqlDataAdapter dp = new SqlDataAdapter(co1, con);
            DataTable dt3 = new DataTable();
            dp.Fill(dt3);



            GridView1.DataSource = dt3;
            GridView1.DataBind();

        }
    }
}