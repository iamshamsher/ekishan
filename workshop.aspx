<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="workshop.aspx.cs" Inherits="complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
   
       
     <table style="width: 100%; border: 3px solid #000099; background-image: url('img/ss5.jpg')">
        <tr>
            <td style="width: 247px">&nbsp;</td>
            <td style="width: 247px">&nbsp;</td>
            <td style="width: 224px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px">
                <asp:Label ID="Label1" runat="server" ForeColor="#000099" Text="Farmer name"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox1"
        ValidationGroup="Group2" runat="server" ErrorMessage="Farmer name is required." style="color: #FF0000" /></td>
            <td style="width: 224px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px">
                <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="D.O.B"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2"
        ValidationGroup="Group2" runat="server" ErrorMessage="DOB is required." style="color: #FF0000" /></td>
            <td style="width: 224px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px">
                <asp:Label ID="Label3" runat="server" ForeColor="#000099" Text="Contact"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="TextBox3" ErrorMessage="Please enter valid no" 
    ValidationExpression="[0-9]{10}" style="color: #FF0000"></asp:RegularExpressionValidator></td>
            <td style="width: 224px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px">
                <asp:Label ID="Label4" runat="server" ForeColor="#000099" Text="UID NO"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox4"
        ValidationGroup="Group2" runat="server" ErrorMessage="uid no is required." style="color: #FF0000" /></td>
            <td style="width: 224px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px">
                <asp:Label ID="Label5" runat="server" ForeColor="#000099" Text="Gender"></asp:Label>
            </td>
            <td style="width: 247px">
               <asp:RadioButton ID="RadioButton1" runat="server" Text="Female" groupname="Gender"/>
                <asp:RadioButton ID="RadioButton2" runat="server" Text="male" groupname="gender"/>

            </td>
            <td style="width: 224px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px; height: 21px;">
                <asp:Label ID="Label6" runat="server" ForeColor="#000099" Text="Catogary"></asp:Label>
            </td>
            <td style="width: 247px; height: 21px;">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>OBC</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>ST</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 224px; height: 21px;"></td>
            <td style="width: 225px; height: 21px;"></td>
        </tr>
        <tr>
            <td style="width: 247px">
                <asp:Label ID="Label7" runat="server" ForeColor="#000099" Text="E-mail"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator
        id="regEmail"
        ControlToValidate="TextBox5"
        Text="(Invalid email)"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        Runat="server" style="color: #FF0000" /></td>
            <td style="width: 224px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 247px">
                <asp:Label ID="Label8" runat="server" ForeColor="#000099" Text="Address"></asp:Label>
            </td>
            <td style="width: 247px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox6"
        ValidationGroup="Group2" runat="server" ErrorMessage="Address is required." style="color: #FF0000" /></td>
            <td style="width: 224px">&nbsp;</td>
            <td style="width: 225px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" />
            </td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
    </table>
    
</form>
</asp:Content>

