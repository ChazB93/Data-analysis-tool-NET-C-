<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="IoTSmartFarming.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
    <img src="images/R.jpg" class="img-fluid"/>
        </section>
      <section>
           <div class="container">
        <div class="row">
            <div class="col-12">
                <center>
                <h2>How it works</h2>
                <p><b>Two steps to monitor your crops</b></p>
                </center>
            </div>

            <div class="row">
            <div class="col-md-6">
                <center>
                <img width="450px" height="200px" src="images/reg.jpg" />
                    <h4>Register yourself</h4>
                    <p class="text-justify">Register yourself by providing the details of you in order to track your farm.
                    </p>
                </center>
            </div>
                <div class="col-md-6">
                <center>
                <img width="450px" height="200px" src="images/real.jpg" />
                    <h4>Get real-time data from your farm</h4>
                    <p class="text-justify"> After the registration, you get access to all data sent by the sensor installed in your farm. This help you alot as you do not have to waste too much time or stress yourself. We too much care about you
                    </p>
                </center>
            </div>
        </div>

    </div>
        </section>
</asp:Content>
