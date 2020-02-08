using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Net.Mail;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public static void mailGonder(string kime, string kimden, string baslik, string detay)
    {
        MailMessage mail = new MailMessage(kimden, kime, baslik, detay);
        SmtpClient clnt = new SmtpClient("smtp.gmail.com");
        clnt.EnableSsl = true;
        clnt.Credentials = new System.Net.NetworkCredential("kutuphaneOtomasyon@gmail.com", "kutuphaneOto");
        clnt.Send(mail);
    }
}
