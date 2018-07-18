<%@ Page Title="" Language="C#" MasterPageFile="~/StudentProfile.master" AutoEventWireup="true" CodeBehind="studentEditProfile.aspx.cs" Inherits="WebApplication1.studentEditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" runat="server">
 
       
    <table >
        <tr>
            <td colspan="2">
                <h3>Edit your Details Here....</h3>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblid" runat="server" Text="ID: " ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtid" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqid" runat="server" ControlToValidate="txtid" Text="ID Should Be Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblName" runat="server" Text="Name : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="valstudname" ForeColor="Red" ControlToValidate="txtName" Text="Name should start with capital letters" 
                    ValidationExpression="[A-Z][a-z]+" runat="server" Display="Dynamic" ErrorMessage="[Name should start with Capital Letters followed by small alphabets]"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="ReqstudName" runat="server" ControlToValidate="txtName"
                            Text="Name Should Be Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
       <tr>
            <td>
                <asp:Label ID="lblDOB" runat="server" Text="Date of Birth : "></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Display="Dynamic"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqDOB" runat="server" ControlToValidate="txtDOB"
                            Text="Date of Birth Should Be Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> 
<asp:RangeValidator ID="rvDOB" runat="server" ControlToValidate="txtDOB" Type="Date" MinimumValue="01/01/1990" MaximumValue="01/01/2001" Text="Please provide proper Date of Birth"  ForeColor="Red" Display="Dynamic"></asp:RangeValidator>           

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCity" runat="server" Text="City: " ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqCity" runat="server" ControlToValidate="txtCity"
                            Text="City Should Be Required" ForeColor="Red"></asp:RequiredFieldValidator>   

            </td>
        </tr>
       <tr>
           <td>
               <asp:Label ID="lblMobile" runat="server" Text="Mobile: "></asp:Label>
           </td>
           <td><asp:TextBox ID="txtMobile" runat="server" TextMode="Number" Display="Dynamic"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="reqMobile" runat="server" ControlToValidate="txtMobile"
                            Text="Mobile Number Should Be Required"  ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile" ValidationExpression="[6-9][0-9]{10}" Text="Please provide valid Mobile Number" 
                   ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
           </td>
       </tr>
         
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnEdit" runat="server" Text="Edit Profile" OnClick="btnEdit_Click" />
            </td>
        </tr>
        
       

    </table>
           
 
</asp:Content>
