<%@ Page Title="VehicleDetails" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VEHICLE DETAILS.aspx.cs" Inherits="busbook.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="Content1" runat="server">

        <div class="container" style="color:black">
  <div class="col-sm-12" style="color:black">

              <div class="col-sm-4 ">      
            <asp:hyperlink id="hypLnkNewboking" 
				runat="server" NavigateUrl="./NEW BOOKING.aspx" style="color:black" >NEW BOOKING</asp:hyperlink>
                  </div>

        <div class="col-sm-4 ">  
        <asp:hyperlink id="hypLnkXtraTkts" 
				runat="server" NavigateUrl="./ExtraTickets.aspx" style="color:black">EXTRA TICKETS</asp:hyperlink>

            </div>
        <div class="col-sm-4 ">  
        <asp:HyperLink id="hypLnkBack" 
				runat="server" NavigateUrl="LOGIN.aspx" style="color:black">BACK</asp:HyperLink>

            </div>
      </div>
            <div class="col-sm-12">


            
			<asp:datagrid id="datagrd"  runat="server"
				Font-Size="Small" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
				CellPadding="10">
				<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
				<ItemStyle ForeColor="#330099" BorderColor="Red" BackColor="White"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BorderColor="#FF8000" BackColor="#990000"></HeaderStyle>
				<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
				<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
               
			</asp:datagrid>

        <br />

                <div class="col-sm-6">
			<asp:Label id="Label2"  runat="server">DATE</asp:Label>
			<asp:DropDownList id="ddldate"  runat="server" class="form-control"
				AutoPostBack="True"></asp:DropDownList>
			
			<asp:RequiredFieldValidator id="ddldateValidator"
				runat="server" ErrorMessage="Select Any Date" ControlToValidate="ddldate"></asp:RequiredFieldValidator>
			
			</div>
               </div>
        </asp:Content>
	
