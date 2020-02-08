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
    public partial class uye : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataTable dt = new DataTable();
        protected void Button1_Click(object sender, EventArgs e)
        {
            dataSuzuye("uId", TextBox1.Text);
        }
        public void dataSuzuye(string kolon, string deger)
        {
            Response.Redirect("uye.aspx?id=" + TextBox1.Text);
        }
    }
}
