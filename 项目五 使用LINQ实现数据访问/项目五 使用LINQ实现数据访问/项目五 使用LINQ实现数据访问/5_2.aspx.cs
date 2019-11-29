using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 项目五_使用LINQ实现数据访问
{
    public partial class _5_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GoodsTypeDataContext lq = new GoodsTypeDataContext();
            var mylq = from gt in lq.GoodsType select gt;
            gvGoodType.DataSource = mylq;
            gvGoodType.DataBind();
        }
    }
}