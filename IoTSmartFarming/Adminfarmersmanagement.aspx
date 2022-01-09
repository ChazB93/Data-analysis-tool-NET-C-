<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminfarmersmanagement.aspx.cs" Inherits="IoTSmartFarming.Adminfarmersmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                <div class="card-body">
                  
                    <div class="row">
                        <div class="col">
                            <center>
                        <h4>Farmer Details</h4>
                            </center>

                        </div>

                    </div>

                      <div class="row">
                        <div class="col">
                            <center>
                         <img width="100px" src="images/generaluser.png" />

                            </center>

                        </div>

                    </div>

                  

                    <div class="row">
                         <div class="col-md-6">
                          
                            <label>Farmer ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox1" 
                                     runat="server" placeholder="Username"></asp:TextBox>
                                <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />

                            </div>
                                </div>
                        </div>

                           <div class="col-md-6">
                           <label>Account Status</label>
                            <div class="form-group">
                                <div class="input-group">
                                 <asp:TextBox  CssClass="form-control mr-1" ID="TextBox7" 
                                     runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>

                                    <asp:LinkButton class="btn btn-primary mr-1" ID="LinkButton1" runat="server">
                                        <i class="fas fa-check-circle"></i></asp:LinkButton>
                                    <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server">
                                        <i class="far fa-pause-circle"></i></asp:LinkButton>

                                <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server">
                                        <i class="far fa-window-close"></i></asp:LinkButton>
                            </div> 
                           </div>


                        </div>

                        


                    </div>

                    <div class="row">
                           <div class="col-md-6">
                           <label>First Name</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox2" 
                                     runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>

                            </div> 

                        </div>

                          <div class="col-md-6">
                           <label>Last Name</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox11" 
                                     runat="server" placeholder="Last Name" ReadOnly="True"></asp:TextBox>

                            </div> 

                        </div>

                    </div>


                    <div class="row">
                          <div class="col-md-3">
                           <label>Date of Birth</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox5" 
                                     runat="server" placeholder="Member ID" TextMode="Date" ReadOnly="True"></asp:TextBox>

                            </div> 

                        </div>


                         <div class="col-md-3">
                          
                            <label>State</label>
                            <div class="form-group">
                                
                                 <asp:TextBox  CssClass="form-control" ID="TextBox4" 
                                     runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>

                            </div>
                        </div>

                        <div class="col-md-3">
                           <label>City</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox8" 
                                     runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>

                            </div> 

                        </div>

                        <div class="col-md-3">
                           <label>Telephone</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox9" 
                                     runat="server" placeholder="Number" ReadOnly="True"></asp:TextBox>

                            </div> 

                        </div>
                       


                    </div>
               
                    <div class="row">
                        <div class="col">
                         
                    <div class="form-group">
                        <asp:Button class="btn btn-lg btn-block btn-danger"  ID="Button5" runat="server" Text="Delete User Permanently" />
                               
                            </div>
                                
                            </div>
                    

                </div>

            </div>
                    


            </div><br><br>

        </div>

                   <div class="col-md-6">
                <div class="card">
                <div class="card-body">
                 
                    <div class="row">
                        <div class="col">
                            <center>
                        <h4>List of Registered Farmers</h4>
                                
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
