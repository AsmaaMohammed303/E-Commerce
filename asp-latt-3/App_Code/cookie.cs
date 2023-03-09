using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;
/// <summary>
/// Summary description for cookie
/// </summary>
public class cookie
{
   
	public cookie()
	{
	}
    public static bool sendmail(string subject,string msg,string to)
    {
        MailMessage mmsg = new MailMessage("asmaamohammed2013@gmail.com",to,subject,msg);
        mmsg.IsBodyHtml = true;
        //smtp to send msg is an protocol
        SmtpClient client = new SmtpClient("smtp.gmail.com",587);
        //default credentials on your compter
        client.UseDefaultCredentials = false;
        mmsg.Priority = MailPriority.Normal;
        NetworkCredential nc = new NetworkCredential("asmaamohammed2013@gmail.com", "01222635556");
        client.Credentials = nc;
        client.EnableSsl=true;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        try
        {
            client.Send(mmsg);
            return true;
        }
        catch(Exception ex)
        {
            return false;
            //MessageBox.Show(ex.ToString());
        }
    }

    public static void createcooki(string cookiename, string[] keys, string[] values, bool expired, HttpResponse res)
    {
        HttpCookie h = new HttpCookie(cookiename);
        if (keys != null)
        {
            for (int x = 0; x < keys.Length; x++)
                h.Values.Add(keys[x], values[x]);
            if (!expired)
                h.Expires = DateTime.Now.AddYears(5);
        }
        else
            h.Expires = DateTime.Now.AddYears(-5);
            res.Cookies.Add(h);
    }

    public static string readfromcookie(string cookiename, string key,HttpRequest req)
    {
        try
        {
           // if (req.Cookies[cookiename] != null)
                return req.Cookies[cookiename][key].ToString();
        }
        catch
        {
            return null;
        }
    }

    public static void removecookie(string cookiename, HttpResponse res)
    {
        createcooki(cookiename,null,null,false,res);
    }
}