using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using kutuphane;
using System.Data;

namespace kutuphane_site
{
    public partial class siparis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(conTools.baglan());
                SqlCommand com = new SqlCommand("select * from siparis where oId=@id and teslim=0", con);
                com.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
                con.Open();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    getir(Convert.ToInt32(dr["ouId"]), Convert.ToInt32(dr["oId"]), Convert.ToInt32(dr["okId"]), dr["aTarih"].ToString(), dr["vTarih"].ToString());
                }
                con.Close();
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
            catch
            {
                Label1.Text = "Kayıt Bulunamadı";
            }
            try
            {
                Label1.Text = GridView1.Rows[0].ToString();
                Label1.Text = "";
            }
            catch
            {
                Label1.Text = "Kayıt Bulunamadı";
            }
        }
        void getir(int id, int deger,int kid,string atarih,string gtarih)
        {
            SqlConnection con = new SqlConnection(conTools.baglan());
            SqlCommand com = new SqlCommand("select * from uye where uId=@id", con);
            com.Parameters.Add("@id", SqlDbType.Int).Value = id;
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                getir2(deger, id, kid, dr["uAd"].ToString(), atarih, gtarih);
            }
            con.Close();
        }
        List<conTools.siparisGetir> lst = new List<conTools.siparisGetir>();
        void getir2(int oid,int uid,int kid, string uad, string atarih, string gtarih)
        {
            SqlConnection con = new SqlConnection(conTools.baglan());
            SqlCommand com = new SqlCommand("select * from kitap where kId=@id", con);
            com.Parameters.Add("@id", SqlDbType.Int).Value = kid;
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                conTools.siparisGetir aa = new conTools.siparisGetir { ATarih = atarih, VTarrih = gtarih,Id = oid,UyeId = uid,UyeAd = uad,kitapAd = dr["kAd"].ToString()};
                lst.Add(aa);
            }
            con.Close();
        }
    }
}
