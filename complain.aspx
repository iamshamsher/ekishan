<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="complain.aspx.cs" Inherits="complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>
    <table style="width: 100%; border: 4px solid #3333CC; background-image: url('img/ss5.jpg')">
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">
                <asp:Label ID="Label1" runat="server" ForeColor="#000099" Text="Farmer name"></asp:Label>
            </td>
            <td style="width: 238px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox1"
        ValidationGroup="Group2" runat="server" ErrorMessage="Farmer name is required." style="color: #FF0000" />
            </td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">
                <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="Gender"></asp:Label>
            </td>
            <td style="width: 238px">
               <p>  <asp:RadioButton ID="RadioButton1" runat="server" Text="Female" groupname="gender"/>
                <asp:RadioButton ID="RadioButton2" runat="server" Text="male" groupname="gender"/></p>

            </td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">
                <asp:Label ID="Label3" runat="server" ForeColor="#000099" Text="contact"></asp:Label>
            </td>
            <td style="width: 238px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="TextBox3" ErrorMessage="Please enter valid no" 
    ValidationExpression="[0-9]{10}" style="color: #FF0000"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">
                <asp:Label ID="Label4" runat="server" ForeColor="#000099" Text="Address"></asp:Label>
            </td>
            <td style="width: 238px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox4"
        ValidationGroup="Group2" runat="server" ErrorMessage=" Address is required." style="color: #FF0000" />
            </td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">
                <asp:Label ID="Label5" runat="server" ForeColor="#000099" Text="Complain"></asp:Label>
            </td>
            <td style="width: 238px">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox5"
        ValidationGroup="Group2" runat="server" ErrorMessage="Complain name is required." style="color: #FF0000" />
            </td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 238px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" />
            </td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td style="width: 236px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 238px">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
    </table>
    
     </form>
</asp:Content>

