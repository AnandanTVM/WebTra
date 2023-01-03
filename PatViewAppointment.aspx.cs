using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class PatViewAppointment : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    string strcon, d1;
    SqlDataReader rdr;
    SqlDataAdapter da;
    DataSet ds;
    int rid, id;
    string ut1, ut2, ti, st, sn;
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        ut1 = "Patient";
        ut2 = "Doctor";
        sn = Session["x"].ToString();
        st = Session["utyp"].ToString();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from appointment where apid=" + ap.Text + " and sendername='" + sn + "'", con);
        rdr = cmd.ExecuteReader();
        if (rdr.Read() == true)
        {
            con.Close();
            Label3.Visible = false;
            GridView1.Visible = true;
            con.Open();


            da = new SqlDataAdapter("select sendername, doctorid, allowdate, allowtime, department, statusupdate from appointment where apid=" + ap.Text + " and sendername='" + sn + "'", con);
            ds = new DataSet();
            da.Fill(ds, "appointment");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }
        else
        {
            Label3.Visible = true;
            GridView1.Visible = false;
            Label3.Text = "Invalid Appointmnent Number! Pls Try Again!!";
        }

    }
}