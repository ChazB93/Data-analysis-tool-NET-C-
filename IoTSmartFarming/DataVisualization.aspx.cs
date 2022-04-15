using MySql.Data.MySqlClient;
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
    public partial class DataVisualization : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            showTemperature();
            showHumidity();
           // showPressure();
            showQualityOfSoil();
            //GridView1.DataBind();

        }
        private decimal getTemperature()
        {
            // SqlConnection conn = new SqlConnection(strcon);
            //if (conn.State == System.Data.ConnectionState.Closed)
            //{
            //  conn.Open();
            //}
            //decimal temperature=0;
            //  SqlCommand cmd = new SqlCommand("SELECT TOP 1 value from Temperature ORDER BY time desc", conn);
            //SqlDataReader dr = cmd.ExecuteReader(); 
            //while (dr.Read())
            //{
            //temperature = dr.GetDecimal(0);

            //}
            //GridView1.DataBind();

            MySqlConnection connu = new MySqlConnection();
            connu.ConnectionString = "server=localhost;userid=root;database=ethernet;password=";

            connu.Open();
            decimal temperature = 0;
            MySqlCommand cmd = new MySqlCommand("select temperature from data order by id desc limit 1;", connu);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
                {
                temperature = dr.GetDecimal(0);

                }

                return temperature;
        }


        private void showTemperature()
        {
            decimal actTemperature = getTemperature();
            temperatureLabel.Text = actTemperature.ToString();

            if (actTemperature > 40 || actTemperature < 10)
            {
                Label2.Visible = false;
                Label3.Visible = true;


            }
        }
        private decimal getHumidity()
        {

            MySqlConnection connu = new MySqlConnection();
            connu.ConnectionString = "server=localhost;userid=root;database=ethernet;password=";

            connu.Open();
            decimal humidity = 0;
            MySqlCommand cmd = new MySqlCommand("select humidity from data order by id desc limit 1;", connu);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                humidity = dr.GetDecimal(0);

            }
            return humidity;
        }

        private void showHumidity()
        {
            decimal actHumidity = getHumidity();
           humidityLabel.Text = actHumidity.ToString();

            if(actHumidity>100 || actHumidity < 10)
            {
                Label5.Visible = false;
                Label6.Visible = true;


            }

        }
        //private decimal getPressure()
        //{
          
          //      SqlConnection conn = new SqlConnection(strcon);
            //    if (conn.State == System.Data.ConnectionState.Closed)
              //  {
                //    conn.Open();
                //}
            //decimal pressure = 0;
              //  SqlCommand cmd = new SqlCommand("SELECT TOP 1 value from Pressure ORDER BY time desc", conn);
                //SqlDataReader dr = cmd.ExecuteReader();
                //while (dr.Read())
                //{
                //pressure = dr.GetDecimal(0);

//                }
  //          // GridView1.DataBind();
    //        return pressure;
      //  }


       // private void showPressure()
        //{
          //  decimal actPressure = getPressure();
            //pressureLabel.Text = actPressure.ToString();

//            if (actPressure > 30 || actPressure < 10)
  //          {
    //            Label8.Visible = false;
      //          Label9.Visible = true;


        //    }
        //}
        private decimal getQualityOfSoil()
        {

            MySqlConnection connu = new MySqlConnection();
            connu.ConnectionString = "server=localhost;userid=root;database=ethernet;password=";

            connu.Open();
            decimal quality = 0;
            MySqlCommand cmd = new MySqlCommand("select moisture from data order by id desc limit 1;", connu);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                quality = dr.GetDecimal(0);

            }

            return quality;
        }

        private void showQualityOfSoil()
        {
            decimal actQuality = getQualityOfSoil();
            qualityLabel.Text = actQuality.ToString();

            if (actQuality > 30 || actQuality < 10)
            {
                Label11.Visible = false;
                Label12.Visible = true;


            }
        }
    }
}