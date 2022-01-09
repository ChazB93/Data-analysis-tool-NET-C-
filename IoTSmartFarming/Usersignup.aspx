<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usersignup.aspx.cs" Inherits="IoTSmartFarming.Usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="100px" src="images/generaluser.png" />
                            </center>

                        </div>

                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                        <h4>Sign Up</h4>
                            </center>

                        </div>

                    </div>

                     <div class="row">
                        <div class="col">
                          <hr> 

                        </div>

                    </div>

                      <div class="row">
                        <div class="col-md-4">
                          
                            <label>First Name</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox1" 
                                     runat="server" placeholder="First Name"></asp:TextBox>

                            </div>
                        </div>

                           <div class="col-md-4">
                          
                            <label>Last Name</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox3" 
                                     runat="server" placeholder="Last Name"></asp:TextBox>

                            </div>
                        </div>

                          
                         <div class="col-md-4">
                           <label>Date of Birth</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox2" 
                                     runat="server" TextMode="Date"></asp:TextBox>

                            </div> 

                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-4">
                          
                            <label>State</label>
                            <div class="form-group">
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select" Value="Select"/>
                                    <asp:ListItem Text="Cankuzo" Value="Cankuzo"/>
                                    <asp:ListItem Text="Gitega" Value="Gitega"/>
                                    <asp:ListItem Text="Rutana" Value="Rutana"/>
                                    <asp:ListItem Text="Ruyigi" Value="Ruyigi"/>
                                    <asp:ListItem Text="Karuzi" Value="Karuzi"/>
                                    <asp:ListItem Text="Kayanza" Value="Kayanza"/>
                                    <asp:ListItem Text="Kirundo" Value="Kirundo"/>
                                    <asp:ListItem Text="Muyinga" Value="Muyinga"/>
                                    <asp:ListItem Text="Ngozi" Value="Ngozi"/>
                                    <asp:ListItem Text="Bururi" Value="Bururi"/>
                                    <asp:ListItem Text="Makamba" Value="Makamba"/>
                                    <asp:ListItem Text="Rumonge" Value="Rumonge"/>
                                    <asp:ListItem Text="Bubanza" Value="Bubanza"/>
                                     <asp:ListItem Text="Bujumbura" Value="Bujumbura"/>
                                    <asp:ListItem Text="Bujumbura Rural" Value="Bujumbura Rural"/>
                                    <asp:ListItem Text="Cibitoke" Value="Cibitoke"/>
                                    <asp:ListItem Text="Muramvya" Value="Muramvya"/>
                                    <asp:ListItem Text="Mwaro" Value="Mwaro"/>
                                </asp:DropDownList>

                            </div>
                        </div> 

                         <div class="col-md-4">
                           <label>City</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox6" 
                                     runat="server" placeholder="City"></asp:TextBox>

                            </div> 

                        </div>

                            <div class="col-md-4">
                        <label>Telephone Number</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox4" 
                                     runat="server" placeholder="Telephone number" TextMode="Phone"></asp:TextBox>
                            </div> 

                    </div>


                    </div>
              

                       <div class="row">
                           
                        <div class="col">
                            <center>
                            <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>    
                        </div>
                           

                </div> 

                      <div class="row">
                        <div class="col-md-6">
                          
                            <label>Username</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox8" 
                                     runat="server" placeholder="Username"></asp:TextBox>

                            </div>
                        </div> 

                         <div class="col-md-6">
                           <label>Password</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox9" 
                                     runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                            </div> 

                        </div>

                    </div>

                      <div class="row">
                        <div class="col">

                    <div class="form-group">
                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />


                            </div>
                            </div>

                </div>


                </div>
                <a href="Homepage.aspx"><< Back to Home</a><br><br>

            </div>

        </div>

    </div>
</asp:Content>
