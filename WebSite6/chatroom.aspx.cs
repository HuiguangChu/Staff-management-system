using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chatroom : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String name = (string)Session["Name"];
        if (name == "")
        {
            name = "游客";
        }
        Label3.Text = "欢迎您！";
     
       //message.Text = Convert.ToString(Application["show"]);
    }
}