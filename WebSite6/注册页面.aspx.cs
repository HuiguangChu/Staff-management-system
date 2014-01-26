using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class 注册页面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;database=REGISTER;uid=sa;pwd=123");
        string sql = string.Format("insert into mem(m_name,m_id,m_sex,m_tel) values('{0}','{1}','{2}','{3}')", TextBox1.Text, TextBox2.Text, RadioButtonList1.Text, TextBox3.Text);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i == 1)
        {
            Response.Write("恭喜你注册成功！");
        }
        else
        {
            Response.Write("对不起，注册失败，请重新填写！");
        }
    }
}