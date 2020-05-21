<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crop_insurance.aspx.cs" Inherits="Crop_insurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
                 <h1 class="page-header">CROP INSURANCE</h1>
    <div class="row">

                <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Farmer Name</label>
									<asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox1"
        ValidationGroup="Group2" runat="server" ErrorMessage=" Farmer name is required." style="color: #FF0000" />
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
		
                    <label>Contact</label>
									<asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="TextBox8" ErrorMessage="Please enter valid no" 
    ValidationExpression="[0-9]{10}" style="color: #FF0000"></asp:RegularExpressionValidator>
								</div>

                </div>
        
    
     <p style="color: #3333CC"> <strong>RESIDENTAL ADDRESS OF FARMER</strong></p>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>State</label>
									<%--<asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                             <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Uttar pradesh</asp:ListItem>
                        <asp:ListItem>Madhay pradesh</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                    </asp:DropDownList>
								</div>

                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                     <label>District</label>
									<%--<asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Koderma</asp:ListItem>
                             <asp:ListItem>Dhanbad</asp:ListItem>
                        <asp:ListItem>Bokaro</asp:ListItem>
                        <asp:ListItem>Chatra</asp:ListItem>
                        <asp:ListItem>Palamu</asp:ListItem>
                        <asp:ListItem>Deogarh</asp:ListItem>
                    </asp:DropDownList>
								</div>
                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Village name</label>
									<asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox6"
        ValidationGroup="Group2" runat="server" ErrorMessage="Village name is required." style="color: #FF0000" />
								</div>

                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Pin code</label>
									<asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox7"
        ValidationGroup="Group2" runat="server" ErrorMessage="Pin code is required." style="color: #FF0000" />
								</div>

                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Address detail</label>
									<asp:TextBox ID="TextBox8" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox8"
        ValidationGroup="Group2" runat="server" ErrorMessage="Address is required." style="color: #FF0000" />
								</div>

                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Aadhar number</label>
									<asp:TextBox ID="TextBox9" class="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox9"
        ValidationGroup="Group2" runat="server" ErrorMessage="Adhar no is required." style="color: #FF0000" />
								</div>

                </div>
        <p style="color: #3333CC"> <b>BANK DETAILS</b></p>
        <div class="col-lg-4">

                <div class="form-group">
		
                      <label>State</label>
									<%--<asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                             <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Uttar pradesh</asp:ListItem>
                        <asp:ListItem>Madhay pradesh</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                    </asp:DropDownList>
								</div>
                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Bank name</label>
								  <asp:DropDownList ID="DropDownList6" class="form-control" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>SBI</asp:ListItem>
                             <asp:ListItem>BOI</asp:ListItem>
                        <asp:ListItem>SBI</asp:ListItem>
                        <asp:ListItem>PNB</asp:ListItem>
                        <asp:ListItem>CANARA BANK</asp:ListItem>
                        <asp:ListItem>UNION BANK</asp:ListItem>
                    </asp:DropDownList>
								</div>

                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                   
                     <label>District</label>
									<%--<asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Koderma</asp:ListItem>
                             <asp:ListItem>Dhanbad</asp:ListItem>
                        <asp:ListItem>Bokaro</asp:ListItem>
                        <asp:ListItem>Chatra</asp:ListItem>
                        <asp:ListItem>Palamu</asp:ListItem>
                        <asp:ListItem>Deogarh</asp:ListItem>
                    </asp:DropDownList>
								</div>
                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Branch</label>
									<asp:TextBox ID="TextBox13" class="form-control" runat="server"></asp:TextBox>
								</div>

                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Account type</label>
								
                    
									<%--<asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList5" class="form-control" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Saving</asp:ListItem>
                             <asp:ListItem>Current</asp:ListItem>
                    </asp:DropDownList>
								</div>
                </div>
        <div class="col-lg-4">

                <div class="form-group">
		
                    <label>Account no</label>
									<asp:TextBox ID="TextBox15" class="form-control" runat="server"></asp:TextBox>
								</div>

                </div>
        <p style="color: #3333CC"> <b>LAND DETAILS</b></p>
         <div class="col-lg-4">
             <div class="form-group" style="text-align: center">
								Land records
                 <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />	

             </div>
              </div>
         <%--<div class="col-lg-4">
             <div class="form-group" style="text-align: center">
								Sowing certificate
                 <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />	

             </div>
              </div>--%>
         <%--<div class="col-lg-4">
             <div class="form-group" style="text-align: center">
								Id proof
                 <asp:FileUpload ID="FileUpload3" class="form-control" runat="server" />	

             </div>

              </div>--%>
         <div class="col-lg-6">
             <div class="form-group">
                 <asp:Button ID="Button1" runat="server" Text="Apply" style="text-align: center; height: 26px;" OnClientClick="return Validate()" OnClick="Button1_Click1" />
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

