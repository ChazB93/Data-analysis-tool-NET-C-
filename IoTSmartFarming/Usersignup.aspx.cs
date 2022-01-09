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
    public partial class Usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if (Checkmemberexists())
            {
                Response.Write("<script>alert('This username exist, choose a new one')</script>");
            }
            else
            {
                Signupnewmember();
            }
        }
        bool Checkmemberexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from farmer WHERE Username='" + TextBox8.Text.Trim() + "'; ", con);
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
                Response.Write("<script>alert('Account Successfully created')</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ ex.Message +"')</script>");
                return false;
            }
        }
        void Signupnewmember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Farmer ( Username,Firstname,Lastname,Password,Province,City,Phone,DoB,account_status) values(@Username,@Firstname,@Lastname,@Password,@Province,@City,@Phone,@DoB,@account_status)", con);

                cmd.Parameters.AddWithValue("@Username", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Firstname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Lastname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Province", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@DoB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Account successfully created. Now you can login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}