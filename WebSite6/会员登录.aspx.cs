using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 会员登录 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;database=REGISTER;uid=sa;pwd=123");
        con.Open();
        SqlCommand cmd = new SqlCommand("select m_name from mem", con);

        SqlDataAdapter Adapter = new SqlDataAdapter();
        Adapter.SelectCommand = cmd;


        //建立DataSet对象，用于接收执行SQL命令返回的数据集。
        DataSet myDs = new DataSet();
        Adapter.Fill(myDs);

        //获取DataTable
        DataTable myTable = myDs.Tables[0];

        //查找要更新的行
        foreach (DataRow row in myTable.Rows)
        {
            if (row["m_name"].ToString().Trim() == TextBox1.Text.Trim())
            {


                Response.Redirect("欢迎光临.aspx");


                //关闭数据库连接

                return;
            }
            else
            {

                Response.Write("对不起，用户名不存在，请注册！");

            }


        }
    }
}