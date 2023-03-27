using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_Form_ASP
{
    public partial class Register : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["Logincs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Clear_Control()
        {
            txt_FirstName.Text = "";
            txt_LastName.Text = "";
            DDL_Gender.SelectedIndex = -1;
            txt_Email.Text = "";
            txt_Address.Text = "";
            txt_Username.Text = "";
            txt_Password.Text = "";
            txt_Confirm_Pass.Text = "";
        }

        protected void btn_SignUp_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("insert into tbl_Signup values(@fName,@lName,@gender,@email,@address,@userName,@Password)");
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@FName", txt_FirstName.Text);
            cmd.Parameters.AddWithValue("@lName", txt_LastName.Text);
            cmd.Parameters.AddWithValue("@gender", DDL_Gender.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@email",txt_Email.Text);
            cmd.Parameters.AddWithValue("@address",txt_Address.Text);
            cmd.Parameters.AddWithValue("@userName",txt_Username.Text);
            cmd.Parameters.AddWithValue("@Password",txt_Password.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if(a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Signup Sucessfull.. Username is = " + txt_Username.Text + " and Password is : " + txt_Password.Text + "');",true);
                Clear_Control();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('SignUp Failed....!!')</script>");
            }
            con.Close();
        }
    }
}