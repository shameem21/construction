using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "update workerbookingtb set status= 'Accepted' where bid=" + Request.QueryString["id"].ToString() + "";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script type=\"text/JavaScript\">alert('Success');</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "update workerbookingtb set status= 'Rejected' where bid=" + Request.QueryString["id"].ToString() + "";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script type=\"text/JavaScript\">alert('Success');</script>");
    }
}