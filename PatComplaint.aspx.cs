using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class PatComplaint : System.Web.UI.Page
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
        d1 = DateTime.Now.ToString("dd-MM-yyyy");

        con.Open();
        cmd = new SqlCommand("select cid from complaint order by cid Desc", con);
        reader = cmd.ExecuteReader();
        if (reader.Read() == true)
        {
            id = Convert.ToInt32(reader["cid"]);
            id = id + 1;
        }
        else
        {
            id = 1;
        }
        cmd.Dispose();
        con.Close();


        con.Open();
        cmd = new SqlCommand("INSERT INTO complaint values(" + id + ",'" + uname + "','" + ct.Text + "','" + co.Text + "','" + d1 + "',null,0   )", con);
        cmd.ExecuteNonQuery();
        if (cmd != null)
        {
            ct.Text = "";
            co.Text = "";
        }

        con.Close();
        Label3.Text = "Complaint updated :   Your Complaint ID is   :  " + id;
    }
}