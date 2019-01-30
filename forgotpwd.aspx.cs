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
	/// Summary description for forgotpwd.
	/// </summary>
	public class forgotpwd : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox txtuid;
		protected System.Web.UI.WebControls.Label lblforgot;
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Web.UI.WebControls.HyperLink HyperLink1;
		protected System.Web.UI.WebControls.RequiredFieldValidator txtuidValidator;
		protected System.Web.UI.WebControls.Image Image1;
		protected System.Web.UI.WebControls.Label Label1;

		
		private void Page_Load(object sender, System.EventArgs e)
		{
			
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

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			string strUid;
			int intFlag=0;
			strUid=txtuid.Text;
            string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
			SqlConnection con=new SqlConnection(conStr);
			con.Open();
			string comStr="select * from login";
			SqlCommand cmd=new SqlCommand(comStr,con);
			
			/*The Entered userid is validated by cheking from the database
			 through datareader and sets the flag*/
			SqlDataReader dr=cmd.ExecuteReader();
			while(dr.Read())
			{
				if(dr[0].Equals(strUid))
				{ 
					intFlag=1;
					break;
				}
			}
			con.Close();
			if(intFlag==1)
			{ 
				lblforgot.Text="password has been reset and sent to your email.";
				lblforgot.Visible=true;
				txtuid.Text="";
			}
			else
			{
				lblforgot.Text="user id does not exist";
				lblforgot.Visible=true;
			}
		}
	}
}

