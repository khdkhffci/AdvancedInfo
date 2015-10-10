using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        string subject = "Contact Us Form";
        string body = buildmessage();

        if (sendmailfun(subject, body) == true)
        {

            txtFullName.Value = "";
            txtEmail.Value = "";
            txtPhone.Value = "";
            txtMessage.Value = "";
        }
    }

    public bool sendmailfun(string subject, string body)
    {
        try
        {
            SmtpClient SmtpServer = new SmtpClient();

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(ConfigurationManager.AppSettings["from"]);
            mail.To.Add(ConfigurationManager.AppSettings["to"]);
            mail.Subject = subject;
            mail.Body = body;
            mail.IsBodyHtml = true;
            SmtpServer.Send(mail);
            return true;
        }
        catch
        {
            return false;
        }
    }

    public string buildmessage()
    {
        string message = "<strong> Full Name :</strong> " + txtFullName.Value + "<br/> <br/><strong>E-mail  :</strong> " + txtEmail.Value + "<br/> <br/> <strong> Moblie No : </strong>" + txtPhone.Value + "<br/> <br/> <strong>Message Body :</strong> <br/> " + txtMessage.Value;
        return message;
    }
}