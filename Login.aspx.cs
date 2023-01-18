using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls.WebParts;
using System.Data.OracleClient;
using System.Data.OleDb;




public partial class Login : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    OracleCommand com;
    OracleDataAdapter orada;

    string str;
    DataTable dt;
    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        //fillgrid();
    }
    //protected void Login_Click(object sender, EventArgs e)
    //{

    //    OracleConnection con = new OracleConnection(strConnString);
    //    con.Open();

    //    str = "Select * from signup where username='" + usernameTXT.Text + "' and newpassword='" + PasswordTXT.Text + "' ";
    //         com = new OracleCommand(str);
    //        orada = new OracleDataAdapter(com.CommandText, con);
    //        dt = new DataTable();
    //        orada.Fill(dt);
    //        RowCount = dt.Rows.Count;
    //        int flag = 0;
    //        if (dt.Rows.Count == 0)
    //        {
    //            string query = "insert into login values('" + usernameTXT.Text + "','" + PasswordTXT.Text + "',sysdate)";
    //            OracleCommand cmd = new OracleCommand(query, con);
    //            cmd.ExecuteNonQuery();
    //            con.Close();
    //            Response.Redirect("default.aspx");
    //            Label1.Visible = true;
    //            Label1.Text = "login is Successfull";


    //    }
    //    else
    //    {
    //        //Response.Redirect("EPMasterPage.master");
    //        Label1.Visible = true;
    //        Label1.Text = "Invalid User Name or Password! Please try again! ";

    //    }


    //}
    protected void Login_Click(object sender, EventArgs e)
    {
      

        OracleConnection con = new OracleConnection(strConnString);
        con.Open();
        str = "Select * from signup t where username='" + usernameTXT.Text + "' and newpassword='" + PasswordTXT.Text + "' ";
       
        com = new OracleCommand(str);
        orada = new OracleDataAdapter(com.CommandText, con);
        dt = new DataTable();
        orada.Fill(dt);
        RowCount = dt.Rows.Count;

        if (RowCount==1)
        {
           // Response.Write(RowCount);
            string query = "insert into login values('" + usernameTXT.Text + "','" + PasswordTXT.Text + "',sysdate)";
            OracleCommand cmd = new OracleCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Write("login is ");
            Response.Redirect("default.aspx");
            Label1.Visible = true;
            Label1.Text = "login is Successfull";
        }
        else
        {
            Label1.Text = "Invalid User Name or Password! Please try again!";
        }


    }
    protected void FP_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgot.aspx");
    }
    protected void SignUP(object sender, EventArgs e)
    {
        Response.Redirect("SignUP.aspx");
    }
    protected void Cancel(object sender, EventArgs e)
    {
        usernameTXT.Text = string.Empty;
        PasswordTXT.Text = string.Empty;
        
    }
    
}
