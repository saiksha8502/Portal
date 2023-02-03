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
public partial class Placement_Portal_ITD : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    OracleCommand com;
    OracleDataAdapter orada;
    string str;
    DataTable dt;
    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            populatedeptid();
        }
    }
    protected void Save(object sender, EventArgs e)
    {
        OracleConnection con = new OracleConnection(strConnString);
        con.Open();
        string str = "Insert into interviewdetails values ('" + NameTXT.Text + "','" + EmailIDTXT.Text + "', '" + ddldepid.SelectedValue + "','" + ddlsemid.SelectedValue + "','" + ddlscheduled.SelectedValue + "','" + CompanyNameTXT.Text + "')";
        OracleCommand cmd = new OracleCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void populatedeptid()
    {
        OracleConnection con = new OracleConnection(strConnString);
        con.Open();
        str = "select deptname,deptid from dep";
        com = new OracleCommand(str);
        orada = new OracleDataAdapter(com.CommandText, con);
        dt = new DataTable();
        orada.Fill(dt);
        ddldepid.DataSource = dt;
        ddldepid.DataValueField = "deptid";
        ddldepid.DataTextField = "deptname";
        string s1 = ddldepid.DataValueField;
        ddldepid.DataBind();
        // drpHeliNo.Items.Insert(0, new ListItem("Select", ""));
        ddldepid.Items.Insert(0, new ListItem("Select", "Select"));
    }
}
