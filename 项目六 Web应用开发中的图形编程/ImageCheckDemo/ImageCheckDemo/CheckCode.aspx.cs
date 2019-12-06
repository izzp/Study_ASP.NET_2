using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImageCheckDemo
{
    public partial class CheckCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DrawCheckImage(GenerateCode());
        }
        private string GenerateCode()
        {
            int num;
            char code;
            string checkCode = String.Empty;
            Random random = new Random();
            //随机产生4个随机字母或数字
            for (int i = 0; i < 4; i++)
            {
                num = random.Next();

                if (i % 2 != 0)
                    code = (char)('0' + (char)(num % 10));//2，4位上产生数字
                else
                    code = (char)('A' + (char)(num % 26));//1，3位上产生字母
                checkCode += code;
            }
           Response.Cookies.Add(new HttpCookie("CheckCode", checkCode));
            return checkCode;
        }

        private void DrawCheckImage(string checkCode)
        {
            if (checkCode == null || checkCode.Trim() == String.Empty)
                return;
            //定义校验码图像的大小，其中长度随着校验码长度可变
            Bitmap image = new Bitmap((int)Math.Ceiling(checkCode.Length * 12.5), 22);
            //创建绘图对象
            Graphics g = Graphics.FromImage(image);
            try
            {
                Random random = new Random();
                //清空图片背景色
                g.Clear(Color.White);
                for (int i = 0; i < 4; i++)
                {  
                    //随机画图片的背景噪音线
                    int x1 = random.Next(image.Width);
                    int x2 = random.Next(image.Width);
                    int y1 = random.Next(image.Height);
                    int y2 = random.Next(image.Height);
                    g.DrawLine(new Pen(Color.Black), x1, x2, y1, y2);
                }
                Font font = new Font("Arial", 12, FontStyle.Bold | FontStyle.Italic);
                System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush
                (new Rectangle(0, 0, image.Width, image.Height), Color.Blue, Color.DarkRed, 1.2f, true);
                g.DrawString(checkCode, font, brush, 2, 2);
                for (int i = 0; i < 100; i++)
                { 
                    //画图片的前景噪音点
                    int x = random.Next(image.Width);
                    int y = random.Next(image.Height);
                    image.SetPixel(x, y, Color.FromArgb(random.Next()));
                }
                g.DrawRectangle(new Pen(Color.Silver), 0, 0, image.Width - 1, image.Height - 1);
                System.IO.MemoryStream ms = new System.IO.MemoryStream();
                image.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
                Response.ClearContent();
                Response.ContentType = "image/Gif";
                Response.BinaryWrite(ms.ToArray());
            }
            catch (Exception ee)
            { }
            finally
            {
                g.Dispose();
                image.Dispose();
            }
        }
    }
}