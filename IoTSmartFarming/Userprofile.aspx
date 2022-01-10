<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="IoTSmartFarming.Userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable;
        });
    </script>
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
                          
                            <label>Username</label>
                            <div class="form-group">
                                <div class="input-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox1" 
                                     runat="server" placeholder="Username"></asp:TextBox>
                             
                            </div>
                          </div>
                        </div>

                         <div class="col-md-6">
                           <label>Telephone</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox6" 
                                     runat="server" placeholder="Number"></asp:TextBox>

                            </div> 

                        </div>

                        


                    </div>

                    <div class="row">
                           <div class="col-md-6">
                           <label>First Name</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox2" 
                                     runat="server" placeholder="First Name"></asp:TextBox>

                            </div> 

                        </div>

                          <div class="col-md-6">
                           <label>Last Name</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox11" 
                                     runat="server" placeholder="Last Name"></asp:TextBox>

                            </div> 

                        </div>

                    </div>


                    <div class="row">
                          <div class="col-md-4">
                           <label>Date of Birth</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox5" 
                                     runat="server" placeholder="DoB"></asp:TextBox>

                            </div> 

                        </div>


                         <div class="col-md-4">
                          
                            <label>Province</label>
                            <div class="form-group">
                                
                                 <asp:TextBox  CssClass="form-control" ID="TextBox4" 
                                     runat="server" placeholder="Province"></asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-4">
                           <label>City</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox3" 
                                     runat="server" placeholder="City"></asp:TextBox>

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
                          
                            <label>Username</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox8" 
                                     runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>

                            </div>
                        </div> 

                         <div class="col-md-4">
                           <label>Old Password</label>
                            <div class="form-group">
                                 <asp:TextBox  class="form-control" ID="TextBox9" 
                                     runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>

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
                        
                        <div class="col-md-6">
                        
                        <div class="form-group">
                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                    </div>
                     
                   </div>

                        <div class="col-md-6">
                        
                        <div class="form-group">
                        <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button2" runat="server" Text="Delete" OnClick="Button1_Click" />
                    </div>
                     
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
                         <img width="100px" src="images/sensor.jpg" />

                            </center>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                        <h4>Your connection</h4>
                                <asp:Label class="badge badge-pill badge-primary" ID="Label2" runat="server" Text="Info about your sensors"></asp:Label>
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
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>

                        </div>

                    </div>

             
            </div>

    </div>


        </div>
    </div>
        </div>
</asp:Content>
