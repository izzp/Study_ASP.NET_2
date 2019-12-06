using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 项目六_Web应用开发中的图形编程
{
    public partial class _6_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int maxValue = 20;
            int minValue = 1;
            int count = 20;
            //定义随机变量
            Random rand = new Random();
            //设置随机数变化范围
            int length = maxValue - minValue + 1;
            byte[] keys = new byte[length];
            //用随机数填充keys数组的元素
            rand.NextBytes(keys);
            //产生0~20范围内的20个数
            int[] items = new int[length];
            for (int i = 0; i < length; i++)
                items[i] = i + minValue;
            Array.Sort(keys, items);
            int[] result = new int[count];
            Array.Copy(items, result, count);
            for (int i = 0; i < result.Length; i++)
                Label1.Text += "    " + result[i].ToString();
        }
    }
}