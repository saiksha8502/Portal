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



public partial class Placement_Portal_SignUP : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    OracleCommand com;
    OracleDataAdapter orada;

    string str;
    DataTable dt;
    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Save(object sender, EventArgs e)
    {
        if (usernameTXT.Text.Length>0 || mailidTXT.Text.Length > 0 || newpasswordTXT.Text.Length > 0 || confirmpasswordTXT.Text.Length > 0)
        {
            if (newpasswordTXT.Text == confirmpasswordTXT.Text)
            {
                OracleConnection con = new OracleConnection(strConnString);
                con.Open();
                str = "insert into signup values('" + usernameTXT.Text + "','" + mailidTXT.Text + "','" + newpasswordTXT.Text + "','" + newpasswordTXT.Text + "') ";
                OracleCommand cmd = new OracleCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("default.aspx");
            }
            else
            {
                Label1.Text = "Entered Password and confirm password are not same";
            }
            
        }
        else
        { Label1.Text = "Enter the Details for all the field";
        }

    }
    protected void cancel(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
        usernameTXT.Text = string.Empty;
        mailidTXT.Text= string.Empty;
        newpasswordTXT.Text= string.Empty;
        confirmpasswordTXT.Text = string.Empty;
     }
}