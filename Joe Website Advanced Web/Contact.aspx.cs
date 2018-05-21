using System;
using System.Net.Mail;

namespace Joe_Website_Advanced_Web
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("joeyatesweb@gmail.com");
                    mailMessage.To.Add(new MailAddress("joe@joeis.moe"));
                    mailMessage.Subject = subjectText.Text;
                    mailMessage.Body = "<b>Sender Name: </b>" + nameText.Text + "<br/>"
                        + "<b>Sender Email: </b>" + emailText.Text + "<br/>"
                        + "<b>Sender Message: </b>" + messageText.Text;
                    mailMessage.IsBodyHtml = true;
                    mailMessage.Priority = MailPriority.Normal;
                    SmtpClient MailClient = new SmtpClient("smtp.gmail.com", 587);
                    MailClient.EnableSsl = true;
                    MailClient.Credentials = new System.Net.NetworkCredential("joeyatesweb@gmail.com", "Wirralmet123");
                    MailClient.Send(mailMessage);

                    validLabel.ForeColor = System.Drawing.Color.Blue;
                    validLabel.Text = "Thank you for contacting us";
                    nameText.Enabled = false;
                    emailText.Enabled = false;
                    subjectText.Enabled = false;
                    messageText.Enabled = false;
                    submitBtn.Enabled = false;
                }

            }
            catch (Exception ex)
            {
                validLabel.ForeColor = System.Drawing.Color.Blue;
                validLabel.ForeColor = System.Drawing.Color.Red;
                validLabel.Text = "There was an error sending your email";
            }
        }
    }
}