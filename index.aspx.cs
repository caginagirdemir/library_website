using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using kutuphane;

namespace kutuphane_site
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataTable dt = new DataTable();
        protected void Button1_Click(object sender, EventArgs e)
        {
            dataGetir("kAd", TextBox1.Text);
        }
        public void dataGetir(string kolon,string deger)
        {
            dt.Clear();
            SqlConnection con = new SqlConnection(conTools.baglan());
            SqlDataAdapter da = new SqlDataAdapter("select * from kitap where " + kolon + " like '%" + deger + "%'", con);
            con.Open();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            try
            {
                Label1.Text = GridView1.Rows[0].ToString();
            }
            catch
            {
                Label1.Enabled = true;
                Label1.Text = "Kayıt Bulunamadı";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dataGetir("IBSN", TextBox2.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dataGetir("kYazar", TextBox3.Text);
        }
    }
}
