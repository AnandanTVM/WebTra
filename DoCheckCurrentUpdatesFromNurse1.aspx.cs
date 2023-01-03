using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class DoCheckCurrentUpdatesFromNurse1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    String strcon, ut2;
    protected void Page_Load(object sender, EventArgs e)
    {



        ut2 = "Doctor";

        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();


        con.Open();
        da = new SqlDataAdapter("select * from reg where  name='" + uname + "' and usertype='" + ut2 + "' and status=1", con);
        ds = new DataSet();
        da.Fill(ds, "reg");
        did.DataSource = ds;
        did.DataTextField = "department";
        did.DataValueField = "uid";
        did.DataBind();
        con.Close();


        // string s1 = "Coordinator";
        // Label1.Text = uname.ToString();
        // string utyp = Session["UserType"].ToString();
        con.Open();
        da = new SqlDataAdapter("select * from remark_currentupdates where status=0 and dname='"+uname+"' and did='"+did.SelectedValue+"'", con);
        ds = new DataSet();
        da.Fill(ds, "remark_currentupdates");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
}