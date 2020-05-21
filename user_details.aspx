<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="user_details.aspx.cs" Inherits="user_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
        <br />
        <br />
       <asp:Label ID="Label1" runat="server" Text="User Details" style="text-align: center; font-weight: 700; color: #FF0000"></asp:Label>
    <br />
        <br />
     <asp:GridView ID="gvDetails" runat="server" AllowSorting="True" AutoGenerateColumns="False" PageSize="5" style="text-align: center" Width="985px">
            <Columns>
                        <asp:BoundField DataField="farmer_name" HeaderText="Farmer Name" />
                         <asp:BoundField DataField="uid_no" HeaderText="UID No" />
                        <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
                         <asp:BoundField DataField="contact" HeaderText="Mobile NO" />
                        <asp:BoundField DataField="email" HeaderText="e-Mail Id" />
                        <asp:BoundField DataField="apl_bpl" HeaderText=" BPL No" />
                         <asp:BoundField DataField="address" HeaderText="Address" />
                       
                    


                   </Columns>
        </asp:GridView>
</asp:Content>

