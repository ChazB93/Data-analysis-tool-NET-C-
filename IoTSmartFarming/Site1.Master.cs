using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IoTSmartFarming
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                if ("".Equals(Session["role"]))
                {
                    LinkButton2.Visible = true; //user login link button


                    LinkButton4.Visible = false; //logout link button
                    LinkButton5.Visible = false; //hello user link button


                    LinkButton6.Visible = true; //Admin login link button
                    LinkButton8.Visible = false; //Farmer Management link button
                    LinkButton9.Visible = false; //Post Management link button
                }
                else if ("user".Equals(Session["role"]))
                {
                    LinkButton2.Visible = false; //user login link button

                    LinkButton4.Visible = true; //logout link button
                    LinkButton5.Visible = true; //hello user link button
                    LinkButton5.Text = "Hello " + Session["username"].ToString();


                    LinkButton6.Visible = true; //Admin login link button
                  
                    LinkButton8.Visible = false; //Farmer Management link button
                    LinkButton9.Visible = false; //Post Management link button
                }
                else if ("admin".Equals(Session["role"]))
                {
                    LinkButton2.Visible = false; //user login link button

                    LinkButton4.Visible = true; //logout link button
                    LinkButton5.Visible = true; //hello user link button
                    LinkButton5.Text = "Hello Admin ";


                    LinkButton6.Visible = false; //Admin login link button
                    LinkButton8.Visible = true; //Farmer Management link button
                    LinkButton9.Visible = true; //Post Management link button
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userlogin.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {

            Response.Redirect("Adminlogin.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminfarmersmanagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["name"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton2.Visible = true; //user login link button

            LinkButton4.Visible = false; //logout link button
            LinkButton5.Visible = false; //hello user link button


            LinkButton6.Visible = true; //Admin login link button
            LinkButton8.Visible = false; //Publisher Management link button
            LinkButton9.Visible = false; //Book Inventory link button
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userlogin.aspx");
        }
    }
}