<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fertilizer.aspx.cs" Inherits="Fertilizer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%-- <form id="form1" runat="server">--%>
            <h1 class="page-header">FERTILIZER</h1>
    <div class="row">

                <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Name</label>
									<asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1"
        ValidationGroup="Group1" runat="server" ErrorMessage="Please Enter Name" style="color: #FF0000" />
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
								 <label>land paper</label>
									<asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox3"
        ValidationGroup="Group2" runat="server" ErrorMessage="Please Enter land Paper" style="color: #FF0000" />
								</div>
                   
            </div>

        <div class="col-lg-4">
             <div class="form-group">
								 <label>khata no</label>
									<asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox4"
        ValidationGroup="Group2" runat="server" ErrorMessage="Land paper is required." style="color: #FF0000" />
								</div>

        </div>

         <div class="col-lg-4">
             <div class="form-group">
								 <label>plot no</label>
									<asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox5"
        ValidationGroup="Group2" runat="server" ErrorMessage="Plot no is required." style="color: #FF0000" />
								</div>

        </div>
        <div class="col-lg-4">
             <div class="form-group">
								 <label>contact</label>
									<asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="TextBox8" ErrorMessage="Please enter valid no" 
    ValidationExpression="[0-9]{10}" style="color: #FF0000"></asp:RegularExpressionValidator>

								</div>

        </div>

         <div class="col-lg-4">
             <div class="form-group">
								 <label>moza</label>
									<asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
               
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox7"
        ValidationGroup="Group2" runat="server" ErrorMessage="Moza is required." style="color: #FF0000" />
								</div>

        </div>





        
         <div class="col-lg-4">
             <div class="form-group">
								 <label>uid no</label>
									<asp:TextBox ID="TextBox8" class="form-control" runat="server"></asp:TextBox>
                 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox8"
        ValidationGroup="Group2" runat="server" ErrorMessage="Uid no is required." style="color: #FF0000" />
								</div>
             </div>
        
        <div class="col-lg-4">
             <div class="form-group">
								 <label>Address</label>
									<asp:TextBox ID="TextBox9" class="form-control" runat="server"></asp:TextBox>
              
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox9"
        ValidationGroup="Group2" runat="server" ErrorMessage=" Address is required." style="color: #FF0000" />
								</div>

        </div>
        <div class="col-lg-4">
             <div class="form-group">
								 <label>email id</label>
									<asp:TextBox ID="TextBox10" class="form-control" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator 
           ID="regPhone" 
           runat="server" 
           ControlToValidate="TextBox10" 
           ValidationExpression="^(\(?\s*\d{3}\s*[\)\-\.]?\s*)?[2-9]\d{2}\s*[\-\.]\s*\d{4}$"
           Text="Enter a valid phone number" style="color: #FF0000" /> 
								</div>

        </div>
           <div class="col-lg-6">
             <div class="form-group">
                 <asp:Button ID="Button1" runat="server" Text="Apply" OnClientClick="return Validate()" OnClick="Button1_Click1" />
								</div>


        </div>
        <div class="col-lg-6">
             <div class="form-group">
								 
								</div>
            </div>


     
        </div>


     <script type="text/javascript">
         function Validate() {
             var isValid = false;
             isValid = Page_ClientValidate('Group1');
             if (isValid) {
                 isValid = Page_ClientValidate('Group2');
             }
             if (isValid) {
                 isValid = Page_ClientValidate('Group3');
             }
             return isValid;
         }
    </script>
</form>
</asp:Content>

