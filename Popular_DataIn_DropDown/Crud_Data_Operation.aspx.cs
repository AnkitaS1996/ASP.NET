using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Popular_DataIn_DropDown
{
    public partial class Crud_Data_Operation : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DB_Data_InDropdown"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridViewData.SelectedIndex = -1;
            if (!IsPostBack)
            {
                BinddropDownList();
                BindDataGridview();
            }
            else
            {
                //BinddropDownList();
                //BindDataGridview();
                
            }

        }

        public void Clear_Controls()
        {
            txt_ID.Text = "";
            txt_Data.Text = "";
            RadioButtonListGender.SelectedValue = "";
            txt_Age.Text = "";
            txt_Salary.Text = "";
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

        public void BindDataGridview()
        {
            SqlConnection con1 = new SqlConnection(cs);
            con1.Open();
            SqlCommand cmd2 = new SqlCommand("Select * from Employee");
            cmd2.Connection = con1;
            //cmd2.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd2);
            sda1.Fill(dt1);
            GridViewData.DataSource = dt1;
            GridViewData.DataBind();
            con1.Close();
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            if (DropDownListData.SelectedValue == "-1")
            {
                Response.Write("Please Select An Employee ..!! " + "<br>");
                Response.Write("Selected Employee Index is : " + DropDownListData.SelectedIndex);
                lbl_RowData.Text = "Row Not Found";
                lbl_RowData.ForeColor = Color.Red;
                lbl_RowData.Visible = true;
                Clear_Controls();
            }
            else
            {
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("Select * from Employee where Name = @name");
                cmd.Parameters.AddWithValue("@name", DropDownListData.SelectedItem.Text);
                cmd.Connection = con;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridViewData.DataSource = dt;
                GridViewData.DataBind();
                lbl_RowData.Text = "Row Found";
                lbl_RowData.ForeColor = Color.Green;
                lbl_RowData.Visible = true;
                //BindDataGridview();
            }
        }

        protected void Btn_Refresh_Click(object sender, EventArgs e)
        {

            BindDataGridview();
            Clear_Controls();
        }

        protected void GridViewData_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridViewData, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row. ";

            }
        }

        protected void GridViewData_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridViewData.Rows)
            {
                if (row.Cells[1].Text == GridViewData.SelectedRow.Cells[1].Text)
                {
                    txt_ID.Text = row.Cells[1].Text;
                    txt_Data.Text = row.Cells[2].Text;
                    RadioButtonListGender.SelectedValue = row.Cells[3].Text;
                    txt_Age.Text = row.Cells[4].Text;
                    txt_Salary.Text = row.Cells[5].Text;

                }
            }

        }
    }
}