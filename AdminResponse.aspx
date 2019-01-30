<%@ Page language="c#" Codebehind="AdminResponse.aspx.cs" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Inherits="busbook.AdminResponse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content1" runat="server">
	
		 <table style="border: 1pt solid #E6E6E6; width: 60%; height: 424px; font-family: Verdana;
            border-collapse: collapse; background-color: #F2F2F2;" align="center">
             <tr>
            <td align="center" colspan="3" class="style9">
                <asp:Label ID="Label6" runat="server"
                    Font-Size="X-Large" ForeColor="Black" Font-Bold="True" Font-Overline="True" Font-Underline="True">Waiting for Approval</asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
			<asp:datagrid id="dtgrdxtra" runat="server"
				BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
				<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
				<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
				<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
				<Columns>
					<asp:ButtonColumn Text="Process" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
			</asp:datagrid>
                </td>
            </tr>
            <%--<asp:button id="Button1" style="Z-INDEX: 102; LEFT: 16px; POSITION: absolute; TOP: 416px" runat="server"
				Text=""></asp:button>--%>
             <tr>
                 <td>
            <asp:label id="lblmsg"  runat="server"></asp:label><asp:label id="lblmsg2" runat="server"></asp:label>
                     </td>
                 </tr>
             <tr>
                 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:hyperlink id="HyperLink1" runat="server" NavigateUrl="AdminResponse.aspx">REFRESH</asp:hyperlink>
			
                     </td>
                 </tr>
			</table>	
     </asp:Content>