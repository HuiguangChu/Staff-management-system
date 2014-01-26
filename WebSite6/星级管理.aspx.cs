using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("server=.;database=REGISTER;uid=sa;pwd=123");

            //打开数据库连接
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from PC_C", con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            //DropDownList控件绑定

            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "c_name";

            DropDownList3.DataBind();
            con.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection("server=.;database=REGISTER;uid=sa;pwd=123");
         string sql = string.Format("insert into EMP(员工号, 员工姓名 , 星级数 ,任教班级 , 参与评比的项目,奖品兑换方式 ,可兑换的金额,  本次兑换的金额, 剩余可兑换的金额  ) values({0},'{1}',{2},'{3}','{4}','{5}',{6},{7},{8})", TextBox2.Text, TextBox1.Text, TextBox5.Text, DropDownList1.Text, DropDownList2.Text, DropDownList3.Text, TextBox3.Text, TextBox6.Text, TextBox4.Text);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i == 1)

        {
            Response.Write("添加数据成功！" + i + "条数据被影响。");
        }
        else
        {
            Response.Write("添加数据失败！");
        }

        
           

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        
            SqlConnection con = new SqlConnection("server=.;database=REGISTER;uid=sa;pwd=123");
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select s_name from pc_d where d_name='" + DropDownList3.SelectedItem.Text + "'", con);

            DataSet ds = new DataSet();
            da.Fill(ds);

            //DropDownList控件绑定

            DropDownList4.DataSource = ds;


            //DropDownList4.DataMember = "pc_d";

            DropDownList4.DataTextField = "s_name";


            DropDownList4.DataBind();
            con.Close();
       
    }
}