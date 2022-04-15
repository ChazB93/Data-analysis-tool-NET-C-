<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="charts.aspx.cs" Inherits="IoTSmartFarming.charts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>
                <asp:GridView ID="gvLineChart" runat="server" AutoGenerateColumns="False" DataKeyNames="time" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="sensorID" HeaderText="sensorID" SortExpression="sensorID" />
                        <asp:BoundField DataField="time" HeaderText="time" ReadOnly="True" SortExpression="time" />
                        <asp:BoundField DataField="value" HeaderText="value" SortExpression="value" />
                    </Columns>
                </asp:GridView>

                
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SensorDataConnectionString %>" SelectCommand="SELECT * FROM [Humidity]"></asp:SqlDataSource>
               

                
            </td>
            <td>
                <div id="MyLineChart"></div>
            </td>
        </tr>
    </table>
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
</asp:Content>
