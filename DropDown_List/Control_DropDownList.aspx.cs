using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDown_List
{
    public partial class Control_DropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DropDownListCity.SelectedValue = "1";
            }
      
            //if(!IsPostBack)
            //{
            //    /*ListItem Lobj = new ListItem("Hyderabad", "1",false); */  //List Item hide Karnyasathi
            //    ListItem Lobj = new ListItem("Hyderabad", "1");
            //    ListItem Lobj1 = new ListItem("Satara", "2");
            //    ListItem Lobj2 = new ListItem("Pune", "3");
            //    ListItem Lobj3 = new ListItem("Karad", "4");

            //    DropDownListCity.Items.Add(Lobj);
            //    DropDownListCity.Items.Add(Lobj1);
            //    DropDownListCity.Items.Add(Lobj2);
            //    DropDownListCity.Items.Add(Lobj3);

            //    DropDownListCity.Items[2].Selected = true;
            //}
        }
        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if(DropDownListCity.SelectedValue == "-1")
            {
                Response.Write("Please Select City");
            }
            else
            {
                Response.Write("Selected Items text is: " + DropDownListCity.SelectedItem.Text +  "<br>");
                Response.Write("Selected Items Value is: " + DropDownListCity.SelectedItem.Value + "<br>");
                Response.Write("Selected Items Value is: " + DropDownListCity.SelectedValue + "<br>");
                Response.Write("Selected Index is : " + DropDownListCity.SelectedIndex);
            }
        }
    }
}