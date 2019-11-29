using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersManagerDemo
{
    public partial class AddUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddluImage_SelectedIndexChanged(object sender, EventArgs e)
        {
            imguImage.ImageUrl = imguImage.ImageUrl.Substring(0, imguImage.ImageUrl.LastIndexOf("/") + 1) + ddluImage.SelectedValue;
        }

        protected void butAdd_Click(object sender, EventArgs e)
        {
            UsersDataContext lq = new UsersDataContext();//实例化LINQ类
            Users user = new Users();//创建一个新对象
            user.uName = txtuName.Text;
            user.uPwd = txtuPwd.Text;
            user.uRealName = txtuRealName.Text;
            user.uSex = rbluSex.SelectedValue;
            user.uAge = Convert.ToInt16(txtuAge.Text);
            for (int i = 0; i < cbluHobby.Items.Count; i++)
            {
                if (cbluHobby.Items[i].Selected)
                    user.uHobby += cbluHobby.Items[i].Value;
            }
            user.uEmail = txtuEmail.Text;
            user.uQQ = txtuQQ.Text;
            user.uPhone = txtuPwd.Text;
            user.uImage = imguImage.ImageUrl.Substring(imguImage.ImageUrl.LastIndexOf("/") + 1);
            user.uRegTime = System.DateTime.Now;
            lq.Users.InsertOnSubmit(user);//执行插入数据操作
            lq.SubmitChanges();//提交数据库
            Response.Redirect("UsersManager.aspx");//重新定位到用户管理页
        }
    }
}