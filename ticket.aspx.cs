using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace kutuphane_site
{
    public partial class ticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox1.Text != null && TextBox2.Text != "" && TextBox2.Text != null && TextBox3.Text != "" && TextBox3.Text != null)
            {
                try
                {
                    StringBuilder strbl = new StringBuilder("Ad Soyad    )" + TextBox1.Text + Environment.NewLine + "mail    )" + TextBox2.Text + Environment.NewLine + "Şikayet    )" + TextBox3.Text);
                    Class1.mailGonder("kutuphaneOtomasyon@gmail.com","kutuphaneOtomasyon@gmail.com","Ticket", strbl.ToString());
                    Label1.Text = "Ticket İstediğiniz Gönderilmiştir Değerlendirildikten Sonra Mailinize Cevap Atılacak Sorununuz Giderilecektir ..";
                }
                catch
                {
                    Label1.Text = "Ticket İstediğiniz Gönderilememiştir Lütfen Daha Sonra Tekrar Gönderiniz";
                }
            }
            else
            {
                Label1.Text = "Formda Boş Alanlar Var";
            }
        }
    }
}
