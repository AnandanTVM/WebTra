using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class DoAppointmentChecking1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    SqlDataAdapter da1;
    DataSet ds,ds1;
    String strcon, ut2;

    protected void Page_Load(object sender, EventArgs e)
    {
        ut2 = "Doctor";
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();




        con.Open();
          da = new SqlDataAdapter("select * from reg where  name='"+ uname+"' and usertype='"+ut2+"' and status=1", con);
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
        da1 = new SqlDataAdapter("select * from appointment where did='"+uname+"' and department='"+did.SelectedItem.Text +"' and  status=0", con);
        ds1 = new DataSet();
        da1.Fill(ds1, "appointment");
        GridView1.DataSource = ds1;
        GridView1.DataBind();
        con.Close();
    }
}