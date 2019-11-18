using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineChatRoom._3_10
{
    public partial class ChatRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uName"] != null)
            {
                lblOnlineNum.Text = "当前在线人数为" + Application["count"].ToString() + "人";
                txtChatRoom.Text = Application["chat"].ToString();
                lblName.Text = Session["uName"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string tab = " ";
            string newline = "\r";
            string newMessage = lblName.Text + ":" + tab + txtChat.Text + newline + Application["chat"];
            if (newMessage.Length > 500)
            {
                newMessage = newMessage.Substring(0, 499);
            }
            Application.Lock();
            Application["chat"] = newMessage;
            Application.UnLock();
            txtChat.Text = "";
            txtChatRoom.Text = Application["chat"].ToString();
        }
    }
}