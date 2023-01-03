using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class DoAppointmentChecking2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    SqlDataReader reader;
    String strcon;
    string utyp;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString.ToString());
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;


        // Name = Session["x"].ToString();
        //utyp = Session["utyp"].ToString();
        // ids = Session["id"].ToString();

        // Label1.Text = Name;


        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //Label2.Text = uname.ToString();
        utyp = Session["utyp"].ToString();
        con.Open();
        if (!Page.IsPostBack)
        {


            comm = new SqlCommand("select * from appointment where apid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                st.Text = reader["sendertype"].ToString();
                sn.Text = reader["sendername"].ToString();
                pn.Text = reader["pname"].ToString();
                dn.Text = reader["doctorid"].ToString();
                de.Text = reader["department"].ToString();

                doa.Text = reader["pdoa"].ToString();
                toa.Text = reader["ptoa"].ToString();
                re.Text = reader["remark"].ToString();

            }

        }

        con.Close();
    }
  
   
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("DoAppointmentChecking1.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        TextBox1.Text = ".";
        TextBox2.Text = ".";
        TextBox3.Text = ".";
       
        RequiredFieldValidator1.Visible = true;
        RequiredFieldValidator2.Visible = true;
        RequiredFieldValidator3.Visible = true;
        Button3.Visible = true;
        Button4.Visible = true;


     
      
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        comm = new SqlCommand("update appointment set allowdate='" + TextBox1.Text + "', statusupdate='" + TextBox3.Text + "', allowtime='" + TextBox2.Text + "', status =1 where apid=" + id + "", con);
        comm.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = ".";
        TextBox2.Text = ".";
        TextBox3.Text = ".";
        Label4.Text = "Allote Date !!!";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("DoAppointmentChecking1.aspx");
    }
}