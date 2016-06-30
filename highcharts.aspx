<%@ Page Language="C#" AutoEventWireup="true" CodeFile="highcharts.aspx.cs" Inherits="highcharts" %>

<!DOCTYPE html /> 

<%-- PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="js/vendor/jquery-1.12.0.min.js"></script>
    <script src="http://code.highcharts.com/highcharts.src.js"></script> 
    <script src="http://code.highcharts.com/adapters/standalone-framework.js"></script> 

     <script src="http://code.highcharts.com/stock/highstock.src.js"></script> 

    <script type="text/javascript" src="js/highchart.js" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

    <div data-ng-app="myapp">
    <div data-ng-controller="myctrl">
        <input data-ng-model="highchartsNG.title.text"/>
        <button data-ng-click="addSeries()">Add Series</button>
        <button data-ng-click="addPoints()">Add Points to Random Series</button>
        <button data-ng-click="removeRandomSeries()">Remove Random Series</button>
        <button data-ng-click="swapChartType()">Line/Bar</button>
        <highchart id="chart1" config="highchartsNG"></highchart>
        
    </div>
</div>
<h3><a href="https://github.com/pablojim/highcharts-ng">See Highcharts-ng on github</a></h3>


    </div>
    </form>
</body>
</html>
