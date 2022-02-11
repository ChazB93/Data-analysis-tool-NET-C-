<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DataVisualization.aspx.cs" Inherits="IoTSmartFarming.DataVisualization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
         <div class="row">
            <div class="col">
                <div class="card">
                <div class="card-body">
                          <div class="row">
                        <div class="col-md-3">
                            <center>
                            <img width="50px" src="images/tempicon.jpg" />
                                
                        <h4>Temperature</h4>
                                    <asp:Label ID="temperatureLabel" runat="server" Text=""></asp:Label> <br />
                                <asp:Label class="badge badge-pill badge-primary" ID="Label2" runat="server" Text="The temperature is good" Visible="True"></asp:Label><br />
                                <asp:Label class="badge badge-pill badge-danger" ID="Label3" runat="server" Text="The temperature is bad" Visible="False"></asp:Label>
                                 
                            

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="SELECT * FROM [Temperature]"></asp:SqlDataSource>
                            
                                  
                            </center>
                        </div>

                                <div class="col-md-3">
                            <center>
                           
                                <img width="50px" src="images/humicon.jpg" />
                                <center>
                        <h4>Humidity</h4>
                                    <asp:Label  ID="humidityLabel" runat="server" Text="" Visible="True"></asp:Label><br />
                                <asp:Label class="badge badge-pill badge-primary" ID="Label5" runat="server" Text="The Humidity is good" Visible="True"></asp:Label><br />
                                <asp:Label class="badge badge-pill badge-danger" ID="Label6" runat="server" Text="The Humidity is bad" Visible="False"></asp:Label>
                            </center>

                            </center>
                        </div>

                                <div class="col-md-3">
                            <center>
                            <img width="50px" src="images/baro.jpg" />
                               
                        <h4>Pressure</h4>
                                    <asp:Label ID="pressureLabel" runat="server" Text="78"></asp:Label> <br />
                                <asp:Label class="badge badge-pill badge-primary" ID="Label8" runat="server" Text="The Weather is good" Visible="True"></asp:Label><br />
                                <asp:Label class="badge badge-pill badge-danger" ID="Label9" runat="server" Text="The Weather is bad" Visible="False"></asp:Label>
                            

                            </center>
                        </div>

                                <div class="col-md-3">
                            <center>
                             <img width="50px" src="images/soilicon.png" />
                              
                        <h4>Quality of Soil</h4>
                                    <asp:Label ID="qualityLabel" runat="server" Text=""></asp:Label> <br />
                                <asp:Label class="badge badge-pill badge-primary" ID="Label11" runat="server" Text="The Quality is good" Visible="True"></asp:Label><br />
                                <asp:Label class="badge badge-pill badge-danger" ID="Label12" runat="server" Text="The Quality is bad" Visible="False"></asp:Label>
                            </center>
                        </div>

                    </div>

                    </div>
                    </div>
                </div>
             </div>
         <center>
             <div class="row">  
                 <div class="col">
               
         <a href="dataanalytics.aspx">For analytics Click here</a>
                       </div> 
               </div> 
              </center> 
                 <center>
          <div class="row">
               <div class="col">
             <a href="stabilizesituation.aspx">To stabilize the situation click here</a><br><br>
                    </div>
                 </div>
                     </center> 
             
    <div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active" >
        <img src="images/data3.jpg" width="600px" height="600px" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Monitor your crops from anywhere</h5>
         <%-- <p>From home while sleeping you can monitor the growth of your crops</p> --%>
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/soil.jpg" width="600px" height="600px" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5> Control the quality of soil</h5>
         <%--<p>With one clip you can monitor the quality of soil in your farm</p> --%>
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/temperature.jpg" width="600px" height="600px" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Know the temperature and humidity of your crops</h5>
         <%-- <p>The tool help you to know the monitor the temperature and humidity in your farm </p> --%>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
         </div>

</asp:Content>
