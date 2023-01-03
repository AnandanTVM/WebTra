using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class PatAppointmentFixing : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    string strcon, d1;
    SqlDataReader rdr;
    SqlDataAdapter da;
    DataSet ds;
    int rid, id;
    string ut1, ut2, ti, st, sn, un;
    ArrayList vg = new ArrayList();
    ArrayList vgid = new ArrayList();
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
            da = new SqlDataAdapter("select * from reg where usertype='" + ut2 + "' and status=1", con);
            ds = new DataSet();
            da.Fill(ds, "reg");
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "department";
            DropDownList1.DataValueField = "uid";
            DropDownList1.DataBind();
            con.Close();

            /*con.Open();
            da = new SqlDataAdapter("select * from reg where usertype='" + ut2 + "' and status=1", con);
            ds = new DataSet();
            da.Fill(ds, "reg");
            did.DataSource = ds;
            did.DataTextField = "name";
            did.DataValueField = "uid";
            did.DataBind();
            con.Close();*/
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
        cmd = new SqlCommand("insert into appointment values(" + id + ", '" + st + "','" + sn + "','" + 0 + "','" + sn + "','" + did.SelectedValue + "','" + did.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "','" + doa.Text + "','" + toa.Text + "','" + re.Text + "',null,null,null,0)", con);
        cmd.ExecuteNonQuery();
        con.Close();
        re.Text = "";
      
        doa.Text = "";
        toa.Text = "";



        Label3.Text = "Appointment Request Send Successfully!!!  Your Tracking ID is    :  " + id;
      
    }
    
protected void  Button1_Click(object sender, EventArgs e)
{
        re.Text = "";
       
        doa.Text = "";
        toa.Text = "";
}
protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
{
    con.Open();
    cmd = new SqlCommand("select name from reg where department='" + DropDownList1.SelectedItem.Text + "'", con);
    rdr = cmd.ExecuteReader();
    while (rdr.Read() == true)
    {
        un = rdr["name"].ToString();
        vg.Add(un);
        did.DataSource = vg;
       
            
        did.DataBind();
    }
    cmd.Dispose();
    rdr.Dispose();
    con.Close();
}
}
