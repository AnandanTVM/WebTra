using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class docUpdateTreatmentInfo : System.Web.UI.Page
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
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        d1 = DateTime.Now.ToString("dd-MM-yyyy");


        con.Open();
        cmd = new SqlCommand("select tid from treatmentinfo order by tid Desc", con);
        rdr = cmd.ExecuteReader();
        if (rdr.Read() == true)
        {
            id = Convert.ToInt32(rdr["tid"]);
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
        cmd = new SqlCommand("insert into treatmentinfo values(" + id + ",'" + pid.SelectedValue + "','" + pid.SelectedItem.Text + "','" + sn + "','" + disease.Text + "','" + de.Text + "','" + result.Text + "','" + null + "','" + d1 + "','" + mi.Text + "','" + pi.Text + "','" + re.Text + "',0)", con);
        cmd.ExecuteNonQuery();
        con.Close();
        re.Text = "";

        result.Text = "";
        disease.Text = "";
        de.Text = "";

        mi.Text = "";
        pi.Text = "";
        re.Text = "";



        Label3.Text = "Treatment Report Updated!!";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        re.Text = "";

        result.Text = "";
        disease.Text = "";
        de.Text = "";

        mi.Text = "";
        pi.Text = "";
        re.Text = "";

    }
}