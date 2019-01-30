<%@ Page Title="Admin Request" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminRequest.aspx.cs" Inherits="busbook.adminRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="Content1" runat="server">
			<asp:Label id="Label1"  runat="server"
				Font-Size="X-Large" Width="841px">Request has been sent to the Administrator</asp:Label><br/><br/>
			<asp:HyperLink id="HyperLink1"  
				runat="server" NavigateUrl="VEHICLE DETAILS.aspx">BACK</asp:HyperLink>
          			
		</asp:Content>