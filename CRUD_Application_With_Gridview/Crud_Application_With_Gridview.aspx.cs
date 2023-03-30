using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_Application_With_Gridview
{
    public partial class Crud_Application_With_Gridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkBtnInsert_Click(object sender,EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = 
                ((TextBox)GridView1.FooterRow.FindControl("Footer_Txt_Name")).Text;

            SqlDataSource1.InsertParameters["Gender"].DefaultValue = 
                ((DropDownList)GridView1.FooterRow.FindControl("Footer_DDL_Gender")).SelectedValue;

            SqlDataSource1.InsertParameters["Class"].DefaultValue = 
                ((TextBox)GridView1.FooterRow.FindControl("Footer_Txt_Class")).Text;

            SqlDataSource1.Insert();
            //int a = SqlDataSource1.Insert();

            //if(a > 0)
            //{
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Insert Data Successfully !!')</script>");
            //}
            //else
            //{
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Insert Data Fails !!')</script>");
            //}

        }
    }
}