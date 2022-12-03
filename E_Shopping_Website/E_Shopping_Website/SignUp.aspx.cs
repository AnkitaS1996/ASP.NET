using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Shopping_Website
{
    public partial class SignUp : System.Web.UI.Page
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

        }
        protected void btn_Submits_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                Con_Open();
                if (txt_Username.Text != "" && txt_Pass.Text != "" && txt_Full_Name.Text != "" && txt_email.Text != "")
                {
                    SqlCommand cmd = new SqlCommand("Insert into tbl_Users (Username,Password,Name,Email) values('" + txt_Username.Text + "', '" + txt_Pass.Text + "','" + txt_Full_Name.Text + "','" + txt_email.Text + "')");
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registeration Successfully Done'); </script>");
                    Con_Close();
                }
                else
                {
                    Response.Write("<script> alert('First fill Data'); </script>");
                }

            }
        }

        private bool isformvalid()
        {
            //Validation Code
            //throw new NotImplementedException();
            if(txt_Username.Text == "")
            {
                Response.Write("<script> alert('Username Not Valid'); </Script>");
                return false;
            }
            else if (txt_Pass.Text == "")
            {
                Response.Write("<script> alert('Password Not Valid'); </Script>");
                return false;
            }
            else if (txt_Pass.Text != txt_C_Pass.Text )
            {
                Response.Write("<script> alert('Confirm Password Not Valid'); </Script>");
                return false;
            }
            else if (txt_Full_Name.Text == "")
            {
                Response.Write("<script> alert(''); </Script>");
                return false;
            }
            else if (txt_email.Text == "")
            {
                Response.Write("<script> alert('Email Not Valid'); </Script>");
                return false;
            }
            return true;

        }

        private void Clear_Controls()
        {
            txt_Username.Text = "";
            txt_Pass.Text = "";
            txt_C_Pass.Text = "";
            txt_Full_Name.Text = "";
            txt_email.Text = "";
        }

       
    }

}