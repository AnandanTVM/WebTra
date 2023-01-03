using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdUserVeri2 : System.Web.UI.Page
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


            comm = new SqlCommand("select * from reg where uid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                ut.Text = reader["usertype"].ToString();
                un.Text = reader["name"].ToString();
                ps.Text = reader["password"].ToString();
                ci.Text = reader["contactinfo"].ToString();
                ph.Text = reader["phone"].ToString();

                mid.Text = reader["mailid"].ToString();
             




            }

        }

        con.Close();
  
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("AdUserVeri1.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Label1.Visible = true;
        //TextBox1.Visible = true;
       // Button1.Visible = true;
       // Button2.Visible = true;
       // RequiredFieldValidator1.Visible = true;
       // RequiredFieldValidator1.Enabled = true;

        //RequiredFieldValidator1.Visible = true;
        //RequiredFieldValidator1.Enabled = true;
        con.Open();
        comm = new SqlCommand("update reg set status =1 where uid=" + id + "", con);
        comm.ExecuteNonQuery();
        con.Close();

        con.Open();
        comm = new SqlCommand("insert into login values('" + ut.Text + "','" + un.Text + "','" + ps.Text + "')", con);
        comm.ExecuteNonQuery();
        con.Close();
        Response.Redirect("AdUserVeri1.aspx");
        


    }
}