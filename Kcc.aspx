<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kcc.aspx.cs" Inherits="Kcc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <h1 class="page-header">KCC</h1>

    <div class="row">

                <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Farmer Name</label>
									<asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="TextBox1"
        ValidationGroup="Group2" runat="server" ErrorMessage="Name is required." style="color: #FF0000" />
								</div>

                </div>

                <div class="col-lg-4">
                   <div class="form-group">
									 <label>Father Name</label>
									<asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="TextBox2"
        ValidationGroup="Group2" runat="server" ErrorMessage="Father name is required." style="color: #FF0000" />
								</div>
                   
            </div>
          <div class="col-lg-4">
                   <div class="form-group">
								 <label>D.O.B</label>
									<asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="TextBox3"
        ValidationGroup="Group2" runat="server" ErrorMessage="DOB is required." style="color: #FF0000" />
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
								 <label>Uid no</label>
									<asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox5"
        ValidationGroup="Group2" runat="server" ErrorMessage="Uid no is required." style="color: #FF0000" />
								</div>

        </div>


         <div class="col-lg-4">
             <div class="form-group">
								 <label>District</label>
									<asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox6"
        ValidationGroup="Group2" runat="server" ErrorMessage="District is required." style="color: #FF0000" />
								</div>

        </div>





        
         <div class="col-lg-4">
             <div class="form-group">
								 <label>Block</label>
									<asp:TextBox ID="TextBox7" class="form-control" runat="server" ></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox7"
        ValidationGroup="Group2" runat="server" ErrorMessage="Block is required." style="color: #FF0000" />
								</div>
             	</div>
         <div class="col-lg-4">
             <div class="form-group">
								 <label>Quantity</label>
									<asp:TextBox ID="TextBox8" class="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox8"
        ValidationGroup="Group2" runat="server" ErrorMessage="Quantity is required." style="color: #FF0000" />
								</div>
             	</div>
        <div class="col-lg-4">
             <div class="form-group">
								 <label>Moza</label>
									<asp:TextBox ID="TextBox9" class="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox9"
        ValidationGroup="Group2" runat="server" ErrorMessage="Moza is required." style="color: #FF0000" />
								</div>
            	</div>
         <div class="col-lg-4">
             <div class="form-group">
								 <label>Khata no</label>
									<asp:TextBox ID="TextBox10" class="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox10"
        ValidationGroup="Group2" runat="server" ErrorMessage="Khata is required." style="color: #FF0000" />
								</div>
             </div>
         <div class="col-lg-4">
             <div class="form-group">
								 <label>Plot no</label>
									<asp:TextBox ID="TextBox11" class="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox11"
        ValidationGroup="Group2" runat="server" ErrorMessage="Plot no is required." style="color: #FF0000" />
								</div>

             </div>
            <div class="col-lg-4">
             <div class="form-group">
								 <label>Address</label>
									<asp:TextBox ID="TextBox12" class="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox12"
        ValidationGroup="Group2" runat="server" ErrorMessage="Address is required." style="color: #FF0000" />
								</div>
                </div>
         <div class="col-lg-4">
             <div class="form-group">
								 <label>Land paper</label>
									<asp:TextBox ID="TextBox13" class="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox13"
        ValidationGroup="Group2" runat="server" ErrorMessage="Land paper is required." style="color: #FF0000" />
								</div>

             </div>
           <div class="col-lg-4">
             <div class="form-group">
								 <label>Pan card</label>
									<asp:TextBox ID="TextBox14" class="form-control" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox14"
        ValidationGroup="Group2" runat="server" ErrorMessage="Pan card is required." style="color: #FF0000" />
								</div>
               </div>

            <div class="col-lg-4">
             <div class="form-group">
								 <label>Contact</label>
									<asp:TextBox ID="TextBox15" class="form-control" runat="server"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="TextBox8" ErrorMessage="Please enter valid no" 
    ValidationExpression="[0-9]{10}" style="color: #FF0000"></asp:RegularExpressionValidator>

								</div>
                </div>
        <div class="col-lg-4">
             <div class="form-group">
								 <label>E-mail </label>
									<asp:TextBox ID="TextBox16" class="form-control" runat="server"></asp:TextBox>
                     <asp:RegularExpressionValidator
        id="regEmail"
        ControlToValidate="TextBox7"
        Text="(Invalid email)"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        Runat="server" style="color: #FF0000" /> 
								</div>
                </div>

       <div class="col-lg-4">
             <div class="form-group">
								photo
                 <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />	

             </div>
              </div>
       <div class="col-lg-6">
             <div class="form-group">
                 <asp:Button ID="Button1" runat="server" Text="Apply" OnClientClick="return Validate()" OnClick="Button1_Click1" />
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
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

