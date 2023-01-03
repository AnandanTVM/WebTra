using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DoCheckBystander2 : System.Web.UI.Page
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


            comm = new SqlCommand("select * from shby where shid="+id+"", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                ds.Text = reader["shdate"].ToString();
                aw.Text = reader["area"].ToString();
                st.Text = reader["shdoctorinfo"].ToString();
                cd.Text = reader["currentdoctor"].ToString();
                me.Text = reader["remark"].ToString();

            }

        }

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("DoCheckBystander1.aspx");
    }
}