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
    /// Summary description for LOGIN.
    /// </summary>
    public class LOGIN : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Label Label2;
        protected System.Web.UI.WebControls.Label Label3;
        protected System.Web.UI.WebControls.TextBox txtuserid;
        protected System.Web.UI.WebControls.TextBox txtpwd;
        protected System.Web.UI.WebControls.Button btnsubmit;
        protected System.Data.SqlClient.SqlConnection sqlConnection1;
        protected System.Data.SqlClient.SqlDataAdapter sqlDataAdapter1;
        protected System.Data.SqlClient.SqlCommand sqlSelectCommand1;
        protected System.Data.SqlClient.SqlCommand sqlInsertCommand1;
        protected System.Data.SqlClient.SqlCommand sqlUpdateCommand1;
        protected System.Data.SqlClient.SqlCommand sqlDeleteCommand1;
        protected System.Web.UI.WebControls.Label lblmsg;
        protected System.Web.UI.WebControls.HyperLink HyperLink1;
        protected System.Web.UI.WebControls.RequiredFieldValidator txtueridReqFieldValidator;
        protected System.Web.UI.WebControls.RequiredFieldValidator txtpwdReqFieldValidator;
        protected System.Web.UI.WebControls.DropDownList ddlBranch;
        protected System.Web.UI.WebControls.Label Label1;
        protected System.Web.UI.WebControls.Image Image1;
        protected System.Web.UI.WebControls.Button btnreset;

        private void Page_Load(object sender, System.EventArgs e)
        {




        }
        /*Reset Button Allows the User for Repeteadly Entering  the Id
		numbers if the user goes wrong*/
        private void btnreset_Click(object sender, System.EventArgs e)
        {
            txtuserid.Text = " ";
            txtpwd.Text = " ";
        }


        /*When Submit Button is Clicked, the StaffId  and password
		 will Be checked and allows the staff to View the Vehicle Details*/
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
            this.txtuserid.TextChanged += new System.EventHandler(this.txtuserid_TextChanged);
            this.btnsubmit.Click += new System.EventHandler(this.btnsubmit_Click);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion
        private void btnsubmit_Click(object sender, System.EventArgs e)
        {
            string strUid, strPwd;
            int intFlag = 0, intStatus = 0;
            strUid = txtuserid.Text;
            strPwd = txtpwd.Text;
            /*The staffid number is taken as the Session variable
			which is to be retrieved from other WebForms*/
            Session["sUid"] = strUid;
            /* Project is Connected to the SQLServer and BusBooking
			 database through the connection object*/

            string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            /*The login and password is validated by checking from 
			 *the database.The database table is retrieved through the
			 data reader.The role of staff manager is also validated*/
            String comStr = "select * from login";
            SqlCommand com = new SqlCommand(comStr, con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                if (dr["staff_id"].Equals(strUid))
                {
                    if (dr["brid"].Equals(strPwd))
                    {
                        if (dr["role"].Equals("stafmngr"))
                        {
                            intFlag = 1;
                            break;
                        }
                        else if (dr["role"].Equals("admin"))
                        {
                            intStatus = 1;

                        }
                        else
                        {
                            if (dr["role"].Equals("user"))
                            {
                                Application["emailid"] = dr["email"];
                                Application["fullname"] = dr["email"];
                                intStatus = 2;
                            }
                                
                        }

                    }
                }
            }
            dr.Close();

            if (intFlag == 1)
            {
                Response.Redirect("VEHICLE DETAILS.aspx");
            }
            else if (intStatus == 1)
            {
                Response.Redirect("AdminResponse.aspx");
            }
            else if (intStatus == 2)
            {
                Response.Redirect("NEW BOOKING.aspx");
            }

            else

            {
                lblmsg.Visible = true;
                lblmsg.Text = "Please enter a valid username/password";
            }

            con.Close();
        }



        private void txtuserid_TextChanged(object sender, System.EventArgs e)
        {
            string strUid = "";
            strUid = txtuserid.Text;
            string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            ddlBranch.Items.Add("select branch");
            String comStr2 = "select brname from branch where brid=(select top 1 brid from login where staff_id='" + strUid + "');";
            SqlCommand com2 = new SqlCommand(comStr2, con);
            SqlDataReader dr2 = com2.ExecuteReader();
            while (dr2.Read())
            {
                ddlBranch.Items.Add(dr2[0].ToString());

            }
            dr2.Close();
            con.Close();

        }



    }
}
