using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Data;

namespace CunChuGCDemo
{
    public partial class _4_13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTranTest_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                SqlTransaction trans;
                trans = conn.BeginTransaction();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.Transaction = trans;
                try
                {
                    cmd.CommandText = "insert into GoodEvaluate values(1,4,6,'案例丰富，实用！'," + DateTime.Now.ToString() + ")";
                    cmd.ExecuteNonQuery();
                    cmd.CommandText = "update Goods set gdEvNum=gdEvNum+1 where gdID=46";
                    cmd.ExecuteNonQuery();
                    trans.Commit();
                    Response.Write("评价成功！");
                }
                catch(Exception ee)
                {
                    Response.Write(ee.Message);
                    trans.Rollback();
                }
            }
        }
    }
}