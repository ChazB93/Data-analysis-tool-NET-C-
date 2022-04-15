<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dataanalytics.aspx.cs" Inherits="IoTSmartFarming.dataanalytics" %>
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
         <div class="card">
                <div class="card-body">
                     <div class="row">
                         <div class="col-md-3">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>All Temperature data</h5>
                                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource11">
                                                <Columns>
                                                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                                                    <asp:BoundField DataField="event" HeaderText="event" SortExpression="event" />
                                                    <asp:BoundField DataField="temperature" HeaderText="temperature" SortExpression="temperature" />
                                                </Columns>
                                            </asp:GridView>

                                            <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ethernetConnectionString %>" ProviderName="<%$ ConnectionStrings:ethernetConnectionString.ProviderName %>" SelectCommand="select id, event, temperature from data order by event desc;"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource10" runat="server"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource9" runat="server"></asp:SqlDataSource>

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="SELECT  * FROM [Temperature]"></asp:SqlDataSource>

                                            </center>


                                        </div>
                             </div>
                         </div>

                           <div class="col-md-3">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>Temperature for past 7days</h5>
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource12">
                                               <Columns>
                                                   <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                                                   <asp:BoundField DataField="event" HeaderText="event" SortExpression="event" />
                                                   <asp:BoundField DataField="temperature" HeaderText="temperature" SortExpression="temperature" />
                                               </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ethernetConnectionString %>" ProviderName="<%$ ConnectionStrings:ethernetConnectionString.ProviderName %>" SelectCommand="select id, event, temperature from data order by event desc limit 10;"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="Select Top 4 * from Temperature order by time desc"></asp:SqlDataSource>
                                            </center>


                                        </div>
                                   
                             </div>
                         </div>

                           <div class="col-md-6" id="MyLineChart" >
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>Temperature Trends</h5>
                                                
                                        <table>
                                            <tr>
                                                <td>
                                                 
                                                </td>
                                            </tr>
                                            </table>
                                            </center>
                                        <script src="https://code.highcharts.com/highcharts.js"></script>
    <script>
        $('#MyLineChart').highcharts({
            chart: {
                type: 'spline'
            },
            title: {
                text: 'Temperature Trends'
            },
            xAxis: {
                title: {
                    text: 'Date'
                }
            },
            yAxis: {
                title: {
                    text: 'Temperature values'
                }
            },
            series: [{
                type: 'spline',
                name: 'Temperature Trends',
                data: <%=lineData%>,
            }]
        });
    </script>
                                        </div>
                             </div>
                         </div>

                           <div class="col-md-3">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>All Humidity data</h5>
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource13">
                                               <Columns>
                                                   <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                                                   <asp:BoundField DataField="event" HeaderText="event" SortExpression="event" />
                                                   <asp:BoundField DataField="humidity" HeaderText="humidity" SortExpression="humidity" />
                                               </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ethernetConnectionString %>" ProviderName="<%$ ConnectionStrings:ethernetConnectionString.ProviderName %>" SelectCommand="select id, event, humidity from data order by event desc;"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="SELECT * FROM [Humidity]"></asp:SqlDataSource>
                                            </center>


                                        </div>
                             </div>
                         </div>

                           <div class="col-md-3">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>Humidity for past 7days </h5>
                                            <asp:GridView class="table table-striped table-bordered" ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource14">
                                                <Columns>
                                                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                                                    <asp:BoundField DataField="event" HeaderText="event" SortExpression="event" />
                                                    <asp:BoundField DataField="humidity" HeaderText="humidity" SortExpression="humidity" />
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ethernetConnectionString %>" ProviderName="<%$ ConnectionStrings:ethernetConnectionString.ProviderName %>" SelectCommand="select id, event, humidity from data order by event desc limit 10;"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="SELECT TOP 5 * From Humidity Order by time desc"></asp:SqlDataSource>
                                            </center>


                                        </div>
                             </div>
                         </div>
                           <div class="col-md-6">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>Humidity Trends</h5>
                                            </center>

                                        </div>
                             </div>
                         </div>
                         <div class="col-md-3">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>All Pressure data</h5>
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="time" DataSourceID="SqlDataSource5">
                                               <Columns>
                                                   <asp:BoundField DataField="sensorID" HeaderText="sensorID" SortExpression="sensorID" />
                                                   <asp:BoundField DataField="time" HeaderText="time" ReadOnly="True" SortExpression="time" />
                                                   <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                                               </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="SELECT * FROM [Pressure]"></asp:SqlDataSource>
                                            </center>


                                        </div>
                             </div>
                         </div>

                           <div class="col-md-3">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>Pressure for past 7days</h5>
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="time" DataSourceID="SqlDataSource6">
                                               <Columns>
                                                   <asp:BoundField DataField="sensorID" HeaderText="sensorID" SortExpression="sensorID" />
                                                   <asp:BoundField DataField="time" HeaderText="time" ReadOnly="True" SortExpression="time" />
                                                   <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                                               </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="SELECT TOP 5 * FROM Pressure Order by time desc"></asp:SqlDataSource>
                                            </center>


                                        </div>
                             </div>
                         </div>
                           <div class="col-md-6">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>Pressure Trends</h5>
                                            </center>

                                        </div>
                             </div>
                         </div>
                         <div class="col-md-3">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>All Quality of Soil data</h5>
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource16">
                                               <Columns>
                                                   <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                                                   <asp:BoundField DataField="event" HeaderText="event" SortExpression="event" />
                                                   <asp:BoundField DataField="moisture" HeaderText="moisture" SortExpression="moisture" />
                                               </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ethernetConnectionString %>" ProviderName="<%$ ConnectionStrings:ethernetConnectionString.ProviderName %>" SelectCommand="select id, event, moisture from data order by event desc;"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource15" runat="server"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="SELECT * FROM [SoilMoisture]"></asp:SqlDataSource>
                                            </center>


                                        </div>
                             </div>
                         </div>

                           <div class="col-md-3">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>Quality of Soil for past 7days</h5>
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView8" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource17">
                                               <Columns>
                                                   <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                                                   <asp:BoundField DataField="event" HeaderText="event" SortExpression="event" />
                                                   <asp:BoundField DataField="moisture" HeaderText="moisture" SortExpression="moisture" />
                                               </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ethernetConnectionString %>" ProviderName="<%$ ConnectionStrings:ethernetConnectionString.ProviderName %>" SelectCommand="select id, event, moisture from data order by event desc limit 10;"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="SELECT TOP 5 * From SoilMoisture Order by time desc"></asp:SqlDataSource>
                                            </center>


                                        </div>
                             </div>
                         </div>
                           <div class="col-md-6">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>Quality of Soil Trends</h5>
                                            </center>

                                        </div>
                             </div>
                         </div>
                    </div>
                   
             </div>
       

        </div>

    </div>
   
</asp:Content>
