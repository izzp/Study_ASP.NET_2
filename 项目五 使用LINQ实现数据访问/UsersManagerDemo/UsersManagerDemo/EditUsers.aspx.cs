﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersManagerDemo
{
    public partial class EditUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["id"] == null)
            {
                Response.Redirect("UsersManager.aspx");
            }
            else
            {
                int id = int.Parse(Request["id"].ToString());
                if (!IsPostBack)
                {
                    UsersDataContext lq = new UsersDataContext();//实例化LINQ类
                    var users = from gt in lq.Users//查询数据
                                where gt.uID == id
                                select gt;
                    foreach (Users user in users)
                    {
                        txtuName.Text = user.uName;
                        txtuPwd.Text = user.uPwd;
                        txtuRealName.Text = user.uRealName;
                        if (user.uSex == "女") rbluSex.Items[1].Selected = true;
                        txtuAge.Text = user.uAge.ToString();
                        string[] hobbys = user.uHobby.Split(',');//分割字符串到字符串数组
                        for (int i = 0; i < cbluHobby.Items.Count; i++)
                        {
                            for (int j = 0; j < hobbys.Length; j++)
                            {
                                if (cbluHobby.Items[i].Value == hobbys[j])
                                {
                                    cbluHobby.Items[i].Selected = true;
                                    break;
                                }
                            }
                        }
                        txtuEmail.Text = user.uEmail;
                        txtuQQ.Text = user.uQQ;
                        txtuPhone.Text = user.uPhone;
                        ddluImage.SelectedValue = user.uImage;
                        imguImage.ImageUrl = imguImage.ImageUrl.Substring(0, imguImage.ImageUrl.LastIndexOf("/") + 1) + user.uImage;
                    }
                }
            }
        }

        protected void ddluImage_SelectedIndexChanged(object sender, EventArgs e)
        {
            imguImage.ImageUrl = imguImage.ImageUrl.Substring(0, imguImage.ImageUrl.LastIndexOf("/") + 1) + ddluImage.SelectedValue;
        }

        protected void butAdd_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request["id"].ToString());
            UsersDataContext lq = new UsersDataContext();//实例化LINQ类
            var users = from gt in lq.Users
                        where gt.uID == id
                        select gt;
            foreach (Users user in users)//遍历集合
            {
                user.uName = txtuName.Text;
                user.uPwd = txtuPwd.Text;
                user.uRealName = txtuRealName.Text;
                user.uSex = rbluSex.SelectedValue;
                user.uAge = Convert.ToInt16(txtuAge.Text);
                for (int i = 0; i < cbluHobby.Items.Count; i++)
                {
                    if (cbluHobby.Items[i].Selected) user.uHobby += cbluHobby.Items[i].Value;
                }
                user.uEmail = txtuEmail.Text;
                user.uQQ = txtuQQ.Text;
                user.uPhone = txtuPwd.Text;
                user.uImage = imguImage.ImageUrl.Substring(imguImage.ImageUrl.LastIndexOf("/") + 1);
                user.uRegTime = System.DateTime.Now;
            }
            lq.SubmitChanges();//提交数据库
            Response.Redirect("UsersManager.aspx");//重新定位到该页面
        }
    }
}