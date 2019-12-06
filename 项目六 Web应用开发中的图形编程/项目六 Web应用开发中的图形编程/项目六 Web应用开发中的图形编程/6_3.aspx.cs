using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 项目六_Web应用开发中的图形编程
{
    public partial class _6_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap image = new Bitmap(1000, 600);
            Graphics gr = Graphics.FromImage(image);
            gr.FillRectangle(Brushes.WhiteSmoke, 1, 1, 1000, 600);
            Font font = new Font("宋体", 12, FontStyle.Regular);
            gr.DrawString("显示现有图片", font, Brushes.Blue, 10, 5);
            System.Drawing.Image img = System.Drawing.Image.FromFile(Server.MapPath("images/img1.jpg"));
            gr.DrawImage(img, 10, 30, 960, 540);
            image.Save(Response.OutputStream, ImageFormat.Gif);
            gr.Dispose();
            image.Dispose();
        }
    }
}