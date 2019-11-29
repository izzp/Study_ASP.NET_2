using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersManagerDemo
{
    public partial class UsersManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsersDataContext lq = new UsersDataContext();//实例化LINQ类
            var mylq = from gt in lq.Users//查询数据
                       select gt;
            gvUsers.DataSource = mylq;//绑定到GridView
            gvUsers.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddUsers.aspx");
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            UsersDataContext lq = new UsersDataContext();//实例化LINQ类
            var users = from gt in lq.Users
                        where gt.uID == Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value)
                        select gt;
            foreach (Users user in users)//遍历集合
            {
                lq.Users.DeleteOnSubmit(user);//删除数据
            }
            lq.SubmitChanges();//提交数据库
            Response.Redirect("UsersManager.aspx");//重新定位到该页面
        }
    }
}