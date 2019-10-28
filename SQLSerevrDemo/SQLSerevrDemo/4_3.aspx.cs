using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//程序名称：4_3.aspx.cs
//程序功能：统计网站会员人数
namespace SQLSerevrDemo
{
    public partial class _4_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CountUsers_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdbconn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdText = "select count(*) from users";
                SqlCommand cmd = new SqlCommand(cmdText, conn);
                int nums = (int)cmd.ExecuteScalar();
                Label1.Text = "本站已注册会员人数：" + nums;
            }
        }
    }
}