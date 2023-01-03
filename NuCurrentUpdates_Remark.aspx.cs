using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class NuCurrentUpdates_Remark : System.Web.UI.Page
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
        d1 = DateTime.Now.ToString("dd-MM-yyyy");


        con.Open();
        cmd = new SqlCommand("select uid from remark_currentupdates order by uid Desc", con);
        rdr = cmd.ExecuteReader();
        if (rdr.Read() == true)
        {
            id = Convert.ToInt32(rdr["uid"]);
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
        cmd = new SqlCommand("insert into remark_currentupdates values(" + id + ",'"+sn+"','" + pid.SelectedValue + "','" + pid.SelectedItem.Text + "','" + did.SelectedValue + "','" + did.SelectedItem.Text + "','" + re.Text + "','" + rem.Text + "',0)", con);
        cmd.ExecuteNonQuery();
        con.Close();
       

        re.Text = "";
        rem.Text = "";
      



        Label3.Text = "Updated!!";
    }
protected void  Button1_Click(object sender, EventArgs e)
{
     re.Text = "";
        rem.Text = "";
}
}