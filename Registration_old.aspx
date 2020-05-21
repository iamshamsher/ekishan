<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration_old.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<h1 class="page-header">REGISTRATION</h1>
    <div class="row">
        
                <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Name</label>
									<asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
								</div>

                </div>

                <div class="col-lg-4">
                   <div class="form-group">
									 <label>Father Name</label>
									<asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
								</div>
                   
            </div>
          <div class="col-lg-4">

                <div class="form-group">
		<label>Gender</label>
                  <p>  <asp:RadioButton ID="RadioButton1" runat="server" Text="Female" groupname="Gender"/>
                <asp:RadioButton ID="RadioButton2" runat="server" Text="male" groupname="gender"/></p>

								</div>

                </div>

        <div class="col-lg-4">
             <div class="form-group">
								 <label>dob</label>
									<asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
								</div>

        </div>

     
          <div class="col-lg-4">
             <div class="form-group">
								 <label>pan card</label>
									<asp:TextBox ID="TextBox9" class="form-control" runat="server"></asp:TextBox>
								</div>


        </div>
          <div class="col-lg-4">
             <div class="form-group">
								 <label>uid detail</label>
									<asp:TextBox ID="TextBox10" class="form-control" runat="server"></asp:TextBox>
								</div>


        </div>
          <div class="col-lg-4">
             <div class="form-group">
								 <label>contact</label>
									<asp:TextBox ID="TextBox11" class="form-control" runat="server"></asp:TextBox>
								</div>


        </div>
          <div class="col-lg-4">
             <div class="form-group">
								 <label>Address</label>
									<asp:TextBox ID="TextBox12" class="form-control" runat="server"></asp:TextBox>
								</div>


        </div>
        <div class="col-lg-6">
             <div class="form-group">
                 <asp:Button ID="Button1" runat="server" Text="Register" />
								</div>


        </div>
        <div class="col-lg-6">
             <div class="form-group">
								 
								</div>


        </div>

        </div>
</form>
</asp:Content>

