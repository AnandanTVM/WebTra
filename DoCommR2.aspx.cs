using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DoCommR2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand comm;
    SqlDataReader reader;
    String strcon;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString.ToString());
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
        string uname = Session["x"].ToString();
        //Label2.Text = uname.ToString();
        string utyp = Session["utyp"].ToString();
        con.Open();
        if (!Page.IsPostBack)
        {


            comm = new SqlCommand("select * from communication where cid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                st.Text = reader["sendertype"].ToString();
                sn.Text = reader["sendername"].ToString();
                s.Text = reader["subject"].ToString();
                msg.Text = reader["message"].ToString();
                sdate.Text = reader["sdate"].ToString();
                reply.Text = reader["reply"].ToString();


            }

        }

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label7.Visible = true;
        TextBox1.Visible = true;
        Button2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string d1 = DateTime.Now.ToString("dd/MM/yyyy");

        con.Open();
        comm = new SqlCommand("update communication set status=1,reply='" + TextBox1.Text + "',rdate='" + d1 + "'  where cid=" + id + "", con);
        comm.ExecuteNonQuery();
        con.Close();
        Response.Redirect("DoCommR1.aspx");
    }
}