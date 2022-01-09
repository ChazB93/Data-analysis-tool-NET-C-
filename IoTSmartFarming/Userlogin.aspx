<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="IoTSmartFarming.Userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                         <img width="150px" src="images/generaluser.png" />

                            </center>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                        <h3>Farmer Login</h3>
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
                            <label>Username</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox1" 
                                     runat="server" placeholder="Username"></asp:TextBox>

                            </div>
                            <label>Password</label>
                            <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="TextBox2" 
                                     runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                            </div> 
                            <div class="form-group">
                             <asp:Button class="btn btn-success btn-block"  ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>

                            </div>
                            <div class="form-group">
                               <asp:Button class="btn btn-info btn-block"  ID="Button2" runat="server" Text="Sign Up" OnClick="Button2_Click"/>

                            </div>

                           

                        </div>

                    </div>

                </div>

            </div>

                <a href="Homepage.aspx"><< Back to Home</a><br><br>

            </div>

        </div>

    </div>
</asp:Content>
