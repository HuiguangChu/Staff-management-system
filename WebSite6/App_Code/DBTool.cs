using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
///DBTool 的摘要说明
/// </summary>
public class DBTool
{
    SqlConnection con = null;
	public DBTool()
	{
        string strURL = "server=.;database=company;uid=sa;pwd=123";
        if (con == null)
        {
            con = new SqlConnection(strURL);
        }
	}

     public void openConn()
        {
            if (con != null)
            {
                con.Open();
            }
        }
        public void closeConn()
        {
            if (con != null)
            {
                con.Close();
            }
        }
        /// <summary>
        /// 执行更新，要求以SQL语句形式更新数据
        /// </summary>
        /// <param name="SQL">需要操作的更新语句</param>
        /// <returns>1：成功</returns>
        public int update(string SQL)
        {
            int i = 0;
            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                openConn();
                i = cmd.ExecuteNonQuery();
                closeConn();
            }
            return i;
        }

        public void query(DataSet ds, string SQL)
        {
            using (SqlDataAdapter da = new SqlDataAdapter(SQL, con))
            {
                da.Fill(ds);
            }
        }
        /// <summary>
        /// 执行更新存储过程（包括：增删改）
        /// </summary>
        /// <param name="sp">参数1：存储过程元素数组</param>
        /// <param name="procName">参数2：存储过程名称</param>
        /// <returns>1：成功 -1：失败</returns>
        public int update(SqlParameter[] sp,string procName)
        {
            int i = 0;
            using (SqlCommand cmd = new SqlCommand())
            {
                openConn();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = procName;
                cmd.Parameters.AddRange(sp);
                
                try
                {
                    cmd.ExecuteNonQuery();
                    i = 1;
                }
                catch (Exception ex)
                {
                    i = -1;
                }
                finally
                {
                    closeConn();
                }
            }
            return i;
        }
    }



