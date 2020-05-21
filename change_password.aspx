<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <%--<table style="width: 100%; border: 3px solid #0033CC; background-image: url('img/ss5.jpg')">
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
                    Old Password</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 415px">
                    New Password</td>
                <td style="width: 199px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 187px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 415px">&nbsp;</td>
                <td style="width: 199px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" BackColor="#0066FF" ForeColor="Black" />
                    <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
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
    </form>--%>


       <h1 class="page-header">CHANGE PASSWORD</h1>
    <div class="row">

                <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Old Password</label>
									<asp:TextBox ID="TextBox1" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                     
								</div>

                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>New Password</label>
									<asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                     
								</div>

                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Confirm Password</label>
									<asp:TextBox ID="TextBox3" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                     
								<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password do not match " style="color: #FF0000"></asp:CompareValidator>
                     
								</div>

                </div>
        <%--<div class="col-lg-4">

                <div class="form-group">
		
								</div>

                </div>--%>
       
           <div class="col-lg-6">
             <div class="form-group">
                 <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />
								</div>


        </div>
        <div class="col-lg-6">
             <div class="form-group">
								 
								</div>
            </div>


     
        </div>
</asp:Content>

