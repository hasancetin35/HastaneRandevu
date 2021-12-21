using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonet_yonet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("sikayetlist.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (DropDownList1.Text == "Dahiliye")
        {
            Response.Redirect("listele.aspx");
        
        }

        else if (DropDownList1.Text == "Kalp")
        {
            Response.Redirect("listele1.aspx");
        }
        else if (DropDownList1.Text == "KBB")
        {
            Response.Redirect("listele2.aspx");
        }
        else if (DropDownList1.Text == "Cildiye")
        {
            Response.Redirect("listele3.aspx");

        }
        else
        {

            Response.Redirect("listele4.aspx");

        }



    }
}