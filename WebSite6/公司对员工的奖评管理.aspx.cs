using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class 公司对员工的奖评管理 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       /* SqlConnection con = new SqlConnection("server=.;database=REGISTER;uid=sa;pwd=123");
        string sql = "select emp_name from EMP";
        DataSet ds = new DataSet();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(ds,"EMP");
        DropDownList1.DataSource = ds;

        DropDownList1.DataMember = "EMP";

        DropDownList1.DataTextField = "emp_name";

        DropDownList1.DataBind();           
        con.Close();*/

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /* SqlConnection con = new SqlConnection("server=.;database=REGISTER;uid=sa;pwd=123");
         string sql = "select * from  EMP where emp_name = '"+ DropDownList1.SelectedValue+"'";
         DataSet dt = new DataSet();
         con.Open();
         SqlDataAdapter dn = new SqlDataAdapter(sql, con);
         dn.Fill(dt);
         GridView1.DataSource = dt;
         GridView1.DataBind();                                            
         con.Close();*/

     SqlConnection con = new SqlConnection("server=.;database=REGISTER;uid=sa;pwd=123");
        con.Open();
        SqlCommand myCommand = new SqlCommand("select * from  EMP where 员工姓名 = '"+ DropDownList1.SelectedValue+"'", con) ;
        SqlDataAdapter Adapter = new SqlDataAdapter();
        Adapter.SelectCommand=myCommand;

        DataSet my_DataSet= new DataSet();
	Adapter.Fill(my_DataSet);
Response.Write("<table border=1>");
	DataTable my_Table=my_DataSet.Tables[0];
	Response.Write("<tr bgcolor=#DAB4B4> ");
         foreach (DataColumn my_Column in my_Table.Columns)
          {
             Response.Write("<td>" + 
                            my_Column.ColumnName + "</td>");
			}
	Response.Write("</tr>");
foreach(DataRow my_Row in my_Table.Rows)
	{   Response.Write("<tr>");

   foreach (DataColumn my_Column in  my_Table.Columns) 
    {
	    Response.Write("<td>"+my_Row[my_Column]  +"</td>");       
          }
		Response.Write("</tr>");
	}
			Response.Write("</table>");
		con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("修改记录.aspx");
    }
}