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
using System.Globalization;

namespace busbook
{
	/// <summary>
	/// Summary description for WebForm2.
	/// </summary>
	public class WebForm2 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.DataGrid datagrd;
		protected System.Web.UI.WebControls.Label Label2;
		protected System.Web.UI.WebControls.DropDownList ddldate;
		protected System.Web.UI.WebControls.RequiredFieldValidator ddldateValidator;
		protected System.Web.UI.WebControls.HyperLink hypLnkNewboking;
		protected System.Web.UI.WebControls.HyperLink hypLnkXtraTkts;
		protected System.Web.UI.WebControls.Image Image1;
		protected System.Web.UI.WebControls.Label Label1;
		protected System.Web.UI.WebControls.HyperLink hypLnkBack;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
            bool IsdateBinded = false;
			if(!Page.IsPostBack)
			{
                string strUserid ="";
                if(Session["sUid"]!=null)
				 strUserid=Session["sUid"].ToString();
				/* Connection is done with the booking database*/
                string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
				SqlConnection con=new SqlConnection(conStr);
				con.Open();	
				/*Branch Id is Extracted from login table to 
				  the respective  staffid and stored in one string*/
				String comStr1="select brid from login where staff_id='"+strUserid+"'";
				SqlCommand com1=new SqlCommand(comStr1,con);
				SqlDataReader reader1=com1.ExecuteReader();
				string strBrid="";
				if (reader1.Read())
				{
					strBrid=reader1[0].ToString();
				}
				reader1.Close();
				Session["sBrid"]=strBrid;
				/*Branch name is Extracted from the branch table for 
				  the respective branch id and stored in one string*/

				String comStr2="select brname from branch where brid in(select brid from login where staff_id='"+strUserid+"')";
				SqlCommand com=new SqlCommand(comStr2,con);
				SqlDataReader reader=com.ExecuteReader();
				string strBranch="";
				if (reader.Read())
				{
					strBranch=reader["brname"].ToString();
				}
				reader.Close();

				/*Dates are selected from the stafftable for the respective
				 branch and added to the DropDownList*/
                if (!IsdateBinded)
                {
                    ddldate.Items.Add("select the date");
                    String comstr3 = "select distinct dated from stafftable where brname='" + strBranch + "'";
                    SqlCommand com2 = new SqlCommand(comstr3, con);
                    SqlDataReader dr2 = com2.ExecuteReader();
                    while (dr2.Read())
                    {
                        ddldate.Items.Add(dr2[0].ToString());

                    }
                    dr2.Close();
                    IsdateBinded = true;
                }
				con.Close();
			}
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
			this.datagrd.SelectedIndexChanged += new System.EventHandler(this.datagrdvehdet_SelectedIndexChanged);
			this.ddldate.SelectedIndexChanged += new System.EventHandler(this.ddldate_SelectedIndexChanged);
			//this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void datagrdvehdet_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}

		private void ddldate_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			
			string strDat=ddldate.SelectedItem.Text;
            DateTime date = Convert.ToDateTime(strDat);
            string convDat = date.ToString("yyyy-MM-dd");
            
			
			string strUserid=Session["sUid"].ToString();
			/*Connection is given to the database*/
            string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
			SqlConnection con=new SqlConnection(conStr);
			con.Open();
			/*Branch name is Extracted for the respective staffid*/
			String comStr2="select brname from branch where brid in(select brid from login where staff_id='"+strUserid+"')";
			SqlCommand com=new SqlCommand(comStr2,con);
			SqlDataReader reader=com.ExecuteReader();
			string strBranch="";
			if (reader.Read())
			{
				strBranch=reader["brname"].ToString();
			}
			reader.Close();

			/*StaffTable information for the respective branch is Extracted
			 and stored in the datagrid through the dataadapter and dataset*/
			String comStr="select * from stafftable where brname='"+strBranch+"' and dated='"+convDat+"'";
			/*DataSet is created. DataAdapter object is created.
			 using fill() method the table information is sent to the
			 datagrid*/
			DataSet ds = new DataSet();
			SqlDataAdapter da=new SqlDataAdapter(comStr,con);
			da.Fill(ds);
			datagrd.DataSource=ds;
			datagrd.DataBind();
			con.Close();
		}
	}
}
