<?php
File::requireOnce('C:\xampp\htdocs\newlaravel\pokebattle\app\views\poke_battle\player_chart_data.php');
getData();
?>

<html>

    <head>
      <style>
body{
    font-weight:bold;
    font-size:15px;
    color:black;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
       <link type="text/css" rel="stylesheet" href="assets/bootstrap-3.3.4-dist/css/bootstrap.css"> 
       <link rel="stylesheet" href="http://www.amcharts.com/lib/style.css" type="text/css">
<script src="amcharts/amcharts.js" type="text/javascript"></script>
<script src="amcharts/serial.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
AmCharts.loadJSON = function(url) {
    
if (window.XMLHttpRequest) {
var request = new XMLHttpRequest();
} else {
var request = new ActiveXObject('Microsoft.XMLHTTP');
} 
request.open('GET', url, false);
request.send();
return eval(request.responseText);
};
</script>
        <script type="text/javascript">
            
//Initialize variables          
var chartCursor;
var chart;
AmCharts.ready(function() {
    // SERIAL CHART
    chart = new AmCharts.AmSerialChart();
    var chartData = AmCharts.loadJSON('/jsonData.php');
    chart.pathToImages = "amcharts/images/";
    chart.dataProvider = chartData;
    chart.categoryField = "Username";
    chart.startDuration = 1;
    //Legend
    var legend = new AmCharts.AmLegend();
    chart.addLegend(legend);

     //Scrollbar
    var chartScrollbar = new AmCharts.ChartScrollbar();
    chart.addChartScrollbar(chartScrollbar);

  
    
    // value
    var valueAxis = new AmCharts.ValueAxis();
    valueAxis.dashLength = 5;
    valueAxis.title = "Win/Loss Ratio";
    valueAxis.axisAlpha = 0;
    chart.addValueAxis(valueAxis);
    
    // GRAPH
    var graph = new AmCharts.AmGraph();
    graph.title="Ratio";
    graph.valueField = "Ratio";
    graph.fillColors = "#3366FF";
    graph.balloonText = "<b>[[category]]: [[value]]</b>";
    graph.type = "column";
    graph.lineAlpha = 0;
    graph.fillAlphas = 1;
    graph.labelText = '[[value]]'; // this will insert values in labels 
    graph.labelPosition = 'inside'; // and with this we put our label inside bar 
    chart.addGraph(graph);

    // GRAPH
    var wins = new AmCharts.AmGraph();
    wins.title = "Wins";
    wins.valueField = "Wins";
    wins.fillColors = "#00CC00";
    wins.balloonText = "<b>[[category]]: [[value]]</b>";
    wins.type = "column";
    wins.lineAlpha = 0;
    wins.fillAlphas = 1;
    wins.labelText = '[[value]]'; // this will insert values in labels 
    wins.labelPosition = 'inside'; // and with this we put our label inside bar 
    chart.addGraph(wins);
    chart.hideGraph(wins);//Hide on default
     // GRAPH
    var losses = new AmCharts.AmGraph();
    losses.title = "Losses";
    losses.valueField = "Losses";
    losses.fillColors = "#FF3300";
    losses.balloonText = "<b>[[category]]: [[value]]</b>";
    losses.type = "column";
    losses.lineAlpha = 0;
    losses.fillAlphas = 1;
    losses.labelText = '[[value]]'; // this will insert values in labels 
    losses.labelPosition = 'inside'; // and with this we put our label inside bar 
    chart.addGraph(losses);
    chart.hideGraph(losses);//Hide on default
    
    // CURSOR
    chartCursor = new AmCharts.ChartCursor();
    chartCursor.cursorAlpha = 0;
    chartCursor.zoomable = false;
    chartCursor.categoryBalloonEnabled = false;
    chart.addChartCursor(chartCursor);
    
    
    // WRITE
    chart.write("chartdiv");
                
            });
            
             // changes cursor mode from pan to select
            function setPanSelect() {
                if (document.getElementById("rb1").checked) {
                    chartCursor.pan = false;
                    chartCursor.zoomable = true;
                } else {
                    chartCursor.pan = true;
                }
                chart.validateNow();
            }
        </script>
        <header>
   <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" ></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><img src='assets/battlelogo.png' style='height:50;width:50'></li>
               <li><a href="login">Logout</a></li>
               <li class="active"><a href="players">Top Players</a></li>
                <li><a href="pokemon">Top Pokemon</a></li>
                <li><a href="battle">Battle!</a></li>
               
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>

  </header>
    </head>

   <body  background = "/assets/pokebattleBG.png">
   <div class="container">
    <div class="row vertical-center-row">
        <div class="col-xs-4 col-xs-offset-1">
            <div class="row ">

     		<div id="appendDiv" style="width: 800; height: 50;"><h1 style="text-align:center;font-weight:bold"> Top Players</h1></div>
     		 <div id="chartdiv" style="width: 800px; height: 400;"></div>
   			</div>
   		 </div>
   	 </div>
    </div>


    </body>

</html>