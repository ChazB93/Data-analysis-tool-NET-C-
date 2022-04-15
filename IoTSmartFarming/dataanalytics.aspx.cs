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
    public partial class dataanalytics : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        public string lineData;
        protected void Page_Load(object sender, EventArgs e)
        {
            //LoadDataOfLineChart();
        }
         
        
            

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}