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
    public partial class Adminfarmersmanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        // go button

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            getFarmerByID();


        }
        // active button

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateFarmerStatusByID("active");
        }

        // pending
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateFarmerStatusByID("pending");
        }

        //deactive
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateFarmerStatusByID("deactive");
        }

        //delete
        protected void Button5_Click(object sender, EventArgs e)
        {
            if (checkifauthorexists())
            {
                deleteAccount();

            }
            else
            {
                Response.Write("<script>alert('Username does not exist');</script>");
            }

        }

        //user defined function

        void getFarmerByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Farmer WHERE Username='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox7.Text = dr.GetValue(8).ToString();
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox11.Text = dr.GetValue(2).ToString();
                        TextBox5.Text = dr.GetValue(7).ToString();
                        TextBox4.Text = dr.GetValue(4).ToString();
                        TextBox8.Text = dr.GetValue(5).ToString();
                        TextBox9.Text = dr.GetValue(6).ToString();
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        void updateFarmerStatusByID(String status)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Farmer SET account_status = '"+ status +"' WHERE Username='" + TextBox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Account status updated successfully');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void deleteAccount()
        {
            if (TextBox1.Text.Trim().Equals(""))
            {
                Response.Write("<script>alert('Username cannot be blank');</script>");
            }
            else
            {

                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from Farmer WHERE Username='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Account deleted successfully');</script>");
                    Clearform();
                    GridView1.DataBind();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }
        bool checkifauthorexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Farmer WHERE Username='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


                con.Close();
                Response.Write("<script>alert('Successfully Sent');</script>");


            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void Clearform()
        {
            TextBox1.Text = "";
            TextBox7.Text = "";
            TextBox2.Text = "";
            TextBox11.Text = "";
            TextBox5.Text = "";
            TextBox4.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }
    }
}