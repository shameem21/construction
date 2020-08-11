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
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select unm from logintab where unm='"+TextBox8.Text+"'";
        da.SelectCommand = cmd;
        da.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            Response.Write("<script type=\"text/JavaScript\">alert('username already exist,Pls change');</script>");
        }
        else
        {

            cmd.Connection = con;
            cmd.CommandText = "insert into regtb values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "'," + TextBox7.Text + ",'" + TextBox8.Text + "','" + TextBox9.Text + "')";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Connection = con;
            cmd.CommandText = "select max(rid)from regtb";
            da.SelectCommand = cmd;
            da.Fill(dt);
            string uname = TextBox8.Text + dt.Rows[0][0].ToString();
            cmd.Connection = con;
            cmd.CommandText = "insert into logintab values(" + dt.Rows[0][0] + ",'" + uname + "','" + TextBox9.Text + "','user')";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script type=\"text/javascript\">alert('Pls note your user name for later login:" + uname + "');</script>");
            Response.Redirect("login.aspx");
        }
    }
}