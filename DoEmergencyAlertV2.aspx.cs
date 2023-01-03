using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class DoEmergencyAlertV2 : System.Web.UI.Page
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


            comm = new SqlCommand("select * from emergency where eid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                sn.Text = reader["nurseid"].ToString();
                pn.Text = reader["username"].ToString();

                dn.Text = reader["dname"].ToString();
                ch.Text = reader["caseh"].ToString();
                de.Text = reader["description"].ToString();
                re.Text = reader["remark"].ToString();

                ti.Text = reader["time"].ToString();
                da.Text = reader["date"].ToString();
                etd.Text = reader["emergencytreatdetails"].ToString();

            }

        }

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DoEmergencyAlertV1.aspx"); 
    }
}