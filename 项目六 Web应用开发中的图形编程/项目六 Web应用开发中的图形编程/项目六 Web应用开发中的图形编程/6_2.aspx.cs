using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 项目六_Web应用开发中的图形编程
{
    public partial class _6__2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap myImage = new Bitmap(400, 200);				//创建Bitmap对象
            Graphics gr = Graphics.FromImage(myImage);      		//创建绘图对象
            Pen pen = new Pen(Color.Red, 2);                 		//创建画笔对象
            gr.Clear(Color.WhiteSmoke);                     		//格式化画布
            Font font = new Font("黑体", 20);                		//创建文字格式
            Brush brush = new SolidBrush(Color.Blue);         		//创建笔刷
            gr.DrawString("ASP.NET程序设计", font, brush, 100, 20);	//绘制文字
            gr.DrawLine(pen, 0, 50, 400, 50);                      	//绘制直线
            gr.FillRectangle(brush, 70, 70, 150, 100);               	//填充矩形
            brush = new SolidBrush(Color.YellowGreen);
            gr.FillEllipse(brush, 70, 70, 150, 100);                  	//填充椭圆
            brush = new SolidBrush(Color.Pink);
            Point[] pts = new Point[]{
                new Point(300,100),
                new Point(330,120),
                new Point(300,140),
                new Point(270,140),
                new Point(240,120),
                new Point(270,100)
             };
            gr.FillPolygon(brush, pts);		//填充多边形
            myImage.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Gif);
            pen.Dispose();				//释放画笔对象
            gr.Dispose();				//释放绘图对象
            myImage.Dispose();

        }
    }
}