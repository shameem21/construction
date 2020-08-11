﻿using System;
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
        cmd.CommandText = "update usrmattb set status= 'Accepted',allotquantity='"+TextBox1.Text+"',dtofdelivery='"+Calendar1.SelectedDate.ToShortDateString()+"' where bookid=" + Request.QueryString["id"].ToString() + "";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script type=\"text/JavaScript\">alert('Success');</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "update usrmattb set status= 'Rejected' where bookid=" + Request.QueryString["id"].ToString() + "";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script type=\"text/JavaScript\">alert('Success');</script>");
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        DateTime pastday = e.Day.Date;
        DateTime date = DateTime.Now;
        int year = date.Year;
        int month = date.Month;
        int day = date.Day;
        DateTime today = new DateTime(year, month, day);
        //DateTime tommorow = new DateTime(year, month, day + 5);

        if (pastday.CompareTo(today) < 0)
        {
            e.Cell.BackColor = System.Drawing.Color.Gray;
            e.Day.IsSelectable = false;
        }
    }
}