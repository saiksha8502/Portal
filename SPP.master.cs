using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Placement_Portal_SPP : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Redirect(ResolveUrl("Login.aspx"));
    }
    protected void logout(object sender, EventArgs e)
    {
        Response.Redirect(ResolveUrl("Login.aspx"));
    }
}
