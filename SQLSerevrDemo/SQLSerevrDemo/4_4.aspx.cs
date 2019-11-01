using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLSerevrDemo
{
    public partial class _4_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdbconn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdText = "insert into Admins values(@name,@pwd,@type,default)";
                SqlCommand cmd = new SqlCommand(cmdText, conn);
                SqlParameter[] ps ={new SqlParameter("name",txtName.Text),
                                new SqlParameter("pwd",txtPwd.Text),
                                new SqlParameter("type",ddlType.SelectedValue)};
                cmd.Parameters.AddRange(ps);
                if (cmd.ExecuteNonQuery() > 0)
                    Response.Write("添加成功");
                else
                    Response.Write("添加失败");
            }
        }
    }
}