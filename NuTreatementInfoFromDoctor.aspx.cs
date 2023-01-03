using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class NuTreatementInfoFromDoctor : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    string strcon, d1;
    SqlDataReader rdr;
    SqlDataAdapter da;
    SqlDataAdapter da1;
    DataSet ds1;
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

        ut1 = "Patient";
        ut2 = "Doctor";
        sn = Session["x"].ToString();
        st = Session["utyp"].ToString();

        if (!Page.IsPostBack)
        {
            con.Open();
            da = new SqlDataAdapter("select * from reg where usertype='" + ut1 + "' and status=1", con);
            ds = new DataSet();
            da.Fill(ds, "reg");
            pid.DataSource = ds;
            pid.DataTextField = "name";
            pid.DataValueField = "uid";
            pid.DataBind();
            con.Close();

            con.Open();
            da = new SqlDataAdapter("select * from reg where usertype='" + ut2 + "' and status=1", con);
            ds = new DataSet();
            da.Fill(ds, "reg");
            did.DataSource = ds;
            did.DataTextField = "name";
            did.DataValueField = "uid";
            did.DataBind();
            con.Close();
        }


    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        con.Open();
        //cmd = new SqlCommand("select * from treatmentinfo where pname='" + pid.SelectedItem.Text + "' and did='" + did.SelectedItem.Text + "'", con);
       // rdr = cmd.ExecuteReader();

        cmd = new SqlCommand("select * from treatmentinfo", con);
        rdr = cmd.ExecuteReader();
        if (rdr.Read() == true)
        {
            con.Close();
            Label3.Visible = false;
            GridView1.Visible = true;
            con.Open();
            //pname, did, diseases, description, result, medicalinfo
            //da1 = new SqlDataAdapter("select * from treatmentinfo where pname='" + pid.Text + "' and did='" + did.Text + "'", con);
            //ds1 = new DataSet();
            da1 = new SqlDataAdapter("select pname, did, diseases, description, result, medicalinfo from treatmentinfo where pname='" + pid.SelectedItem.Text + "' and did='" + did.SelectedItem.Text+ "' and status=0", con);
            ds1 = new DataSet();
            da1.Fill(ds1, "treatmentinfo");
            GridView1.DataSource = ds1;
            GridView1.DataBind();
            con.Close();

        }
        else
        {
            Label3.Visible = true;
            GridView1.Visible = false;
            Label3.Text = "Invalid ! Pls Try Again!!";
        }
    }
    protected void Button3_Click(object sender, System.EventArgs e)
    {
       
    }
}