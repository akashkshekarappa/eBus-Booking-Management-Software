<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgotpwd.aspx.cs" Inherits="busbook.forgotpwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content1" runat="server">
			
    <div class="container" style="color:black">
        <div class="col-sm-12">
                    <div class="col-sm-6">
    <asp:Label id="Label1"  runat="server"
				Font-Bold="True">Username</asp:Label>
			<asp:TextBox id="txtuid"  runat="server"
				BackColor="White" MaxLength="5" class="form-control"></asp:TextBox>
			</div>
            </div>


                         <div class="col-sm-12">
                    <div class="col-sm-6">
                        <asp:Label id="lblforgot" 
				runat="server" Enabled="False"></asp:Label>
            <br/>
    <br/>
    <br/>
  
			<asp:Button id="Button1"  runat="server"
				Text="OK" style="background-color:black;color:white" class="btn btn-block"></asp:Button>
                        </div>
                             </div>


        <div class="col-sm-12">
                    <div class="col-sm-6" style="color:black"><br />
			<asp:HyperLink id="HyperLink1" 
				runat="server" NavigateUrl="LOGIN.aspx" >BACK</asp:HyperLink>
			<asp:RequiredFieldValidator id="txtuidValidator" 
				runat="server" ErrorMessage="Enter The User Id" ControlToValidate="txtuid"></asp:RequiredFieldValidator>
                        </div>
            </div>
			</div>
    </asp:Content>
		
