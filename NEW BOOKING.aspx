<%@ Page Title="New Booking" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NEW BOOKING.aspx.cs" Inherits="busbook.WebForm3" EnableSessionState="True" enableViewState="True" enableViewStateMac="True" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content1" runat="server">
     
    <div class="container" style="color:black">

          <div class="col-sm-12 text-center">
                 <asp:Label id="Label11" runat="server"
			Font-Size="X-Large" ForeColor="Black" Font-Bold="True" Font-Overline="True" Font-Underline="True">Plan your trip</asp:Label>
               
              </div>
          <div class="col-sm-12"><br />

              <div class="col-sm-6 ">      
			        <asp:label id="Label1" runat="server">ROUTE NAME:</asp:label>
                    <asp:dropdownlist id="ddlrname" class="form-control" runat="server"
				 AutoPostBack="True"></asp:dropdownlist>
            </div>
             
               <div class="col-sm-6 "> <br />     
                    <asp:DropDownList id="ddlDate" runat="server"  class="form-control" 
				AutoPostBack="True"></asp:DropDownList>
               </div>
             </div>

          <div class="col-sm-12">
               <div class="col-sm-6 ">      
              <asp:label id="Label3" runat="server">START TIME:</asp:label>
            <asp:textbox id="txtstarttime" runat="server" ReadOnly="True" class="form-control"></asp:textbox>
           </div>
             
               <div class="col-sm-6 ">      
              <asp:label id="Label4" runat="server">VEHICLE NO:</asp:label>
            <asp:textbox id="txtvehcleno" runat="server" ReadOnly="True" class="form-control"></asp:textbox>
             </div>
              </div>
        
          <div class="col-sm-12">
               <div class="col-sm-6 ">      
              <asp:label id="Label5" runat="server">FARE:</asp:label>
            <asp:textbox id="txtfare" runat="server" class="form-control"
				ReadOnly="True"></asp:textbox>
            </div>
             
               <div class="col-sm-6 ">      
              <asp:label id="Label6" runat="server">SERVICE NO:</asp:label>
            <asp:textbox id="txtserno" runat="server" ReadOnly="True" class="form-control"></asp:textbox>
              </div>
              </div>
        
          <div class="col-sm-12">
               <div class="col-sm-6 ">
                    <asp:label id="Label7" runat="server">SEATS ALLOTED:</asp:label>
            <asp:textbox id="txtseatsallot" runat="server" ReadOnly="True" class="form-control"></asp:textbox>
               </div>
           
                     <div class="col-sm-6 ">
              <asp:label id="Label8" runat="server">SEATS AVAILABLE:</asp:label>
            <asp:textbox id="txtseatavlb"  runat="server" ReadOnly="True" class="form-control"></asp:textbox>
               
              </div>
              </div>

          <div class="col-sm-12">
               <div class="col-sm-6 ">     
              <asp:label id="Label10"  runat="server">NUMBER OF SEATS:</asp:label>
            <asp:textbox id="txtresv" runat="server" MaxLength="2" class="form-control"></asp:textbox>
              <//div>
            
               <div class="col-sm-6 ">     
              <asp:requiredfieldvalidator id="txtresvValidator" 
				runat="server" Width="170px" ControlToValidate="txtresv" ErrorMessage="Enter seats to be reserved" ></asp:requiredfieldvalidator>
            </div>
              </div>

          <div class="col-sm-12">
               <div class="col-sm-6 ">   
              <asp:regularexpressionvalidator id="txtresvRegExpValidator"
				runat="server" ControlToValidate="txtresv" ErrorMessage="Enter Only Numbers" ValidationExpression="[0-9]"></asp:regularexpressionvalidator>
              </div>
              </div>
        
          
         <div class="col-sm-12">
                <div class="col-sm-6">
                    <asp:Button  id="btnsubmit" style="background-color:black;color:white" class="btn btn-block" runat="server" Text="SUBMIT" ></asp:Button>
                </div>
                    <div class="col-sm-6">
                    <asp:Button  id="btnreset"   style="background-color:black;color:white" class="btn btn-block" runat="server" Text="RESET" ></asp:Button>
                </div>
</div>
        <div class="col-sm-12" ><br />
                <div class="col-sm-6">
                   <asp:HyperLink id="HypLnkBack" runat="server" NavigateUrl="VEHICLE DETAILS.aspx" style="color:black" >Back</asp:HyperLink>
                </div>
            </div>
                 
             
            
            
           
           
            
            
            
           
            
            
            <asp:label id="lblmsg" style="Z-INDEX: 120; LEFT: 384px; POSITION: absolute; TOP: 440px" runat="server"
				Enabled="False"></asp:label>
           
            <asp:label id="lblmsg2" style="Z-INDEX: 122; LEFT: 384px; POSITION: absolute; TOP: 488px" runat="server"></asp:label>
            <asp:label id="lblmsg3" style="Z-INDEX: 123; LEFT: 376px; POSITION: absolute; TOP: 368px" runat="server"></asp:label>
            
           
          </div>
            
		
    </asp:Content>
	
