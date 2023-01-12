using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Shopping_Website
{
    public partial class Registeration_Form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=DB_E_Shopping;Integrated Security=True");

        public void Con_Open()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }
        public void Con_Close()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Clear_Control();
            tb_Uname.Focus();

            if(!IsPostBack)
            {
                if(Request.Cookies["UName"] != null && Request.Cookies["UPWD"] != null)
                {
                    tb_Uname.Text = Request.Cookies["UName"].Value;
                    tb_Pass.Text = Request.Cookies["UPWD"].Value;
                    Chk_RememberMe.Checked = true;
                }
            }

        }
        protected void tb_Uname_TextChanged(object sender, EventArgs e)
        {
           // tb_Pass.Focus();//
        }

        protected void tb_Pass_TextChanged(object sender, EventArgs e)
        {
            //bt_SignIn.Focus();
            
        }
       
        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            Con_Open();
            /*SqlCommand cmd = new SqlCommand("select User_ID from tbl_Users where Username= '" + tb_Uname.Text + "' And Password = '" + tb_Pass.Text + "'",con);
            if(Convert.ToInt32(cmd.ExecuteScalar()) > 0)
            {
                if(Chk_RememberMe.Checked)
                {
                    Response.Cookies["UName"].Value = tb_Uname.Text;
                    Response.Cookies["UPWD"].Value = tb_Pass.Text;

                    Response.Cookies["UName"].Expires = DateTime.Now.AddDays(1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    Response.Cookies["UName"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                }
                // Response.Write("<script> alert('login successfully Done');</script>");
                Session["Username"] = tb_Uname.Text;
                Response.Redirect("~/UserHome.aspx");
                Con_Close();
                Clear_Control();
            }*/

            string value1 = Request.Form["tb_Uname"];
            string value2 = Request.Form["tb_Pass"];

            SqlCommand cmd = new SqlCommand("select * from tbl_Users where Username = @username and Password = @password");
            cmd.Connection = con;
              
            cmd.Parameters.AddWithValue("@username", value1);
            cmd.Parameters.AddWithValue("@password", value2);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count != 0)
            {
                if (Chk_RememberMe.Checked)
                {
                    Response.Cookies["UName"].Value = tb_Uname.Text;
                    Response.Cookies["UPWD"].Value = tb_Pass.Text;

                    Response.Cookies["UName"].Expires = DateTime.Now.AddDays(1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    Response.Cookies["UName"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["Username"] = value1;
                Response.Redirect("~/UserHome.aspx");
                Con_Close();
                Clear_Control();
            } 
            else
            {
                //Response.Write("<script> alert('Invalid User name and Password');</script>");
                lblError.Text = "Invalid Username And Password..!!!";
                Clear_Control();
            }
        }
        protected void btn_SignUp_Click(object sender, EventArgs e)
        {
            Clear_Control();
            Response.Redirect("Sign_Up.aspx");
        }

        void Clear_Control()
        {
            tb_Uname.Text =string.Empty;
            tb_Pass.Text = string.Empty;
            Chk_RememberMe.Checked = false;
        }


    }
}