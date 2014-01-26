using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class chat_message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        message.Text = Convert.ToString(Application["show"]);

    }
}