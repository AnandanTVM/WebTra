using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class HoLogin : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader rdr;
    string strl;
    string utyp;
    protected void Page_Load(object sender, EventArgs e)
    {
        strl = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strl);
        TextBox2.Focus();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
         string un = TextBox2.Text;
        string pw = TextBox3.Text;

         con.Open();
            cmd = new SqlCommand("SELECT * From Login where username='" + un + "' and password='"+pw+"'", con);
            rdr = cmd.ExecuteReader();
            if(rdr.Read())
            {
                utyp = rdr["usertype"].ToString();
            }
            con.Close();
            Session["x"] = un;
            Session["utyp"] = utyp;
            if (utyp == "Doctor")
            {
                Response.Redirect("DoctorHome.aspx");

            }
            else if (utyp=="Nurse")
            {
                Response.Redirect("NurseHome.aspx");
            }
            else if (utyp == "Parent")
            {
                Response.Redirect("ParentsHome.aspx");
            }
            else if (utyp=="Patient")
            {
                Response.Redirect("PatientsHome.aspx");
            }
            else if (utyp=="Admin")
            {
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Label3.Text="Invalid User Name or Password";
            }
        
    
    }

}