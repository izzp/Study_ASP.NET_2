using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;

namespace DataSetDemo
{
    public partial class _4_6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //创建DataTable对象
            DataTable dt = new DataTable("Test");

            //为DataTable添加列
            DataColumn myCol1 = new DataColumn("id", typeof(int));
            DataColumn myCol2 = new DataColumn("name", typeof(string));
            dt.Columns.Add(myCol1);
            dt.Columns.Add(myCol2);

            //为DataTable添加行数据
            DataRow myRow = dt.NewRow();
            myRow["id"] = 1;
            myRow["name"] = "ASP.NET";
            dt.Rows.Add(myRow);

            DataRow newRow = dt.NewRow();
            newRow["id"] = 2;
            newRow["name"] = "SQL Server";
            dt.Rows.Add(newRow);

            //遍历DataTable中的行数据
            foreach (DataRow dr in dt.Rows)
                Response.Write("No" + dr["id"] + "  " + dr["name"] + "<br/>");
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdText = "select top 5 gdCode,gdName,gdPrice,gdQuantity,gdSaleQty from goods";
                SqlDataAdapter sda = new SqlDataAdapter(cmdText, conn);
                sda.Fill(ds, "goods");
            }
            DataTable dt = ds.Tables["goods"];
            StringBuilder stblder = new StringBuilder("");
            foreach(DataColumn col in dt.Columns)
            {
                stblder.Append(string.Format("[{0}]", col.ColumnName));
            }
            foreach(DataRow row in dt.Rows)
            {
                stblder.Append("<br/>");
                foreach(DataColumn col in dt.Columns)
                {
                    stblder.Append(string.Format("-{0}-", row[col]));
                }
            }
            lblView.Text = stblder.ToString();
        }
    }
}