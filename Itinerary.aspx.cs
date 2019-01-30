using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace busbook
{
    public partial class Itinerary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
            string strRname = "", fare ="",ResvId = "";
           
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            if (Session["Route"] != null)
                 strRname = Session["Route"].ToString();
            if (Session["sId"] != null)
                ResvId = Session["sId"].ToString();
            
            String comStr3 = "select fare from service where routename='" + strRname + "'";
            SqlCommand com3 = new SqlCommand(comStr3, con);
            SqlDataReader dr3 = com3.ExecuteReader();
            while (dr3.Read())
            {
                fare = dr3[0].ToString();
            }
            dr3.Close();

            String comStr4 = "select * from resdetails where rid='" + ResvId + "'";
            SqlCommand com4 = new SqlCommand(comStr4, con);
            SqlDataReader dr4 = com4.ExecuteReader();
            while (dr4.Read())
            {
                
                    // get the results of each column
                LabelTN.Text = (string)dr4["custname"];
                LabelPH.Text = (string)dr4["phno"];
                LabelDOJ.Text = (string)dr4["dated"];
                int seats_reserved = (int)dr4["seatsresv"];
                LabelSN.Text = seats_reserved.ToString();
                int totalFare = Convert.ToInt16(fare) * seats_reserved;
                LabelAmt.Text = totalFare.ToString();
            }
            dr4.Close();

            var usermail = Application["emailid"];
            var name = Application["fullname"];


            String msgTo = usermail.ToString();

            String msgSubject = "Booking Successful!!!";
            String msgBody = "Dear " + name.ToString() + "<br/>" +
                "Your payment is successful. <br/> <br/>" +
                "Thank you for booking with us <br/> <br/>" +
                "Thank You. <br/>" +
                "OnlineBusBooking.com";
            MailMessage mailObj = new MailMessage();
            mailObj.Body = msgBody;
            mailObj.From = new MailAddress("UhclEmailServer@gmail.com", "UHCL_Email_Services");
            mailObj.To.Add(new MailAddress(msgTo));
            mailObj.Subject = msgSubject;
            mailObj.IsBodyHtml = true;
            SmtpClient smtpClient = new SmtpClient();
            //smtpClient.Host = "smtp.gmail.com";
            //smtpClient.Credentials = new System.Net.NetworkCredential("group2.uhcl@gmail.com", "Aachinnu1");
            //smtpClient.Port = 587;
            //smtpClient.EnableSsl = true;
            try
            { smtpClient.Send(mailObj); }
            catch (Exception ex)
            { ex.ToString(); }




        }
    }
}