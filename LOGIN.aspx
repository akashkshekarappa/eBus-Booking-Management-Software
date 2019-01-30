<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="busbook.LOGIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

	<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">
    <div class="container" style="color:black">
        <%--<div class="col-sm-12 text-center">
                    <asp:Label ID="lblHeader" runat="server" Text="Welcome to Online Flight Booking System" Font-Bold="True"></asp:Label>
               </div>--%>
         <div class="col-sm-12">
                    <div class="col-sm-6"> <asp:Label ID="lblName" runat="server" Text="Username:"></asp:Label>
                 <asp:TextBox ID="txtuserid" runat="server" class="form-control"> </asp:TextBox> </div>
             
         <div class="col-sm-6">
                   
             
                    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
          
                    <asp:RequiredFieldValidator id="txtpwdReqFieldValidator"
		    runat="server" ControlToValidate="txtpwd" ErrorMessage="Please enter a valid password" ForeColor="red"></asp:RequiredFieldValidator>
             </div>
             </div>

         <div class="col-sm-6" style=" left: 50%;
  right: auto;
  text-align: center;
  transform: translate(-50%, 0);">
                    <asp:Label ID="lblocation" runat="server" Text="Select your location :" ></asp:Label>
                
                 <asp:DropDownList ID="ddlBranch" runat="server"
                 AppendDataBoundItems="true" class="form-control">
                 <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem Value="lou">New York City</asp:ListItem>
                <asp:ListItem Value="hou">Houston</asp:ListItem>
                 <asp:ListItem Value="dal">Chicago</asp:ListItem>
                <asp:ListItem Value="aus">San Francisco</asp:ListItem>
                </asp:DropDownList>
               </div>
              
        
            <div class="col-sm-12"><br />
                <div class="col-sm-6">
                    <asp:Button id="btnsubmit" style="background-color:black;color:white" class="btn btn-block" runat="server" Text="SUBMIT" ></asp:Button>
                </div>
                    <div class="col-sm-6">
                    <asp:Button id="btnreset"   style="background-color:black;color:white" class="btn btn-block" runat="server" Text="RESET" ></asp:Button>
                </div>
</div>
                   
            <div class="col-sm-12" ><br />
                <div class="col-sm-6">
                   <asp:HyperLink id="HyperLink2" style="color:black" runat="server" NavigateUrl="WebForm8.aspx" >SIGN UP</asp:HyperLink>
                </div>
                    <div class="col-sm-6">
                     <asp:HyperLink id="HyperLink1" runat="server" style="color:black" NavigateUrl="forgotpwd.aspx" >FORGOT PASSWORD</asp:HyperLink>
                </div>
</div>
       
                  
               
                
        
              
          
    </div>
       
    
</asp:Content>
		

	


