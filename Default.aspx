<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table style="width: 100%; border: 4px solid #000066; background-image: url('img/ss5.jpg')">
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px; height: 29px;">
                <asp:Label ID="Label1" runat="server" ForeColor="#000099" Text="Farmer name" BackColor="#FFFFCC"></asp:Label>
            </td>
            <td style="width: 255px; height: 29px;">
                <asp:TextBox ID="TextBox1" runat="server" ForeColor="#0066FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox1"
        ValidationGroup="Group2" runat="server" ErrorMessage="Farmer name is required." style="color: #FF0000" />
            </td>
            <td style="width: 260px; height: 29px;"></td>
            <td style="width: 221px; height: 29px;"></td>
        </tr>
        <tr>
            <td style="width: 213px">
                <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="D.O.B" BackColor="White"></asp:Label>
            </td>
            <td style="width: 255px">
                <asp:TextBox ID="TextBox2" runat="server" ForeColor="#0066FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2"
        ValidationGroup="Group2" runat="server" ErrorMessage="DOB name is required." style="color: #FF0000" />
            </td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">
                <asp:Label ID="Label3" runat="server" ForeColor="#000099" Text="UID NO" BackColor="White"></asp:Label>
            </td>
            <td style="width: 255px">
                <asp:TextBox ID="TextBox3" runat="server" ForeColor="#0066FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox3"
        ValidationGroup="Group2" runat="server" ErrorMessage="Uid no name is required." style="color: #FF0000" />
            </td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">
                <asp:Label ID="Label4" runat="server" ForeColor="#000099" Text="Contact" BackColor="White"></asp:Label>
            </td>
            <td style="width: 255px">
                <asp:TextBox ID="TextBox4" runat="server" ForeColor="#0066FF"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="TextBox4" ErrorMessage="Please enter valid no" 
    ValidationExpression="[0-9]{10}" style="color: #FF0000"></asp:RegularExpressionValidator>

            </td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px; height: 84px;">
                <asp:Label ID="Label5" runat="server" ForeColor="#000099" Text="Gender" BackColor="White"></asp:Label>
            </td>
            <td style="width: 255px; height: 84px;">
               <asp:RadioButton ID="RadioButton1" runat="server" Text="Female" groupname="gender" BackColor="Blue" ForeColor="Black"/>
                <asp:RadioButton ID="RadioButton2" runat="server" Text="male" groupname="gender" BackColor="#0033CC" ForeColor="Black"/>
            </td>
            <td style="width: 260px; height: 84px;"></td>
            <td style="width: 221px; height: 84px;"></td>
        </tr>
        <tr>
            <td style="width: 213px; height: 47px;">
                <asp:Label ID="Label6" runat="server" ForeColor="#000099" Text="Catogary"></asp:Label>
            </td>
            <td style="width: 255px; height: 47px;">
                <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="#0066FF">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>OBC</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>ST</asp:ListItem>
                    <asp:ListItem>General</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 260px; height: 47px;"></td>
            <td style="width: 221px; height: 47px;"></td>
        </tr>
        <tr>
            <td style="width: 213px">
                <asp:Label ID="Label7" runat="server" ForeColor="#000099" Text="E-mail" BackColor="White"></asp:Label>
            </td>
            <td style="width: 255px">
                <asp:TextBox ID="TextBox7" runat="server" ForeColor="#0066FF"></asp:TextBox>
                <asp:RegularExpressionValidator
        id="regEmail"
        ControlToValidate="TextBox7"
        Text="(Invalid email)"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        Runat="server" style="color: #FF0000" />

            </td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">
                <asp:Label ID="Label8" runat="server" ForeColor="#000099" Text="APL/BPL No" BackColor="White"></asp:Label>
            </td>
            <td style="width: 255px">
                <asp:TextBox ID="TextBox8" runat="server" ForeColor="#0066FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox8"
        ValidationGroup="Group2" runat="server" ErrorMessage=" APL/BPL nois required." style="color: #FF0000" />
            </td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">
                <asp:Label ID="Label9" runat="server" ForeColor="#000099" Text="Address" BackColor="White"></asp:Label>
            </td>
            <td style="width: 255px">
                <asp:TextBox ID="TextBox9" runat="server" ForeColor="#0066FF"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox1"
        ValidationGroup="Group2" runat="server" ErrorMessage="Address name is required." style="color: #FF0000" />
            </td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">
                <asp:Label ID="Label10" runat="server" ForeColor="#000099" Text="Password" BackColor="White"></asp:Label>
            </td>
            <td style="width: 255px">
                <asp:TextBox ID="TextBox10" runat="server" ForeColor="#0066FF"></asp:TextBox>
            </td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 255px">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" BackColor="#0066FF" ForeColor="Black" />
            </td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 255px">&nbsp;</td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 255px">&nbsp;</td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 255px">&nbsp;</td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 255px">&nbsp;</td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 255px">&nbsp;</td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 255px">&nbsp;</td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 255px">&nbsp;</td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px">&nbsp;</td>
            <td style="width: 255px">&nbsp;</td>
            <td style="width: 260px">&nbsp;</td>
            <td style="width: 221px">&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

