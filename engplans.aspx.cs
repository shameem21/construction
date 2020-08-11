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
        FileUpload1.SaveAs(Server.MapPath("") + "\\plans\\" + FileUpload1.FileName);
        cmd.Connection = con;
        cmd.CommandText = "insert into engplantab values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+FileUpload1.FileName+"')";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script type=\"text/javascript\">alert('success');</script>");
      

    }
}