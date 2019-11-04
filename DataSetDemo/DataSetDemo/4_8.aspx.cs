using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//程序名称：4_8.aspx.cs
//程序功能：显示商品类别信息
namespace DataSetDemo
{
    public partial class _4_8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetBind();
        }
        /// <summary>
        /// 集合数据绑定，将查询的商品类别名称分别
        /// 绑定到DropDownList控件和CheckBoxList控件
        /// </summary>
        protected void SetBind()
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            DataSet ds = new DataSet();
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdText = "select * from goodsType";
                SqlDataAdapter sda = new SqlDataAdapter(cmdText, conn);
                sda.Fill(ds, "gtype");
            }

            ddlGoodType.DataSource = ds.Tables["gtype"];
            ddlGoodType.DataTextField = "tName";
            ddlGoodType.DataValueField = "tID";
            ddlGoodType.DataBind();

            chkGoodType.DataSource = ds.Tables["gtype"];
            chkGoodType.DataTextField = "tName";
            chkGoodType.DataValueField = "tID";
            chkGoodType.DataBind();

        }
    }
}