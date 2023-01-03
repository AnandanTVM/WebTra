using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Happointment : System.Web.UI.Page
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
        ut1 = "Public";
        ut2 = "Doctor";
        //sn = Session["x"].ToString();
       // st = Session["utyp"].ToString();

        if (!Page.IsPostBack)
        {
           

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
        d1 = DateTime.Now.ToString("dd-MM-yyyy");


        con.Open();
        cmd = new SqlCommand("select apid from appointment order by apid Desc", con);
        rdr = cmd.ExecuteReader();
        if (rdr.Read() == true)
        {
            id = Convert.ToInt32(rdr["apid"]);
            id = id + 1;
        }
        else
        {
            id = 1;
        }
        cmd.Dispose();
        con.Close();

        con.Open();
        d1 = DateTime.Now.ToString("dd-MM-yyyy");
        cmd = new SqlCommand("insert into appointment values(" + id + ", '" + ut1 + "','" + na.Text + "','" + 0 + "','" + na.Text + "','" + did.SelectedValue + "','" + did.SelectedItem.Text + "','" + de.Text + "','" + doa.Text + "','" + toa.Text + "','" + re.Text + "',null,null,null,0)", con);
        cmd.ExecuteNonQuery();
        con.Close();
        re.Text = "";
        de.Text = "";
        doa.Text = "";
        toa.Text = "";



        Label3.Text = "Appointment Request Send Successfully!!!  Your Tracking ID is    :  " + id;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        re.Text = "";
        de.Text = "";
        doa.Text = "";
        toa.Text = "";
    }
}