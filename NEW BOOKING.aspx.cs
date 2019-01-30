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
    /// Summary description for WebForm3.
    /// </summary>
    public class WebForm3 : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Label Label1;
        protected System.Web.UI.WebControls.Label Label3;
        protected System.Web.UI.WebControls.Label Label4;
        protected System.Web.UI.WebControls.Label Label5;
        protected System.Web.UI.WebControls.Label Label6;
        protected System.Web.UI.WebControls.Label Label7;
        protected System.Web.UI.WebControls.Label Label8;
        protected System.Web.UI.WebControls.Label Label9;
        protected System.Web.UI.WebControls.TextBox txtvehcleno;
        protected System.Web.UI.WebControls.TextBox txtfare;
        protected System.Web.UI.WebControls.TextBox txtserno;
        protected System.Web.UI.WebControls.TextBox txtseatsallot;
        protected System.Web.UI.WebControls.TextBox txtseatavlb;
        protected System.Web.UI.WebControls.DropDownList ddlrname;
        protected System.Web.UI.WebControls.TextBox txtstarttime;
        protected System.Web.UI.WebControls.Label Label10;
        protected System.Web.UI.WebControls.TextBox txtresv;
        protected System.Web.UI.WebControls.Label lblmsg;
        protected System.Web.UI.WebControls.Button btnreset;
        protected System.Web.UI.WebControls.Button btnsubmit;
        protected System.Web.UI.WebControls.Label Label2;
        protected System.Web.UI.WebControls.Label lblmsg2;

        protected System.Web.UI.WebControls.RequiredFieldValidator ddlrnameValidator;
        protected System.Web.UI.WebControls.RequiredFieldValidator txtresvValidator;
        protected System.Web.UI.WebControls.RegularExpressionValidator txtresvRegExpValidator;
        protected System.Web.UI.WebControls.HyperLink HypLnkBack;
        protected System.Web.UI.WebControls.Image Image1;
        protected System.Web.UI.WebControls.DropDownList ddlDate;
        protected System.Web.UI.WebControls.Label lblmsg3;

        private void Page_Load(object sender, System.EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string strUserid = Session["sUid"].ToString();
                ddlrname.Items.Add("select routename");
                /*Connection is given to the database.*/
                string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
                SqlConnection con = new SqlConnection(conStr);
                con.Open();
                /*RouteNames is selected from service table
				 and added to the dropdown list.*/
                String comStr = "select routename from service";
                SqlCommand com = new SqlCommand(comStr, con);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    ddlrname.Items.Add(dr[0].ToString());

                }
                dr.Close();

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
            this.txtvehcleno.TextChanged += new System.EventHandler(this.Calendar1_SelectionChanged);
            this.btnsubmit.Click += new System.EventHandler(this.Button1_Click);
            this.ddlrname.SelectedIndexChanged += new System.EventHandler(this.ddlrname_SelectedIndexChanged);
            this.txtresv.TextChanged += new System.EventHandler(this.txtresv_TextChanged);
            this.btnreset.Click += new System.EventHandler(this.btnreset_Click);
            this.ddlDate.SelectedIndexChanged += new System.EventHandler(this.ddlDate_SelectedIndexChanged);
            //this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        private void Calendar1_SelectionChanged(object sender, System.EventArgs e)
        {




        }
        /*when the route name is selected the respective service number
         seats alloted to that bus,start time of that bus,vehicle number
         and fare of that bus is directed to the respective textboxes 
         of that webform.*/
        private void ddlrname_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            string strUserid = Session["sUid"].ToString();
            /*The selected route name from the dropdown list
			 is stored in the one variable.*/
            string strRname = ddlrname.SelectedItem.Text;
            Session["Route"] = strRname;

            /* Connection is given to the database booking database.*/
            string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();

            /*The service number of that RouteName is Extracted from
			 the database and redirected to the service no text box.*/
            String comStr4 = "select srno from service where routename='" + strRname + "'";

            SqlCommand com4 = new SqlCommand(comStr4, con);
            SqlDataReader dr4 = com4.ExecuteReader();
            while (dr4.Read())
            {
                txtserno.Text = dr4[0].ToString();
            }
            dr4.Close();
            /*The Selected date in the previous webform is Extracted
			 through the session variable and redirected to the date textbox.*/


            /* Branch id is Extracted from the database for the respective staffid.*/
            string strSr = txtserno.Text;
            string strBrid1 = "";
            String comStr5 = "select brid from login where staff_id='" + strUserid + "'";
            SqlCommand com1 = new SqlCommand(comStr5, con);
            SqlDataReader dr5 = com1.ExecuteReader();
            if (dr5.Read())
            {
                strBrid1 = dr5[0].ToString();
            }
            dr5.Close();





            /*The start time for that routename and particular service no
			 bus is Extracted from the data base and redirected to the 
			 start time Textbox.*/
            String comStr1 = "select v.strtime from service s,vehdetails v where s.srno in (select srno from service where routename='" + strRname + "') and s.srno=v.srno";
            SqlCommand com = new SqlCommand(comStr1, con);
            SqlDataReader dr1 = com.ExecuteReader();
            while (dr1.Read())
            {
                txtstarttime.Text = dr1[0].ToString();
            }
            dr1.Close();

            /*The vehicle number for the respective service no bus is
			 extracted from the data base and redirected to the vehcleno textbox.*/
            String comStr2 = "select v.vehcleno from service s,vehdetails v where s.srno in (select srno from service where routename='" + strRname + "') and s.srno=v.srno";
            SqlCommand com2 = new SqlCommand(comStr2, con);
            SqlDataReader dr2 = com2.ExecuteReader();
            while (dr2.Read())
            {
                txtvehcleno.Text = dr2[0].ToString();
            }
            dr2.Close();

            /*Fare of that bus is also extracted and directed to the fare textbox.*/
            String comStr3 = "select fare from service where routename='" + strRname + "'";
            SqlCommand com3 = new SqlCommand(comStr3, con);
            SqlDataReader dr3 = com3.ExecuteReader();
            while (dr3.Read())
            {
                txtfare.Text = dr3[0].ToString();
            }
            dr3.Close();
            ddlDate.Items.Add("select Date");
            String comStr8 = "select distinct dated from branchdets";
            SqlCommand com8 = new SqlCommand(comStr8, con);
            SqlDataReader dr8 = com8.ExecuteReader();
            while (dr8.Read())
            {
                ddlDate.Items.Add(dr8[0].ToString());
            }
            dr8.Close();

            con.Close();
        }

        private void txtdate_TextChanged(object sender, System.EventArgs e)
        {

        }
        /*when submit button is clicked then the particular newbooking
		 details are inserted into the reservation details table and 
		 seats alloted in the stafftable and branch dets are updated.*/
        private void Button1_Click(object sender, System.EventArgs e)
        {
            string strUserid = Session["sUid"].ToString();
            string strSno, strDat;
            int intResv;
            int intId = 1;
            string strBrid1 = "";

            strSno = txtserno.Text;
            strDat = ddlDate.SelectedItem.Text;
            DateTime date = Convert.ToDateTime(strDat);
            strDat = date.ToString("yyyy-MM-dd");
            intResv = Convert.ToInt16(txtresv.Text);

            string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            /*The reservation id is selected from the resdetails and the
			 reservation id is incremented for every new record to be inserted.*/
            string cmdStr1 = "select count(*) rid from resdetails order by rid desc";
            SqlCommand cmd1 = new SqlCommand(cmdStr1, con);
            SqlDataReader reader1 = cmd1.ExecuteReader();

            if (reader1.Read())
            {
                intId = Convert.ToInt16(reader1[0].ToString());
                intId++;
            }
            reader1.Close();
            String comStr5 = "select brname from login where staff_id='" + strUserid + "'";
            SqlCommand com1 = new SqlCommand(comStr5, con);
            SqlDataReader dr5 = com1.ExecuteReader();

            if (dr5.Read())
            {
                strBrid1 = dr5[0].ToString();
            }
            dr5.Close();
            /*New Reservation details are inserted into the resdetails table.*/
            string cmdStr = "insert into resdetails values(" + intId + ",'" + strSno + "'," + intResv + ",'" + strDat + "','','','" + strBrid1 + "')";
            Session["sId"] = intId;
            SqlCommand cmd = new SqlCommand(cmdStr, con);
            if (cmd.ExecuteNonQuery() > 0)
            {
                lblmsg.Text = "Succesfully inserted";

            }
            else
            {
                lblmsg.Text = "Record not inserted";
            }



            string strBname = "";

            String comStr6 = "select brname from branch where brid='" + strBrid1 + "'";
            SqlCommand com6 = new SqlCommand(comStr6, con);
            SqlDataReader dr6 = com6.ExecuteReader();

            if (dr6.Read())
            {
                strBname = dr6[0].ToString();
            }
            dr6.Close();

            String comStr8 = "select seatsallot from branchdets where brid='" + strBrid1 + "' and dated='" + strDat + "' and srno='" + strSno + "'";
            SqlCommand com8 = new SqlCommand(comStr8, con);
            SqlDataReader dr8 = com8.ExecuteReader();
            int intSa = 0;
            if (dr8.Read())
            {
                intSa = Convert.ToInt16(dr8[0].ToString());
            }
            dr8.Close();
            int intSa1 = intSa - intResv;

            /*Update the seats reserved and seats alloted in the branchdetails table.*/
            string cmdStr2 = "update branchdets set seatsresv=" + intResv + ",seatsallot=" + intSa1 + " where brid='" + strBrid1 + "' and dated='" + strDat + "' and srno='" + strSno + "'";
            SqlCommand cmd2 = new SqlCommand(cmdStr2, con);
            if (cmd2.ExecuteNonQuery() > 0)
            {
                lblmsg2.Text = "Succesfully updated";
            }
            else
            {
                lblmsg2.Text = "Record not updated";
            }

            /*Update the seats reserved and seats alloted in the staff table.*/
            string strRname = ddlrname.SelectedItem.Text;
            string cmdStr3 = "update stafftable set seatsresv=" + intResv + ",seatsallot=" + intSa1 + " where brname='" + strBname + "' and dated='" + strDat + "' and routename='" + strRname + "'";
            SqlCommand cmd3 = new SqlCommand(cmdStr3, con);
            if (cmd3.ExecuteNonQuery() > 0)
            {
                lblmsg3.Text = " branch Succesfully updated";


            }
            //else
            //{
            //    lblmsg2.Text = " branch Record not updated";
            //}
            /* Seats reserved value and amount value are extracted from
			 stafftable and declared as session variable which are to
			 be used in the next web form for travellers details.*/
            string cmdStr4 = "select seatsresv,amount from stafftable where dated='" + ddlDate.Text + "' and routename='" + ddlrname.Text + "'";
            SqlCommand cmd4 = new SqlCommand(cmdStr4, con);
            SqlDataReader dr7 = cmd4.ExecuteReader();

            //if (dr7.Read())
            //{
            //    intSrsv = Convert.ToInt16(dr7[0]);
            //    intAmnt = Convert.ToInt16(dr7[1]);
            Session["sSrsv"] = "5";
            Session["sAmnt"] = "500";
            Response.Redirect("TravellerDetails.aspx");

            //}

            dr7.Close();
            con.Close();
        }


        private void btnreset_Click(object sender, System.EventArgs e)
        {
            ddlDate.SelectedItem.Text = " ";
            txtstarttime.Text = "";
            txtvehcleno.Text = "";
            txtfare.Text = "";
            txtserno.Text = "";
            txtseatsallot.Text = "";
            txtseatavlb.Text = "";
            txtresv.Text = "";
        }

        private void txtresv_TextChanged(object sender, System.EventArgs e)
        {

        }

        private void ddlDate_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            string strUserid = Session["sUid"].ToString();
            /*The selected route name from the dropdown list
			 is stored in the one variable.*/
            string strRname = ddlrname.SelectedItem.Text;

            /* Connection is given to the database booking database.*/
            string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();

            /*The service number of that RouteName is Extracted from
			 the database and redirected to the service no text box.*/
            String comStr4 = "select srno from service where routename='" + strRname + "'";

            SqlCommand com4 = new SqlCommand(comStr4, con);
            SqlDataReader dr4 = com4.ExecuteReader();
            while (dr4.Read())
            {
                txtserno.Text = dr4[0].ToString();
            }
            dr4.Close();
            /*The Selected date in the previous webform is Extracted
			 through the session variable and redirected to the date textbox.*/
            string strDate1 = "";
            strDate1 = ddlDate.SelectedItem.Text;
            DateTime date = Convert.ToDateTime(strDate1);
            strDate1 = date.ToString("yyyy-MM-dd");

            /* Branch id is Extracted from the database for the respective staffid.*/
            string strSr = txtserno.Text;
            string strBrid1 = "";
            String comStr5 = "select brname from login where staff_id='" + strUserid + "'";
            SqlCommand com1 = new SqlCommand(comStr5, con);
            SqlDataReader dr5 = com1.ExecuteReader();
            if (dr5.Read())
            {
                strBrid1 = dr5[0].ToString();
            }
            dr5.Close();

            /*Seats alloted for the particular branch is extracted from the 
			 database and redirect it to the seats Alloted Textbox.*/
            String comStr6 = "select seatsallot from branchdets where brid='" + strBrid1 + "' and dated='" + strDate1 + "' and srno='" + strSr + "'";
            SqlCommand com6 = new SqlCommand(comStr6, con);
            SqlDataReader dr6 = com6.ExecuteReader();
            while (dr6.Read())
            {
                txtseatsallot.Text = dr6[0].ToString();
            }
            dr6.Close();

            /*The available seats are caluculated by subracting the seats
			 reserved from the seats alloted and redirected to the available 
			 seats Textbox.*/
            String comStr7 = "select seatsallot-seatsresv  from branchdets where srno=(select srno from service where routename='" + strRname + "') and brid='" + strBrid1 + "' and dated='" + strDate1 + "'";
            SqlCommand com7 = new SqlCommand(comStr7, con);
            SqlDataReader dr7 = com7.ExecuteReader();
            while (dr7.Read())
            {
                txtseatavlb.Text = dr7[0].ToString();
            }
            dr7.Close();
            con.Close();

        }
    }
}
