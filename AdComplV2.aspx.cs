using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdComplV2 : System.Web.UI.Page
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


            comm = new SqlCommand("select * from complaint where cid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                un.Text = reader["userid"].ToString();
                ct.Text = reader["ctype"].ToString();
                ds.Text = reader["date"].ToString();
                co.Text = reader["complaint"].ToString();

              





            }

        }

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        RequiredFieldValidator1.Visible = true;
        RequiredFieldValidator1.Enabled = true;
        con.Open();
        comm = new SqlCommand("update complaint set updation='" + TextBox1.Text + "', status =1 where cid=" + id + "", con);
        comm.ExecuteNonQuery();
        con.Close();
        Label2.Text = "Updated!!!";

       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        TextBox1.Visible = true;
       
        Button2.Visible = true;
        RequiredFieldValidator1.Visible = true;
        RequiredFieldValidator1.Enabled = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdComplV1.aspx");
    }
}