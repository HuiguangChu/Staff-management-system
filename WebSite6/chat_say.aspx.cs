using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class chat_say : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (say.Text != "")
        {
            Application.Lock();
            Application["show"] = say.Text      +  DateTime.Now; //+ Application["show"];
            Application.UnLock();
            say.Text = "";
            //Response.Redirect("chatroom.aspx");
        }
    }
}