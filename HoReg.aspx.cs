using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class HoReg : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    string strcon, d1;
    SqlDataReader rdr;
    int rid;
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(strcon);
    }
   
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label2.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;

        con.Open();
        cmd = new SqlCommand("select uid from reg order by uid DESC", con);
        rdr = cmd.ExecuteReader();
        if (rdr.Read() == true)
        {
            rid = Convert.ToInt32(rdr["uid"]);
            rid = rid + 1;
        }
        else
        {
            rid = 1;
        }
        cmd.Dispose();
        con.Close();
        if (DropDownList1.SelectedItem.Text == "Doctor")
        {
            Label3.Text = "";
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            rfdep.Visible = true;
            rfdesi.Visible = true;
            con.Open();
            d1 = DateTime.Now.ToString("dd-MM-yyyy");
            cmd = new SqlCommand("insert into reg values(" + rid + ",'" + TextBox1.Text + "','"+TextBox7.Text+"','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox6.Text + "',0)", con);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            
            Label3.Text = "Succesfully Added Your Information..";
        }
        else if (DropDownList1.SelectedItem.Text == "Nurse")
        {
            Label3.Text = "";
            
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            //TextBox7.Visible = true;
            rfdep.Visible = true;
            rfdesi.Visible = true;
            con.Open();
            d1 = DateTime.Now.ToString("dd-MM-yyyy");
            cmd = new SqlCommand("insert into reg values(" + rid + ",'" + TextBox1.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox6.Text + "',0)", con);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Label3.Text = "Succesfully Added Your Information.. ";
        }

        else if (DropDownList1.SelectedItem.Text == "Parent")
        {
            Label3.Text = "";
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            rfdep.Visible = false;
            rfdesi.Visible = false;
            con.Open();
            d1 = DateTime.Now.ToString("dd-MM-yyyy");
            cmd = new SqlCommand("insert into reg values(" + rid + ",'" + TextBox1.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedItem.Text + "',null,null,'" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox6.Text + "',0)", con);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox7.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            Label3.Text = "Succesfully Added Your Information.. ";
        }

        else if (DropDownList1.SelectedItem.Text == "Patient")
        {
            Label3.Text = "";
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            rfdep.Visible = false;
            rfdesi.Visible = false;
            con.Open();
            d1 = DateTime.Now.ToString("dd-MM-yyyy");
            cmd = new SqlCommand("insert into reg values(" + rid + ",'" + TextBox1.Text + "','" + TextBox7.Text + "','" + DropDownList1.SelectedItem.Text + "',null,null,'" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox6.Text + "',0)", con);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";

            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Label3.Text = "Succesfully Added Your Information.. ";
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Doctor")
        {

            Label1.Visible = true;
            Label2.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            rfdep.Visible = true;
            rfdesi.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "Nurse")
        {
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            rfdep.Visible = true;
            rfdesi.Visible = true;
        }
        else if (DropDownList1.SelectedItem.Text == "Parent")
        {
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            rfdep.Visible = false;
            rfdesi.Visible = false;
        }
        else if (DropDownList1.SelectedItem.Text == "Patient")
        {
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            rfdep.Visible = false;
            rfdesi.Visible = false;
        }
    }
}