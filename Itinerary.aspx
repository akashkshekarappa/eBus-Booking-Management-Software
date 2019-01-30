<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Itinerary.aspx.cs" Inherits="busbook.Itinerary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">
   
  <div class="container" style="color:black">
      <div class="col-sm-12 text-center">

           <asp:Label id="Label7" runat="server"
			Font-Size="X-Large" ForeColor="Black" Font-Bold="True" Font-Overline="True" Font-Underline="True">Confirmation Details</asp:Label>
           
      </div>

      <div class="col-sm-12">
           <div class="col-sm-6">
            <asp:Label ID="Label1" runat="server" Font-Bold="True">TravellerName:</asp:Label>
            </div>

           <div class="col-sm-6">
               
             <asp:Label ID="LabelTN" runat="server" Font-Bold="True"></asp:Label>
           </div>
      </div>
       <div class="col-sm-12"><br />
           <div class="col-sm-6">
                <asp:Label ID="Label2" runat="server" Font-Bold="True">PhoneNumber:</asp:Label>
           
           </div>
           <div class="col-sm-6">
               
              <asp:Label ID="LabelPH" runat="server" Font-Bold="True"></asp:Label>
           </div>


      </div>

        <div class="col-sm-12"><br />
           <div class="col-sm-6">
                <asp:Label ID="Label4" runat="server" Font-Bold="True"> Number Of Seats Reserved:</asp:Label>
          
           
           </div>
           <div class="col-sm-6">
                <asp:Label ID="LabelSN" runat="server" Font-Bold="True"></asp:Label>
           
           </div>


      </div>

        <div class="col-sm-12"><br />
           <div class="col-sm-6">
               
             <asp:Label ID="Label3" runat="server" Font-Bold="True"> Amount:</asp:Label>
           </div>
           <div class="col-sm-6">
                <asp:Label ID="LabelAmt" runat="server" Font-Bold="True"></asp:Label>
           
           </div>


      </div>

           <div class="col-sm-12"><br />
           <div class="col-sm-6">
               
            <asp:Label ID="Label5" runat="server" Font-Bold="True"> Date Of Journey:</asp:Label>
           </div>
           <div class="col-sm-6">
                <asp:Label ID="LabelDOJ" runat="server" Font-Bold="True"></asp:Label>
           
           </div>


      </div>
               

       <div class="col-sm-12"><br />
           <div class="col-sm-6">
                  <asp:Label ID="lblmsg" runat="server"
                            Visible="False"></asp:Label>
           
           </div>
           <div class="col-sm-6">
               
           
                <asp:Label id="Label8" runat="server"
			Font-Size="X-Large" ForeColor="Black" Font-Bold="True">Thank you for choosing us.</asp:Label>
           </div>


      </div>

          <div class="col-sm-12" style="color:black"><br />
           <div class="col-sm-6">
               <asp:HyperLink ID="HyperLink1"
                    runat="server" NavigateUrl="LOGIN.aspx" >Logout</asp:HyperLink>
           
           </div>
           


      </div>
                               
         
</div>
</asp:Content>

