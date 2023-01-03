using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class PaComplaintUpdatesV : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    string strcon, d1;
    SqlDataReader reader;
    int rid, id;
    string uname, utype;
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);


        uname = Session["x"].ToString();
        //Label2.Text = uname.ToString();
        string utype = Session["utyp"].ToString();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from complaint where status=1 and cid='" + un.Text + "' and userid='" + uname + "'", con);
        reader = cmd.ExecuteReader();
        if (reader.Read() == true)
        {
            ct.Text = Convert.ToString(reader["ctype"]);
            ds.Text = Convert.ToString(reader["date"]);
            co.Text = Convert.ToString(reader["complaint"]);
            cr.Text = Convert.ToString(reader["updation"]);
            
        }
        else
        {
            Label1.Text = "Invalid Number!! Pls Try Again!!";
        }
       
        con.Close();

    }
}