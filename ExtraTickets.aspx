<%@ Page language="c#" Codebehind="ExtraTickets.aspx.cs" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Inherits="busbook.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content1" runat="server">

	
		 <div  style="color:black">
             <div class="col-sm-12">
                 <div class="col-sm-6">
                     <asp:label id="Label1"  runat="server">Date</asp:label>
                      <asp:dropdownlist id="ddldate" runat="server"  CssClass="form-control"></asp:dropdownlist>
                 <asp:requiredfieldvalidator id="ddldateReqFieldValidator" style="Z-INDEX: 113; LEFT: 128px; POSITION: absolute; TOP: 120px" runat="server" ControlToValidate="ddldate" ErrorMessage="Select The Date"></asp:requiredfieldvalidator>
                 </div>

             </div>

              <div class="col-sm-12">
                 <div class="col-sm-6">
                      <asp:label id="Label3"  runat="server">RouteName</asp:label>
                      <asp:dropdownlist id="ddlrname"  runat="server"  CssClass="form-control"></asp:dropdownlist>
                 <asp:requiredfieldvalidator id="ddlrnameReqFieldValidator" style="Z-INDEX: 114; LEFT: 112px; POSITION: absolute; TOP: 176px" runat="server" ControlToValidate="ddlrname" ErrorMessage="Select the Route Name"></asp:requiredfieldvalidator>
                 </div>

             </div>

                 <div class="col-sm-12">
                 <div class="col-sm-6">
                     <asp:label id="Label4"  runat="server">RequiredSeats</asp:label>
                      <asp:textbox id="txtreqseats" runat="server" MaxLength="2"  CssClass="form-control"></asp:textbox>
              <asp:requiredfieldvalidator id="txtreqseatsReqFieldValidator" style="Z-INDEX: 115; LEFT: 120px; POSITION: absolute; TOP: 312px" runat="server" ControlToValidate="txtreqseats" ErrorMessage="Enter The Required Seats"></asp:requiredfieldvalidator>
                     </div>

             </div>

               <div class="col-sm-12">
                 <div class="col-sm-6">

                     <asp:label id="Label6"  runat="server">BranchName</asp:label>
            <asp:textbox id="txtbrname" runat="server" ReadOnly="True"  CssClass="form-control"></asp:textbox>
                  <asp:regularexpressionvalidator id="txtreqseatsRegExpValidator" style="Z-INDEX: 116; LEFT: 120px; POSITION: absolute; TOP: 376px" runat="server" ControlToValidate="txtreqseats" ErrorMessage="Enter the Valid No of Seats" ValidationExpression="[0-9]"></asp:regularexpressionvalidator>
                     </div>

             </div>

             
			
           
            
           
          
            <asp:label id="Label5" style="Z-INDEX: 106; LEFT: 16px; POSITION: absolute; TOP: 16px" runat="server" Width="368px" Font-Size="X-Large">Request for Extra Tickets Here:</asp:label>
            <asp:label id="lblmsg" style="Z-INDEX: 107; LEFT: 272px; POSITION: absolute; TOP: 432px" runat="server"></asp:label>
           
           
            
           
            
            
            

              <div class="col-sm-12" ><br />
                <div class="col-sm-6">
                <asp:button id="btnsubmit" style="background-color:black;color:white" class="btn btn-block"	runat="server" Text="submit"></asp:button>
                </div>
                  </div>
             <div class="col-sm-12"> <br />
                    <div class="col-sm-6">
                     <asp:hyperlink id="HyperLink1" style="background-color:black;color:white" class="btn btn-block" runat="server" NavigateUrl="VEHICLE DETAILS.aspx" >Back</asp:hyperlink>
                </div>
                 </div>
</div>
          
		
             
     </asp:Content>

		


