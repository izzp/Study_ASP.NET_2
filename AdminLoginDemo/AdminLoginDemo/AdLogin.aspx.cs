using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminLoginDemo
{
    public partial class AdLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //创建连接字符串
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            string name = txtName.Text;
            string pwd = txtPwd.Text;
            int type = int.Parse(ddlType.SelectedValue);
            using (SqlConnection conn = new SqlConnection(str))
            {
                try
                {
                    conn.Open();
                    string sqlTxt = "select count(*) from admins where aName=@name and aPwd=@pwd and aType=@type";
                    SqlCommand cmd = new SqlCommand(sqlTxt, conn);
                    SqlParameter[] sps ={new SqlParameter("name",name),
                                       new SqlParameter("pwd",pwd),
                                       new SqlParameter("type",type)};

                    cmd.Parameters.AddRange(sps);
                    if (((int)cmd.ExecuteScalar()) > 0)
                    {
                        Session["manager"] = name;
                        Response.Write("<script>alert('登录成功');location.href('AdMain.aspx');</script>");
                    }
                    else
                        Response.Write("<script>alert('用户名或密码错误')</script>");
                }
                catch (Exception ee)
                {
                    Response.Write("<script>alert('系统异常，稍后重试')</script>");
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}