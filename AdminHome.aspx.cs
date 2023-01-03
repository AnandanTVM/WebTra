using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class AdminHome : System.Web.UI.Page
{
    string utyp, uname;
    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["x"].ToString();
        utyp = Session["utyp"].ToString();
        Label1.Text = uname;
    }
}