using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineChatRoom
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string name = txtUName.Text;
            string pwd = txtUPwd.Text;
            if (pwd == "admin")
            {
                //当密码正确时，用session保存用户的登录名，并跳转到聊天界面
                Session["uName"] = name;
                Response.Redirect("ChatRoom.aspx");
            }
            else
            {
                Response.Write("<script>alert('密码不正确')</script>");
                txtUName.Text = "";
                txtUPwd.Text = "";
            }
        }
    }
}