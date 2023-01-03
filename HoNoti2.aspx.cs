using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class HoNoti2 : System.Web.UI.Page
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

        con.Open();
        if (!Page.IsPostBack)
        {


            comm = new SqlCommand("select * from notification where nid=" + id + "", con);
            reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                tn.Text = reader["ntype"].ToString();
                da.Text = reader["date"].ToString();
                no.Text = reader["notification"].ToString();
               



            }

        }

        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HoNoti1.aspx");
    }
}