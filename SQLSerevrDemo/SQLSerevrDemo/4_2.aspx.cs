using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SQLSerevrDemo
{
    public partial class _4_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateTable_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdbconn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();//打开连接
                SqlCommand cmd = new SqlCommand();              //创建命令对象
                cmd.Connection = conn;                          //设置命令需要的数据库连接
                cmd.CommandType = CommandType.Text;             //设置命令的类型
                cmd.CommandText = "Create Table Test(tID Int)"; //设置命令执行的T-sql语句
                cmd.ExecuteNonQuery();                          //执行命令
                Label1.Text = "Test数据表创建成功";
            }
        }

        protected void DelTable_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdbconn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                conn.Open();
                cmd.CommandText = "Drop Table Test";
                cmd.ExecuteNonQuery();
                Label1.Text = "Test删除数据表成功";
            }
        }
    }
}