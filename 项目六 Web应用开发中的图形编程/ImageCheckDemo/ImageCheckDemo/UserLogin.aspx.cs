using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageCheckDemo
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["CheckCode"];
            if (txtUsername.Text == "admin" && txtUserPwd.Text == "admin")
            {
                if (cookie.Value == txtCheckCode.Text)
                    Response.Write("<script>alert('登录成功！')</script>");
                else
                    Response.Write("<script>alert('验证码错误！')</script>");
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误!')</script>");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}