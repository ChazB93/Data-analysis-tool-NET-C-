using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IoTSmartFarming
{
    public partial class charts : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        public string lineData;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDataOfLineChart();
        }

        public void LoadDataOfLineChart()
        {
            SqlConnection conn = new SqlConnection(strcon);
            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from Temperature", conn);
            DataTable dt = new DataTable();
            gvLineChart.DataSourceID = null;
            dt.Load(cmd.ExecuteReader());
            gvLineChart.DataSource = dt;
            gvLineChart.DataBind();




            lineData = "[";
            foreach (DataRow dr in dt.Rows)   
            {
                lineData += "[" + dr["time"] + ", " + dr["value"] + "], ";
            }
            lineData = lineData.Remove(lineData.Length - 1) + ']';

        }
    }
}