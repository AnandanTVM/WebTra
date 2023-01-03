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

public partial class ParCommSend : System.Web.UI.Page
{
    String str, r, un, y, utyp, d1;
    SqlCommand cmd;
    SqlConnection con;
    int comid;
    String d;
    SqlDataReader rdr;
    ArrayList vg = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        y = Session["x"].ToString();
        // Label2.Text = y.ToString();
        utyp = Session["utyp"].ToString();
        // y = "procoo";
        str = ConfigurationManager.ConnectionStrings["w"].ConnectionString;
        con = new SqlConnection(str);
        //d = Convert.ToString(DateTime.Now.ToString("dd/MM/yyyy"));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select cid from communication order by cid DESC", con);
        rdr = cmd.ExecuteReader();
        if (rdr.Read() == true)
        {
            comid = Convert.ToInt32(rdr["cid"]);
            comid = comid + 1;
        }
        else
        {
            comid = 1;
        }
        cmd.Dispose();
        con.Close();

        con.Open();
        d1 = DateTime.Now.ToString("dd/MM/yyyy");
        cmd = new SqlCommand("insert into communication values(" + comid + ",'" + utyp + "','" + y + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + d1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "',null,null,0)", con);
        // cmd.ExecuteNonQuery();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Page.RegisterStartupScript("UserMsg", "<script>alert('Message Send SuccessFully !');</script>");
        }
        // Label1.Text = " Message Sent  ";
        TextBox1.Text = "";
        TextBox2.Text = "";
        cmd.Dispose();
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select username from login where usertype='" + DropDownList1.SelectedItem.Text + "'", con);
        rdr = cmd.ExecuteReader();
        while (rdr.Read() == true)
        {
            un = rdr["username"].ToString();
            vg.Add(un);
            DropDownList2.DataSource = vg;
            DropDownList2.DataBind();
        }
        cmd.Dispose();
        rdr.Dispose();
        con.Close();
    }
}