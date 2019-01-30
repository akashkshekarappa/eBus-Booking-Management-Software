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
    /// Summary description for AdminResponse.
    /// </summary>
    public class AdminResponse : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.Button Button1;
        protected System.Web.UI.WebControls.DataGrid dtgrdxtra;
        protected System.Web.UI.WebControls.Label lblmsg;
        protected System.Web.UI.WebControls.Label lblmsg2;
        protected System.Web.UI.WebControls.HyperLink hypLnkLogout;
        protected System.Web.UI.WebControls.Image Image1;
        protected System.Web.UI.WebControls.HyperLink HyperLink1;

        private void Page_Load(object sender, System.EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
                SqlConnection con = new SqlConnection(conStr);
                con.Open();

                /*Extra ticket table is extracted through data adapter
                 and throgh the dataset sent to the data grid*/
                String comStr = "select * from extratkt";
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(comStr, con);
                da.Fill(ds);
                dtgrdxtra.DataSource = ds;
                dtgrdxtra.DataBind();
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
            this.dtgrdxtra.ItemCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dtgrdxtra_ItemCommand);
            this.dtgrdxtra.CancelCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dtgrdxtra_CancelCommand);
            this.dtgrdxtra.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dtgrdxtra_EditCommand);
            this.dtgrdxtra.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dtgrdxtra_UpdateCommand);
            this.dtgrdxtra.SelectedIndexChanged += new System.EventHandler(this.dtgrdxtra_SelectedIndexChanged);
            //this.Button1.Click += new System.EventHandler(this.Button1_Click);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion



        private void dtgrdxtra_SelectedIndexChanged(object sender, System.EventArgs e)
        {

        }

        private void dtgrdxtra_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            dtgrdxtra.EditItemIndex = e.Item.ItemIndex;
        }

        private void dtgrdxtra_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            dtgrdxtra.EditItemIndex = -1;
        }

        private void dtgrdxtra_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {

        }

        private void Button1_Click(object sender, System.EventArgs e)
        {


        }

        private void dtgrdxtra_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            string strBname1 = "", strDate1 = "", strRtname = "", strStatus = "", brid = "", srno = "";
            string strBname2 = "";

            int intStallot = 0, intXseats = 0, intS1 = 0, intStallot1 = 0;
            /*If select command is selected Each item cells are 
             redirected to the declared strings*/
            if (e.CommandName == "Select")
            {
                strDate1 = e.Item.Cells[5].Text;
                DateTime date = Convert.ToDateTime(strDate1);
                strDate1 = date.ToString("yyyy-MM-dd");
                srno = e.Item.Cells[3].Text;
                intXseats = Convert.ToInt16(e.Item.Cells[2].Text);
                brid = e.Item.Cells[1].Text;
                strStatus = e.Item.Cells[6].Text;

            }
            if (strStatus == "waiting")
            {

                string conStr = "server=dcm.uhcl.edu;database=c563318sp01g2;uid=c563318sp01g2;pwd=5436740";
                SqlConnection con = new SqlConnection(conStr);
                con.Open();

                string cmdStr1 = "select routename from service where srno ='" + srno + "'";
                SqlCommand cmd1 = new SqlCommand(cmdStr1, con);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    strRtname = dr1[0].ToString();
                }
                dr1.Close();

                string cmdstr2 = "select brname from branch where brid ='" + brid + "'";
                SqlCommand cmd2 = new SqlCommand(cmdstr2, con);
                SqlDataReader dr2 = cmd2.ExecuteReader();

                if (dr2.Read())
                {
                    strBname1 = dr2[0].ToString();
                }
                dr2.Close();

                String comStr3 = "select brname,seatsallot from stafftable where brname!='" + strBname1 + "' and dated='" + strDate1 + "' and routename='" + strRtname + "' and seatsallot=(select max(seatsallot) from stafftable where brname!='" + strBname1 + "' and dated='" + strDate1 + "' and routename='" + strRtname + "')";
                SqlCommand com3 = new SqlCommand(comStr3, con);
                SqlDataReader reader1 = com3.ExecuteReader();
                if (reader1.Read())
                {
                    strBname2 = reader1[0].ToString();
                    intStallot = Convert.ToInt16(reader1[1].ToString());

                }
                reader1.Close();
                if (intStallot != 0)
                {
                    intS1 = intStallot - intXseats;
                    /*Decrement the seats alloted from the branch where the administrator 
                     took the seats for Reqirement of extra seats*/
                    String comstr4 = "update stafftable set seatsallot=" + intS1 + " where brname='" + strBname2 + "' and dated='" + strDate1 + "' and routename='" + strRtname + "'";
                    SqlCommand com4 = new SqlCommand(comstr4, con);
                    if (com4.ExecuteNonQuery() > 0)
                    {
                        lblmsg.Text = "REQUEST PROCESSED";
                        
                    }

                    #region commented
                    String comStr5 = "select seatsallot from stafftable where brname='" + strBname1 + "'";
                    SqlCommand com5 = new SqlCommand(comStr5, con);
                    SqlDataReader reader2 = com5.ExecuteReader();
                    if (reader2.Read())
                    {

                        intStallot1 = Convert.ToInt16(reader2[0].ToString());

                    }
                    reader2.Close();
                    intS1 = intStallot1 + intXseats;
                    /*Increment the seats alloted to the branch which sents the
                     extra tickets request by the administrator*/
                    String strComstr6 = "update stafftable set seatsallot=" + intS1 + " where brname='" + strBname1 + "'and dated='" + strDate1 + "' and routename='" + strRtname + "'";
                    SqlCommand com6 = new SqlCommand(strComstr6, con);
                    if (com6.ExecuteNonQuery() > 0)
                    {
                        String strComstr7 = "update extratkt set status='Granted' where brid='" + brid + "' and dated='" + strDate1 + "' and routename='" + srno + "'";
                        SqlCommand com7 = new SqlCommand(strComstr7, con);
                        if (com7.ExecuteNonQuery() > 0)
                            lblmsg2.Text = "REQUEST granted";
                        else
                            lblmsg.Text = "Request is already Processed";
                    }
                    #endregion
                }
                else
                {

                    String strComstr8 = "update extratkt set status='NoVacancy' where brid='" + brid + "' and dated='" + strDate1 + "' and routename='" + srno + "'";
                    SqlCommand com8 = new SqlCommand(strComstr8, con);
                    if (com8.ExecuteNonQuery() > 0)
                        lblmsg2.Text = "No Tickets Availability";
                }
                con.Close();
            }
            else
            {
                lblmsg.Text = "Request is already Processed";
            }

        }
    }
}
