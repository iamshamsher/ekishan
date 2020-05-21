<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <table style="width: 100%; border: 3px solid #0033CC; background-image: url('img/ss5.jpg')">
            <tr>
                <td style="width: 415px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 415px; height: 38px;"></td>
                <td style="width: 199px; height: 38px;"></td>
                <td style="width: 187px; height: 38px;"></td>
                <td style="height: 38px"></td>
            </tr>
            <tr>
                <td style="width: 415px">
                    <asp:Label ID="Label1" runat="server" ForeColor="#000099" Text="User name"></asp:Label>
                </td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 415px">
                    <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="Password"></asp:Label>
                </td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 415px">&nbsp;</td>
                <td style="width: 199px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" BackColor="#0066FF" ForeColor="Black" />
                    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                </td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 415px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 415px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 415px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 415px">&nbsp;</td>
                <td style="width: 199px">&nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 25%">&nbsp;</td>
                <td style="width: 25%">&nbsp;</td>
                <td style="width: 25%">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

