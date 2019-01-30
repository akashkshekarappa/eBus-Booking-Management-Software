using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace busbook
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //declaring connection string and command
        //here we are extracting connection string from web.config file

        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }
        private void InitializeComponent()
        {

            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Application["emailid"] = txtEmail.Text;
            Application["fullname"] = txtName.Text;

            try
            {
                SqlConnection con = new SqlConnection("server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740");

                string role = "user";
                string cmdStr = "INSERT INTO login values('" + txtUserName.Text.ToString() + "','" + txtPassword.Text.ToString() + "','" + Locationlist.SelectedValue + "','" + role + "','" + txtEmail.Text + "')";

                con.Open(); //opening connection

                SqlCommand cmd = new SqlCommand(cmdStr, con);
                if (cmd.ExecuteNonQuery() > 0)
                {
                    lblmsg.Text = "Succesfully inserted";

                    String msgTo = txtEmail.Text;

                    String msgSubject = "Thank you for your interest in OnlineBusBooking.com by Group2";
                    String msgBody = "Dear  " + txtName.Text + "<br/>" +
                        "Thank you for creating an account with OnlineBusBooking.com. <br/> <br/>" +                        
                        "Thank You. <br/>" +
                        "Group 2";
                    MailMessage mailObj = new MailMessage();
                    mailObj.Body = msgBody;
                    mailObj.From = new MailAddress("UhclEmailServer@gmail.com", "UHCL_Email_Services");
                    mailObj.To.Add(new MailAddress(msgTo));
                    mailObj.Subject = msgSubject;
                    mailObj.IsBodyHtml = true;
                    SmtpClient smtpClient = new SmtpClient();
                    //smtpClient.Host = "smtp.gmail.com";
                    //smtpClient.Credentials = new System.Net.NetworkCredential("uhclwdd@gmail.com", "Aa@123456");
                    //smtpClient.Port = 587;
                    //smtpClient.EnableSsl = true;
                    try
                    { smtpClient.Send(mailObj); }
                    catch (Exception ex)
                    { ex.ToString(); }

                    Response.Redirect("LOGIN.aspx");
                }
                else
                {
                    lblmsg.Text = "Record not inserted";
                }

                con.Close(); //closing connection


            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message.ToString();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //refreshing/reloading page to clear all the controls
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}