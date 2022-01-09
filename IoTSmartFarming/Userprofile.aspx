<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="IoTSmartFarming.Userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
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
                        <h4>Your Profile</h4>
                                <span>Account Status-</span>
                                <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="your status"></asp:Label>
                            </center>

                        </div>

                    </div>

                    <div class="row">
                        <div class="col">
                          <hr> 

                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-6">
                          
                            <label>Full Name</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox1" 
                                     runat="server" placeholder="Full Name"></asp:TextBox>

                            </div>
                        </div>

                         <div class="col-md-6">
                           <label>Date of Birth</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox2" 
                                     runat="server" TextMode="Date"></asp:TextBox>

                            </div> 

                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-6">
                          
                            <label>Contact Number</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox3" 
                                     runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>

                            </div>
                        </div> 

                         <div class="col-md-6">
                           <label>Email ID</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox4" 
                                     runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>

                            </div> 

                        </div>

                    </div>

                     <div class="row">
                        <div class="col-md-4">
                          
                            <label>State</label>
                            <div class="form-group">
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select" Value="Select"/>
                                    <asp:ListItem Text="Burundi" Value="Burundi"/>
                                    <asp:ListItem Text="Rwanda" Value="Rwanda"/>
                                    <asp:ListItem Text="Tanzania" Value="Tanzania"/>
                                    <asp:ListItem Text="Kenya" Value="Kenya"/>
                                    <asp:ListItem Text="Uganda" Value="Uganda"/>
                                    <asp:ListItem Text="South Sudan" Value="South Sudan"/>
                                </asp:DropDownList>

                            </div>
                        </div> 

                         <div class="col-md-4">
                           <label>City</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox6" 
                                     runat="server" placeholder="city"></asp:TextBox>

                            </div> 

                        </div>

                          <div class="col-md-4">
                           <label>Pin Code</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox7" 
                                     runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>

                            </div> 

                        </div>

                    </div>

                    <div class="row">
                        <div class="col">
                        <label>Full Address</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox5" 
                                     runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                        <div class="col-md-4">
                          
                            <label>User ID</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox8" 
                                     runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>

                            </div>
                        </div> 

                         <div class="col-md-4">
                           <label>Old Password</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox9" 
                                     runat="server" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>

                            </div> 

                        </div>

                         <div class="col-md-4">
                           <label>New Password</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox10" 
                                     runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>

                            </div> 

                        </div>

                    </div>

                    <div class="row">
                        
                        <div class="col-8 mx-auto">
                            <center>
                        <div class="form-group">
                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />

                    </div>
                            </center>
                           
                   </div>

                </div>

            </div>

                <a href="Homepage.aspx"><< Back to Home</a><br><br>

            </div>

        </div>

            <div class="col-md-7">
                <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                         <img width="100px" src="images/books1.png" />

                            </center>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                        <h4>Your Issued Books</h4>
                                <asp:Label class="badge badge-pill badge-primary" ID="Label2" runat="server" Text="Info about book due date"></asp:Label>
                            </center>

                        </div>

                    </div>

                    <div class="row">
                        <div class="col">
                          <hr> 

                        </div>

                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>

                        </div>

                    </div>

             
            </div>

    </div>


        </div>
    </div>
        </div>
</asp:Content>
