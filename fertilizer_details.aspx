<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="fertilizer_details.aspx.cs" Inherits="fertilizer_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
    <asp:Label ID="Label1" runat="server" Text="Fertilizer Details" style="text-align: center; font-weight: 700; color: #FF0000"></asp:Label>
    <br />
        <br />
       <asp:GridView ID="gvDetails" runat="server" AllowSorting="True" AutoGenerateColumns="False" PageSize="5" style="text-align: center" Width="985px">
            <Columns>
                        <asp:BoundField DataField="name" HeaderText="Farmer Name" />
                         <asp:BoundField DataField="land_paper" HeaderText="Land Paper" />
                        <asp:BoundField DataField="khata_no" HeaderText="Khata No" />
                         <asp:BoundField DataField="plot_no" HeaderText="Plot NO" />
                   <asp:BoundField DataField="uid_no" HeaderText="UID NO" />
                      <asp:BoundField DataField="contact" HeaderText="Mobile NO" />
                        <asp:BoundField DataField="email_id" HeaderText="e-Mail Id" />
                        <asp:BoundField DataField="moza" HeaderText=" Moza" />
                         <asp:BoundField DataField="address" HeaderText="Address" />
                       
                    


                   </Columns>
        </asp:GridView>
</asp:Content>

