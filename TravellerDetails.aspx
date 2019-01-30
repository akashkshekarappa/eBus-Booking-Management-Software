<%@ Page Title="TravellersDetails" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TravellerDetails.aspx.cs" Inherits="busbook.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content1" runat="server">               


      <div class="container" style="color:black">
      <div class="col-sm-12 text-center">
                        <asp:Label id="Label6" runat="server"
			Font-Size="X-Large" ForeColor="Black" Font-Bold="True" Font-Overline="True" Font-Underline="True">Traveller Details</asp:Label>
                       
          </div>
          <div class="col-sm-12"><br />
              <div class="col-sm-6">
                   <asp:Label id="Label1" runat="server"
			  Font-Bold="True">Enter TravellerName:</asp:Label>

              </div>
              <div class="col-sm-6">
                     <asp:TextBox id="txttravname" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                         

                         <asp:RequiredFieldValidator id="txttravnameValidator" 
			 runat="server" ErrorMessage="Enter The TravellerName" ControlToValidate="txttravname" Width="160px"></asp:RequiredFieldValidator>

              </div>

          </div>
                      
          
           <div class="col-sm-12">
              <div class="col-sm-6">
                  <asp:Label id="Label2" runat="server"  Font-Bold="True">Enter PhoneNumber:</asp:Label>

              </div>
              <div class="col-sm-6">
                    <asp:TextBox id="txtphno" runat="server" CssClass="form-control"></asp:TextBox>
                        

                         <asp:RequiredFieldValidator id="RequiredFieldValidator2" 
				runat="server" ErrorMessage="Enter The PhoneNo" ControlToValidate="txtphno" Width="160px"></asp:RequiredFieldValidator>

                        
                         <asp:RegularExpressionValidator id="txtphnoValidator" 
				runat="server" ErrorMessage="Enter Valid Nmubers" ControlToValidate="txtphno" Width="128px" ValidationExpression="[0-9]{6,11}"></asp:RegularExpressionValidator>

              </div>

          </div>
                
          
           <div class="col-sm-12"><br/>
              <div class="col-sm-6">
                  <asp:Label id="Label4"  runat="server"
				 Font-Bold="True"> SeatNumbers:</asp:Label>

              </div>
              <div class="col-sm-6">
                   <asp:TextBox id="txtseatno" 
				runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>

              </div>

          </div>

              <div class="col-sm-12"><br />
              <div class="col-sm-6">
                 <asp:Label id="Label5"  runat="server"
				 Font-Bold="True">TotalAmount:</asp:Label>

              </div>
              <div class="col-sm-6">
                   <asp:TextBox id="txttotamt" 
				runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                     
                        

              </div>

          </div>

          <div class="col-sm-12"><br />
              <div class="col-sm-6">
                 <asp:Label id="lblmsg"  runat="server"
				Visible="False"></asp:Label>

              </div>
              </div>
          <div class="col-sm-12">
              <div class="col-sm-6">
                   <asp:Button id="Button1"  runat="server" style="background-color:black;color:white" class="btn btn-block"
				Text="SUBMIT"></asp:Button>
                     
              </div>
                <div class="col-sm-6">
               <asp:hyperlink id="HyperLink1" runat="server" NavigateUrl="NEW BOOKING.aspx" style="color:black">BACK</asp:hyperlink>
              </div>

          </div>


          </div>
			
 </asp:Content>


