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

public partial class Placement_Portal_SEMDaspx : System.Web.UI.Page
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
            // populatesemid();
            fillgrid();
        }

        //fillgrid();
    }
    protected void Save(object sender, EventArgs e)
    {

        OracleConnection con = new OracleConnection(strConnString);
        con.Open();
        str = "Insert into semdetails values ('" + ddlsemid.SelectedValue + "','" + CGPATXT.Text + "', '" + backlogsTXT.Text + "','" + activeTXT.Text + "','" + creditsTXT.Text + "','" + ddldepid.SelectedValue + "','" + RegNotxt.Text + "')";
        OracleCommand cmd = new OracleCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
        fillgrid();
    }
    protected void Fetch(object sender, EventArgs e)
    {
        
        OracleConnection con = new OracleConnection(strConnString);
        string str = "select * from semdetails";
        OracleCommand com = new OracleCommand(str);
        OracleDataAdapter orada = new OracleDataAdapter(com.CommandText, con);
        DataTable dt = new DataTable();
        orada.Fill(dt);
        gv.DataSource = dt;
        gv.DataBind();
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
    public void fillgrid()
    {

        OracleConnection con = new OracleConnection(strConnString);
        //string str = @"Select semid,cgpa,backlogs, active,creditsearned,deptid  from semdetails";
        string str = @"Select *  from semdetails";

        OracleCommand cmd = new OracleCommand(str);
        OracleDataAdapter orada = new OracleDataAdapter(cmd.CommandText, con);
        DataTable dt = new DataTable();
        orada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            //Response.Write("in part2A grid rows count");
            gv.DataSource = dt;
            gv.DataBind();
            //Response.Write("Entered Details Saved ");
            // ClientScript.RegisterStartupScript(this.GetType(), "ScriptName", "<script type=text/javascript>alert('Entered Details Saved ')</script>");

        }
        else
        {
            dt.Rows.Add(dt.NewRow());
            gv.DataSource = dt;
            gv.DataBind();
            int columncount = gv.Rows[0].Cells.Count;
            gv.Rows[0].Cells.Clear();
            gv.Rows[0].Cells.Add(new TableCell());
            gv.Rows[0].Cells[0].ColumnSpan = columncount;
            gv.Rows[0].Cells[0].Text = "";
        }
    }
    //    public void fillgrid()
    //{

    //    OracleConnection con = new OracleConnection(strConnString);
    //    con.Open();
    //    string str = "Select semid,cgpa,backlogs, active, creditsearned, deptid, from semdetails from employee";
    //    OracleConnection conr = new OracleConnection(strConnString);
    //    OracleCommand com = new OracleCommand(str);
    //    OracleDataAdapter orada = new OracleDataAdapter(com.CommandText, conr);
    //    DataTable ds = new DataTable();
    //    orada.Fill(ds);
    //    gv.DataSource = ds;
    //    gv.DataBind();
    //}
}