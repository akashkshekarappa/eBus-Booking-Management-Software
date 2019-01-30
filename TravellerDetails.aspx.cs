using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace busbook
{
	/// <summary>
	/// Summary description for WebForm4.
	/// </summary>
	public class WebForm4 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Label Label1;
		protected System.Web.UI.WebControls.Label Label2;
		protected System.Web.UI.WebControls.Label Label4;
		protected System.Web.UI.WebControls.Label Label5;
		protected System.Web.UI.WebControls.TextBox txttravname;
		protected System.Web.UI.WebControls.TextBox txtphno;
		protected System.Web.UI.WebControls.TextBox txtseatno;
		protected System.Web.UI.WebControls.TextBox txttotamt;
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Web.UI.WebControls.Label lblmsg;
		protected System.Web.UI.WebControls.HyperLink HyperLink1;
		protected System.Web.UI.WebControls.RequiredFieldValidator txttravnameValidator;
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
		protected System.Web.UI.WebControls.RegularExpressionValidator txtphnoValidator;
		protected System.Web.UI.WebControls.Image Image1;
		protected System.Web.UI.WebControls.Label Label6;
		/*session variables are retrived new bookings webform and 
		 direct to the seatnumbers and amount text boxes*/
		private void Page_Load(object sender, System.EventArgs e)
		{
			
			int intSrsv1=Convert.ToInt16(Session["sSrsv"]);
			int intAmnt1=Convert.ToInt16(Session["sAmnt"]) * intSrsv1;
			txtseatno.Text=intSrsv1.ToString();
			txttotamt.Text=intAmnt1.ToString();

		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.Button1.Click += new System.EventHandler(this.Button1_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			int intId1=Convert.ToInt16(Session["sId"].ToString());
			string strName,strPhno;
			strName=txttravname.Text;
			strPhno=txtphno.Text;
			/*Connection is given to the database*/
            string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
			SqlConnection con=new SqlConnection(conStr);
			con.Open();	
			
			/*update the traveller names and phone number in the reservation details
			 which are entered in the traveller webform*/
			string cmdStr1="update resdetails set custname='"+strName+"',phno='"+strPhno+"' where rid="+intId1+"";
			SqlCommand cmd1=new SqlCommand(cmdStr1,con);
			if(cmd1.ExecuteNonQuery()>0)
			{
				lblmsg.Visible=true;
				lblmsg.Text="Succesfully updated";
                Response.Redirect("Payment.aspx");

			}
			else
			{
				lblmsg.Visible=true;
				lblmsg.Text="Record not updated";
			}
			


		
		}
	}
}
