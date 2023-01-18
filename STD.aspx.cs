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

public partial class Placement_Portal_STD : System.Web.UI.Page
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
      
    }
    protected void Save(object sender, EventArgs e)
    {
        OracleConnection con = new OracleConnection(strConnString);
        con.Open();

        string stre = "Insert into details values ('" + college_IdTXT.Text + "','" + student_nameTXT.Text + "', '" + SectionTXT.Text + "','" + ddldepid.SelectedValue + "','" + Graduation_yearTXT.Text + "','" + DropDownGender.SelectedValue + "','" + Mobile_noTXT.Text + "','" + Mail_IDTXT.Text + "','" + ddlsemid.SelectedValue.Replace("&nbsp;", "0") + "')";
        OracleCommand cmdd = new OracleCommand(stre, con);
        cmdd.ExecuteNonQuery();
        con.Close();
        //Label1.Text="Entered details Successfully";
        fillgrid();
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
  
    protected void Cancel(object sender, EventArgs e)
    {
        student_nameTXT.Text = string.Empty;
        college_IdTXT.Text = string.Empty;
        ddldepid.SelectedValue = string.Empty;
        SectionTXT.Text = string.Empty;
        Graduation_yearTXT.Text = string.Empty;
        DropDownGender.SelectedValue = string.Empty;
        Mobile_noTXT.Text = string.Empty;
        Mail_IDTXT.Text = string.Empty;
        ddlsemid.SelectedValue = string.Empty;
    }
    public void fillgrid()
    {

        OracleConnection con = new OracleConnection(strConnString);
        string str = @"Select * from details";

        OracleCommand cmd = new OracleCommand(str);
        OracleDataAdapter orada = new OracleDataAdapter(cmd.CommandText, con);
        DataTable dt = new DataTable();
        orada.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gv.DataSource = dt;
            gv.DataBind();
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
   
    protected void EditGrid(object sender, GridViewEditEventArgs e)
        {
            gv.EditIndex = e.NewEditIndex;
            fillgrid();
           }
    protected void UpdateGrid(object sender, GridViewUpdateEventArgs e)
    {
        
        TextBox MailIDTXT = (TextBox)gv.Rows[e.RowIndex].FindControl("MailIDTXT");
        TextBox MobileNoTXT = (TextBox)gv.Rows[e.RowIndex].FindControl("MobileNoTXT");
        int Regno = Convert.ToInt32(gv.DataKeys[e.RowIndex].Value.ToString());
        OracleConnection con = new OracleConnection(strConnString);
        con.Open();
        string s2 = "update details set MailID='" + MailIDTXT.Text + "',mobileno='" + MobileNoTXT.Text + "' where RegNo='" + Regno + "'";
        OracleCommand cmdd = new OracleCommand(s2, con);
        cmdd.ExecuteNonQuery();
        con.Close();
        fillgrid();
    }
        protected void DeleteGrid(object sender, GridViewDeleteEventArgs e)
    {
        OracleConnection con = new OracleConnection(strConnString);
        con.Open();
        GridViewRow row = (GridViewRow)gv.Rows[e.RowIndex];
        //Label lbldeleteid = (Label)row.FindControl("lblID");
      
        int Regno = Convert.ToInt32(gv.DataKeys[e.RowIndex].Value.ToString());
        string s1 = "delete from details where regno=" + Regno;
        OracleCommand cmdd = new OracleCommand(s1, con);
        cmdd.ExecuteNonQuery();
        con.Close();
        fillgrid();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       gv.PageIndex = e.NewPageIndex;
        fillgrid();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

        protected void CancelGrid(object sender, GridViewCancelEditEventArgs e)
    {
        gv.EditIndex = -1;
        fillgrid();
    }
  
        protected void AddGrid(object sender, GridViewCommandEventArgs e)
        {
        if (e.CommandName.Equals("ADD"))
        {
            OracleConnection con = new OracleConnection(strConnString);
            con.Open();

            string stre = "Insert into details values ('" + student_nameTXT.Text + "','" + college_IdTXT.Text + "', '" + SectionTXT.Text + "','" + ddldepid.SelectedValue + "','" + Graduation_yearTXT.Text + "','" + DropDownGender.SelectedValue + "','" + Mobile_noTXT.Text + "','" + Mail_IDTXT.Text + "','" + ddlsemid.SelectedValue.Replace("&nbsp;", "0") + "')";
            OracleCommand cmdd = new OracleCommand(stre, con);
            cmdd.ExecuteNonQuery();
            con.Close();
            Response.Write("Entered details Successfully");
        }
    }
}