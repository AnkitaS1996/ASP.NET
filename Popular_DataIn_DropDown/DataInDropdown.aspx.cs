using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;

namespace Popular_DataIn_DropDown
{
    public partial class DataInDropdown : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DB_Data_InDropdown"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
                BinddropDownList();
                BindDataGridview();
                Fetch_Data_Textbox();
            }
            
        }

        public void Fetch_Data_Textbox()
        {
            SqlConnection con2 = new SqlConnection(cs);
            con2.Open();
            SqlCommand cmd1 = new SqlCommand("select Name from Employee");
            cmd1.Connection = con2;
            SqlDataReader DR1 = cmd1.ExecuteReader();
            if (DR1.Read())
            {
                txt_Data.Text = DR1.GetValue(0).ToString();
            }
            con2.Close();
        }
         
        public void BindDataGridview()
        {
            SqlConnection con1 = new SqlConnection(cs);
            con1.Open();
            SqlCommand cmd2 = new SqlCommand("Select * from Employee");
            cmd2.Connection = con1;
            cmd2.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd2);
            sda1.Fill(dt1);
            GridViewData.DataSource = dt1;
            GridViewData.DataBind();
            con1.Close();
        }

        public void BinddropDownList()
        {
            SqlConnection con = new SqlConnection(cs);

            /* First Dropdown List Code */

            string Query = "Select * from Employee";
            SqlDataAdapter sda = new SqlDataAdapter(Query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DropDownListData.DataSource = dt;
            DropDownListData.DataTextField = "Name";
            DropDownListData.DataValueField = "Id";
            DropDownListData.DataBind();
            ListItem SelectItem = new ListItem("Select Employee", "-1");
            SelectItem.Selected = true;
            DropDownListData.Items.Insert(0, SelectItem);
        }
        protected void Btn_Refresh_Click(object sender, EventArgs e)
        {
            BindDataGridview();
        }
        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            if(DropDownListData.SelectedValue == "-1")
            {
                Response.Write("Please Select An Employee ..!! " + "<br>");
                Response.Write("Selected Employee Index is : " + DropDownListData.SelectedIndex);
                lbl_RowData.Text = "Row Not Found";
                lbl_RowData.ForeColor = Color.Red;
                lbl_RowData.Visible = true;
            }
            else
            {
                //Response.Write("Selected Items Text is : " + DropDownListData.SelectedItem.Text + "<br>");
                //Response.Write("Selected Items Value is : " + DropDownListData.SelectedItem.Value + "<br>" );
                //Response.Write("Selected Items Index is : " + DropDownListData.SelectedIndex );
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("Select * from Employee where Name = @name");
                cmd.Parameters.AddWithValue("@name",DropDownListData.SelectedItem.Text);
                cmd.Connection = con;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridViewData.DataSource = dt;
                GridViewData.DataBind();
                lbl_RowData.Text = "Row Found";
                lbl_RowData.ForeColor = Color.Green;
                lbl_RowData.Visible = true;    
            }
        }
       
    }
}