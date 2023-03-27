using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Login_Form_ASP
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["Logincs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string Query = "select Id from tbl_Signup where Username= @User and Password= @Pass";
            SqlCommand cmd = new SqlCommand(Query,con);
            cmd.Parameters.AddWithValue("@User", txt_Uname.Text);
            cmd.Parameters.AddWithValue("@Pass", txt_Password.Text);
            con.Open();
            //SqlDataReader dr = cmd.ExecuteReader();
            if(Convert.ToInt32(cmd.ExecuteScalar()) > 0)
            {
                Session["User"] = txt_Uname.Text;
                // Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successful.!!')</script>");
                Response.Redirect("Dashboard.aspx");
                
            }
            else
            {
               // Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Fails')</script>");
                Response.Write("<script LANGUAGE='JavaScript' >alert('Login Fails')</script>");
                txt_Uname.Text = "";
                txt_Password.Text = "";
            }
            con.Close();
        }
    }
}