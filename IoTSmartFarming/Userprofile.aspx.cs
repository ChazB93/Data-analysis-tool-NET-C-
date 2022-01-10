using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace IoTSmartFarming
{
    public partial class Userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    getUsereData();
                    if(!Page.IsPostBack)
                    {
                        getUserProfileData();
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ ex.Message +"');</script>");

            }

        }

        //update button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                updateUserProfile();

            }

        }

        // user defined function
        void updateUserProfile()
        {
            string password = "";
            if (TextBox10.Text.Trim() =="")
            {
                password = TextBox9.Text.Trim();
            }
            else
            {
                password = TextBox10.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE FARMER SET Firstname =@Firstname, Lastname =@Lastname, Password =@Password, Province =@Province, City =@City, Phone =@Phone, DoB=@DoB, account_status =@account_status WHERE Username = '" + Session["username"].ToString().Trim() + "'", con);

                cmd.Parameters.AddWithValue("@Firstname", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Lastname", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Province", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@City", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@DoB", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                //executenonquery means affect atleast one row
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {
                    Response.Write("<script>alert('Your details updated successfully');</script>");
                    getUserProfileData();
                    getUsereData();
                }
                else
                {
                    Response.Write("<script>alert('Invalid entry ');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ ex.Message +"');</script>");
            }
        }
        void getUserProfileData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Farmer WHERE Username='" + Session["username"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["Username"].ToString();
                TextBox6.Text = dt.Rows[0]["Phone"].ToString();
                TextBox2.Text = dt.Rows[0]["Firstname"].ToString();
                TextBox11.Text = dt.Rows[0]["Lastname"].ToString();
                TextBox4.Text = dt.Rows[0]["Province"].ToString();
                // DropDownList.SelectedValue = dt.Rows[4]["Province"].ToString().Trim();
                TextBox3.Text = dt.Rows[0]["City"].ToString();
                TextBox8.Text = dt.Rows[0]["Username"].ToString();
                TextBox9.Text = dt.Rows[0]["Password"].ToString();

                Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();
                if(dt.Rows[0]["account_status"].ToString().Trim()=="active")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-success");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "pending")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-warning");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "deactive")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-danger");
                }
                else
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-info");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        void getUsereData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Farmer WHERE Username='" + Session["username"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            /* try
            {
                if(e.Row.RowType == DataControlRowType.DataRow)
                {
                    //check your condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if(today>dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            */
        }
    }
}  