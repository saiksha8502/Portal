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
public partial class Placement_Portal_Forgot : System.Web.UI.Page
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
        if (newpasswordTXT.Text.Length>0|| usernameTXT.Text.Length > 0)
        {
            if (newpasswordTXT.Text == confirmpasswordTXT.Text)
            {
                OracleConnection con = new OracleConnection(strConnString);
                con.Open();
                string query = "update login set upassword='" + newpasswordTXT.Text + "' where username='" + usernameTXT.Text + "'";
                OracleCommand cmd = new OracleCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("default.aspx");
            }
        }
    }
    protected void Cancel(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
        usernameTXT.Text = string.Empty;
        mailidTXT.Text = string.Empty;
        newpasswordTXT.Text = string.Empty;
        confirmpasswordTXT.Text = string.Empty;
    }
    //else
    //{
    //    //Response.Redirect("EPMasterPage.master");
    //    Label1.Visible = true;
    //    Label1.Text = "Invalid User Name or Password! Please try again! ";

    //}

    //OracleConnection con = new OracleConnection(strConnString);
    //con.Open();
    //str = "Insert into FP values ('" + usernameTXT.Text +"','" +mailidTXT.Text +"', '"+newpasswordTXT.Text+"','"+ confirmpasswordTXT.Text +"')";
    //OracleCommand cmd = new OracleCommand(str, con);
    //cmd.ExecuteNonQuery();
    //con.Close();
}
   
