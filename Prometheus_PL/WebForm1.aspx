<%@ Page Title="" Language="C#" MasterPageFile="~/MainHome.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prometheus_PL.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <center>
        <table style="width:53%; text-align:left;vertical-align:middle">
        <tr>
            <td colspan="2" style="text-align:center;font-weight:bold;font-family:Calibri">
                Login Here...
            </td>
        </tr>
              <tr>
                  <td class="auto-style1"></td>
                  <br />
              </tr>
        <tr>
            <td class="auto-style1">
              
                <asp:Label ID="lblUserName" runat="server" Text="User Name " style="font-family:Calibri;font-weight:bold;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Width="115px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUserName" Text="Please provide user name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblPassword" runat="server" Text="Password " style="font-weight:bold;font-family:Calibri;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPassword" Text="Please provide password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
            <tr><td class="auto-style1"><br /></td></tr>
        <tr>
            <td class="auto-style1"></td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="67px"  style="margin-left:20px;font-weight:bold"/>
            </td>
        </tr>
        <tr>

            <td colspan="2">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

    </center>
</asp:Content>
