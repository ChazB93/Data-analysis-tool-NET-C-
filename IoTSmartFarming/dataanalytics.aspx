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
                                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="time" DataSourceID="SqlDataSource1">
                                                <Columns>
                                                    <asp:BoundField DataField="sensorID" HeaderText="sensorID" SortExpression="sensorID" />
                                                    <asp:BoundField DataField="time" HeaderText="time" ReadOnly="True" SortExpression="time" />
                                                    <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                                                </Columns>
                                            </asp:GridView>

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
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="time" DataSourceID="SqlDataSource2">
                                               <Columns>
                                                   <asp:BoundField DataField="sensorID" HeaderText="sensorID" SortExpression="sensorID" />
                                                   <asp:BoundField DataField="time" HeaderText="time" ReadOnly="True" SortExpression="time" />
                                                   <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                                               </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="Select Top 4 * from Temperature order by time desc"></asp:SqlDataSource>
                                            </center>

                                        </div>
                             </div>
                         </div>

                           <div class="col-md-6">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>Temperature Trends</h5>
                                            </center>

                                        </div>
                             </div>
                         </div>

                           <div class="col-md-3">
                               <div class="card">
                                    <div class="card-body">
                                        <center>
                                        <h5>All Humidity data</h5>
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="time" DataSourceID="SqlDataSource3">
                                               <Columns>
                                                   <asp:BoundField DataField="sensorID" HeaderText="sensorID" SortExpression="sensorID" />
                                                   <asp:BoundField DataField="time" HeaderText="time" ReadOnly="True" SortExpression="time" />
                                                   <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                                               </Columns>
                                            </asp:GridView>
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
                                            <asp:GridView class="table table-striped table-bordered" ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="time" DataSourceID="SqlDataSource4">
                                                <Columns>
                                                    <asp:BoundField DataField="sensorID" HeaderText="sensorID" SortExpression="sensorID" />
                                                    <asp:BoundField DataField="time" HeaderText="time" ReadOnly="True" SortExpression="time" />
                                                    <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                                                </Columns>
                                            </asp:GridView>
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
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="time" DataSourceID="SqlDataSource7">
                                               <Columns>
                                                   <asp:BoundField DataField="sensorID" HeaderText="sensorID" SortExpression="sensorID" />
                                                   <asp:BoundField DataField="time" HeaderText="time" ReadOnly="True" SortExpression="time" />
                                                   <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                                               </Columns>
                                            </asp:GridView>
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
                                           <asp:GridView class="table table-striped table-bordered" ID="GridView8" runat="server" AutoGenerateColumns="False" DataKeyNames="time" DataSourceID="SqlDataSource8">
                                               <Columns>
                                                   <asp:BoundField DataField="sensorID" HeaderText="sensorID" SortExpression="sensorID" />
                                                   <asp:BoundField DataField="time" HeaderText="time" ReadOnly="True" SortExpression="time" />
                                                   <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                                               </Columns>
                                            </asp:GridView>
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
