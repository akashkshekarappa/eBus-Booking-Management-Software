<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="busbook.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content1" runat="server">
    
    <div class="container" style="color:black">

          <div class="col-sm-12 text-center">
                   <h2>Registration Form</h2>
              </div>

               
     <div class="col-sm-12">

              <div class="col-sm-6 ">     
                    <asp:Label ID="lblName" runat="server" Text="Full Name :"></asp:Label>
              
                    <asp:TextBox ID="txtName" runat="server" class="form-control"></asp:TextBox>
               
            
                    <asp:RequiredFieldValidator ID="RfvFirstName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtName"></asp:RequiredFieldValidator>
       
         </div>
     

              <div class="col-sm-6 ">  
                    <asp:Label ID="lblLastName" runat="server" Text="User Name :"></asp:Label>
            
                    <asp:TextBox ID="txtUserName" runat="server" class="form-control"></asp:TextBox>
               
                    <asp:RequiredFieldValidator ID="RfvLastName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
            </div>
         </div>

         <div class="col-sm-12">

              <div class="col-sm-6 "> 
                    <asp:Label ID="lblEmail" runat="server" Text="E-Mail :"></asp:Label>
               
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>
              
                    <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Invalid E-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </div>

               <div class="col-sm-6 "> 
                    <asp:Label ID="lblPassword" runat="server" Text="Password :"></asp:Label>
             
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
           
                    <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
           </div>

             </div>

      <div class="col-sm-12">

              <div class="col-sm-6 "> 

                    <asp:Label ID="lblConfirmPwd" runat="server" Text="Confirm Pasword :"></asp:Label>
          
                    <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
               
                   
                    <asp:RequiredFieldValidator ID="RfvCnfrmPwd" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtConfirmPwd"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CvCnfmPwd" runat="server" ErrorMessage="Password and Confirm Password didnt matched"
                        ForeColor="#FF3300" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPwd"></asp:CompareValidator>
             </div>

           <div class="col-sm-6 "> 
                    <asp:Label ID="lblGender" runat="server" Text="Gender :"></asp:Label>
             
                    <asp:RadioButtonList ID="RdoGender" runat="server" RepeatDirection="Horizontal"  >
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
             </div>
          </div>

     <div class="col-sm-12">

              <div class="col-sm-6 "> 
                    <asp:Label ID="lblocation" runat="server" Text="Select your location :"></asp:Label>
            
                 <asp:DropDownList ID="Locationlist" runat="server"
                 AppendDataBoundItems="true" class="form-control">
                 <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem Value="lou">Lousiana</asp:ListItem>
                <asp:ListItem Value="hou">Houston</asp:ListItem>
                 <asp:ListItem Value="dal">Dallas</asp:ListItem>
                <asp:ListItem Value="aus">Austin</asp:ListItem>
                <asp:ListItem Value="san">San Antonio</asp:ListItem>
                </asp:DropDownList>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select location" ControlToValidate="Locationlist" ValidationGroup="btnSubmit" InitialValue="--Select--"></asp:RequiredFieldValidator>
             </div>

          <div class="col-sm-6 "> 
                    <asp:Label ID="lblDob" runat="server" Text="Date of Birth :"></asp:Label>
                
                    <asp:TextBox ID="txtDob" runat="server" class="form-control"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="(dd/mm/yyyy)"></asp:Label>
              
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtDob"></asp:RequiredFieldValidator>
                    &nbsp;<br />
                    <asp:RegularExpressionValidator ID="RxvDob" runat="server" ControlToValidate="txtDob"
                        ErrorMessage="Invalid Date Format" ValidationExpression="^(((((0[1-9])|(1\d)|(2[0-8]))\/((0[1-9])|(1[0-2])))|((31\/((0[13578])|(1[02])))|((29|30)\/((0[1,3-9])|(1[0-2])))))\/((20[0-9][0-9])|(19[0-9][0-9])))|((29\/02\/(19|20)(([02468][048])|([13579][26]))))$"
                        ForeColor="#FF3300"></asp:RegularExpressionValidator>
              </div>
         </div>

     <div class="col-sm-12">

              <div class="col-sm-6 "> 
                    <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
               
                    <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" class="form-control"></asp:TextBox>
            
                    <asp:RegularExpressionValidator ID="RxvMobile" runat="server" ErrorMessage="Invalid Mobile Number"
                        ForeColor="#FF3300" ValidationExpression="^([2-9]{1})([0-9]{9})$" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
              
               </div>
         <div class="col-sm-6 "> 
                    <asp:Label ID="lblAddress" runat="server" Text="Address :"></asp:Label>
               
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
          
                    <asp:RequiredFieldValidator ID="RfvAddress" runat="server" ErrorMessage="* Required"
                        ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
             </div>
         </div>

    <div class="col-sm-12">

              <div class="col-sm-6 "> 

                <asp:Label ID="lblmsg" runat="server" ForeColor="#CC3300"></asp:Label>
          
                <asp:Button ID="btnSubmit" runat="server"  style="background-color:black;color:white" class="btn btn-block form-control" Text="Submit" OnClick="btnSubmit_Click" />


                  </div>

         <div class="col-sm-6 "> 
                <asp:Button ID="btnClear" runat="server" CausesValidation="False" OnClick="btnClear_Click" style="background-color:black;color:white" class="btn btn-block form-control"
                    Text="Clear" />
          </div>
        </div>
    </div>
</asp:Content>

        
    