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
            cmd.CommandText = "select *from logintab where unm='" + TextBox1.Text + "' and psw='" + TextBox2.Text + "'";
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                if (dt.Rows[0]["roll"].ToString() == "user")
                {
                    Session["rid"] = dt.Rows[0][1].ToString();
                    Session["unm"] = TextBox1.Text;
                    Response.Redirect("usrhom.aspx");
                }
                else if (dt.Rows[0]["roll"].ToString() == "admin")
                {
                    Session["lid"] = dt.Rows[0][2].ToString();
                    Session["unm"] = TextBox1.Text;
                    Response.Redirect("adhome.aspx");
                }
                else
                {
                    Response.Write("<script type=\"text/javascript\">alert('Invalid');</script>");
                }
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            else
            {

                Response.Write("<script type=\"text/javascript\">alert('Invalid');</script>");
            }
    }
}