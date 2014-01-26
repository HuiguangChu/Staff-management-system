using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 个人星级及奖励额度查询 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)

    {
       
            SqlConnection con = new SqlConnection("server=.;database=REGISTER;uid=sa;pwd=123");
            string sql = string.Format("select * from  EMP where 员工号={0} and 员工姓名='{1}' ", TextBox2.Text, TextBox1.Text);
            

                DataSet ds = new DataSet();
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(ds);
                GridView1.DataSource = ds;
                this.GridView1.DataBind();
                con.Close();
            }

           
       






    

    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}