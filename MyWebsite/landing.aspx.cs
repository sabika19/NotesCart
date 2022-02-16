using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MyWebsite
{
    public partial class landing : System.Web.UI.Page
    {SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
          
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session.Clear();
            //Session.Abandon();
            
        }
        protected void btnlogin_click(object sender, EventArgs e)
        {
           
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand(@"select * from user_database where username='"+txtuser.Text+"' and password='"+txtpwdlogin.Text+"'", con);
            SqlDataReader dr = null;
            dr = cmd.ExecuteReader();
              if (!@dr.Read())
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('INVALID CREDENTIALS!')", true);
            else
            {
                Session["username"] = (dr["username"].ToString());
                Session["name"] = (dr["name"].ToString());
               Session["email"] = (dr["email"].ToString());
               Session["userid"] = (dr["user_id"].ToString());
               // phone = (dr["mobile"].ToString());
                Response.Redirect("DashBoard.aspx",false);
            }
            
            dr.Close();
            dr.Dispose();
            con.Close();
            con.Dispose();
        }
        protected void btnregister_click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand(@"insert into user_database(name,username,email,password) values(@name,@username,@email,@password)", con);
            cmd.Parameters.AddWithValue("@name", SqlDbType.VarChar).Value = txtname.Text;
            cmd.Parameters.AddWithValue("@username", SqlDbType.VarChar).Value = txtusernew.Text;
            cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = txtemail.Text;
            cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = txtpwd.Text;
          
            cmd.ExecuteNonQuery();
            try
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('REGISTRATION SUCCESSFUL!')", true);
            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('REGISTRATION UNSUCCESSFUL! TRY AGAIN LATER..')", true);
            }
            con.Close();
            con.Dispose();
        }
    }
}