<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
<h1 class="page-header">HELP</h1>
    <div class="row">

                <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Farmer name</label>
									<asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox1"
        ValidationGroup="Group2" runat="server" ErrorMessage="Farmer name is required." style="color: #FF0000" />
								</div>

                </div>

                <div class="col-lg-4">
                   <div class="form-group">
									 <label>Father name</label>
									<asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2"
        ValidationGroup="Group2" runat="server" ErrorMessage="Father name is required." style="color: #FF0000" />
								</div>
                   
            </div>
          <div class="col-lg-4">
                   <div class="form-group">
								 <label>Contact</label>
									<asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="TextBox3" ErrorMessage="Please enter valid no" 
    ValidationExpression="[0-9]{10}" style="color: #FF0000"></asp:RegularExpressionValidator>
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
								 <label>Address</label>
									<asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox6"
        ValidationGroup="Group2" runat="server" ErrorMessage="Adsress is required." style="color: #FF0000" /></div>

        </div>

        <div class="col-lg-4">
             <div class="form-group">
								 <label>Question</label>
									<asp:TextBox ID="TextBox4" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox4"
        ValidationGroup="Group2" runat="server" ErrorMessage="Question is required." style="color: #FF0000" /></div>

        </div>
        <div class="col-lg-6">
             <div class="form-group">
                 <asp:Button ID="Button1" runat="server" Text="Apply" OnClick="Button1_Click" />
								</div>


        </div>
        <div class="col-lg-6">
             <div class="form-group">
								 
								</div>


        </div>

          
        
       
        </div>
        </form>


</asp:Content>

