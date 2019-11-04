using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataSetDemo
{
    public partial class _4_7 : System.Web.UI.Page
    {
        public string uName = "张三";
        protected int returnInt()
        {
            return 1000;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.DataBind();
        }
    }
}