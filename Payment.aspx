<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="busbook.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" runat="server">
  <div class="container" style="color:black">
      <div class="col-sm-12 text-center">
                <asp:Label ID="Label6" runat="server"
                    Font-Size="X-Large" ForeColor="Black" Font-Bold="True" Font-Overline="True" Font-Underline="True">Payment Details</asp:Label>
            </div>

      <div class="col-sm-12"><br />
          <div class="col-sm-6">
               <asp:Label ID="Label1" runat="server"
                    Font-Bold="True">Please select your card type:</asp:Label>
          
          </div>
      
          <div class="col-sm-6">
              <asp:DropDownList ID="ddlCard" runat="server"
                    AppendDataBoundItems="true" CssClass="form-control">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="dc">Debit Card</asp:ListItem>
                    <asp:ListItem Value="cc">Credit Card</asp:ListItem>
                    <asp:ListItem Value="gc">Gift Card</asp:ListItem>
                </asp:DropDownList>
          
          </div>
      </div>


       <div class="col-sm-12"><br />
          <div class="col-sm-6">
               <asp:Label ID="Label2" runat="server" Font-Bold="True">Enter Your Card Number:</asp:Label>
          
          </div>
      
          <div class="col-sm-6">
               <asp:TextBox ID="txtcardnumber" runat="server" CssClass="form-control"></asp:TextBox>
          
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server" ErrorMessage="Enter The Card Number" ControlToValidate="txtcardnumber" Width="160px"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="txtphnoValidator"
                    runat="server" ErrorMessage="Enter Valid Nmubers" ControlToValidate="txtcardnumber" Width="128px" ValidationExpression="[4-9]{6,11}"></asp:RegularExpressionValidator>
          </div>
      </div>

        <div class="col-sm-12"><br />
          <div class="col-sm-6">
                <asp:Label ID="Label3" runat="server" Font-Bold="True">Enter Your Name(as on the card):</asp:Label>
          
          </div>
      
          <div class="col-sm-6">
               <asp:TextBox ID="TextName" runat="server" CssClass="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server" ErrorMessage="Enter The Name" ControlToValidate="TextName" Width="160px"></asp:RequiredFieldValidator>
          </div>
      </div>

        <div class="col-sm-12">
          <div class="col-sm-6">
               <asp:Label ID="Label4" runat="server"
                    Font-Bold="True"> Expiration Date:</asp:Label>
          
          </div>
      
          <div class="col-sm-3">
                <asp:DropDownList ID="ddlmonth" runat="server"
                    AppendDataBoundItems="true" CssClass="form-control">
                    <asp:ListItem>--Month--</asp:ListItem>
                    <asp:ListItem Value="01">01</asp:ListItem>
                    <asp:ListItem Value="02">02</asp:ListItem>
                    <asp:ListItem Value="03">03</asp:ListItem>
                    <asp:ListItem Value="04">04</asp:ListItem>
                    <asp:ListItem Value="05">05</asp:ListItem>
                    <asp:ListItem Value="06">06</asp:ListItem>
                    <asp:ListItem Value="07">07</asp:ListItem>
                    <asp:ListItem Value="08">08</asp:ListItem>
                    <asp:ListItem Value="09">09</asp:ListItem>
                    <asp:ListItem Value="10">10</asp:ListItem>
                    <asp:ListItem Value="11">11</asp:ListItem>
                    <asp:ListItem Value="12">12</asp:ListItem>
                </asp:DropDownList>
              </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddlyear" runat="server"
                    AppendDataBoundItems="true" CssClass="form-control">
                    <asp:ListItem>--Year--</asp:ListItem>
                    <asp:ListItem Value="01">2017</asp:ListItem>
                    <asp:ListItem Value="02">2018</asp:ListItem>
                    <asp:ListItem Value="03">2019</asp:ListItem>
                    <asp:ListItem Value="04">2020</asp:ListItem>
                    <asp:ListItem Value="05">2021</asp:ListItem>
                    <asp:ListItem Value="06">2022</asp:ListItem>
                    <asp:ListItem Value="07">2023</asp:ListItem>
                    <asp:ListItem Value="08">2024</asp:ListItem>
                    <asp:ListItem Value="09">2025</asp:ListItem>
                    <asp:ListItem Value="10">2026</asp:ListItem>
                    <asp:ListItem Value="11">2027</asp:ListItem>
                    <asp:ListItem Value="12">2028</asp:ListItem>
                </asp:DropDownList>
                </div>
          </div>
     
               
             <div class="col-sm-12"><br />
          <div class="col-sm-6">
                <asp:Label ID="Label5" runat="server"
                    Font-Bold="True">CVV:</asp:Label>
          
          </div>
      
          <div class="col-sm-6">
                <asp:TextBox ID="txtcvv" CssClass="form-control"
                    runat="server" Width="40px"></asp:TextBox>
          </div>
      </div>

       <div class="col-sm-12"><br />
          <div class="col-sm-6">
               <asp:Label ID="lblmsg" runat="server"
                            Visible="False"></asp:Label>
          
          </div>
      
          <div class="col-sm-6">
                <asp:Button ID="Button1" runat="server" style="background-color:black;color:white" class="btn btn-block" CssClass="form-control"
                Text="Pay Now"></asp:Button>
          </div>
      </div>
           

       <div class="col-sm-12">
                
        
         
                <asp:hyperlink id="HyperLink1" runat="server" NavigateUrl="TravellerDetails.aspx" style="color:black">BACK</asp:hyperlink>
          </div>

</div>
</asp:Content>

