using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using kutuphane;

namespace kutuphane_site
{
    public partial class bilgi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conTools.baglan());
            SqlCommand com = new SqlCommand("select * from bilgi where bId=1", con);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            Label1.Text = dr["bAd"].ToString();
            Label2.Text = dr["bAdres"].ToString();
            Label3.Text = dr["bTel1"].ToString();
            Label4.Text = dr["bTel2"].ToString();
            Label5.Text = dr["bYet"].ToString();
            Label6.Text = dr["bYetmail"].ToString();

            con.Close();
        }
    }
}
