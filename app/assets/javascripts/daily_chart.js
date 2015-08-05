/*!
 * Chart.js
 * http://chartjs.org/
 * Version: 1.0.2
 *
 * Copyright 2015 Nick Downie
 * Released under the MIT license
 * https://github.com/nnnick/Chart.js/blob/master/LICENSE.md
 */


// Load the Visualization API and the piechart package.
$('#chart-button').on('click', function(e) {
  e.preventDefault();
  debugger

  google.load('visualization', '1.0', {'packages':['corechart']});

  // Set a callback to run when the Google Visualization API is loaded.
  google.setOnLoadCallback(drawChart);

  // Callback that creates and populates a data table,
  // instantiates the pie chart, passes in the data and
  // draws it.
  function drawChart() {

    // Create the data table.
  var data = google.visualization.arrayToDataTable([
     ['Day', 'Total Cigarettes', 'Cost', { role: 'style' }],
     ['7/1/2015', 10, 8.94, '#b87333'],            // RGB value
     ['7/2/2015', 14, 10.49, 'silver'],            // English color name
     ['7/3/2015', 18, 19.30, 'gold'],

   ['7/4/2015', 20, 21.45, 'color: #e5e4e2' ], // CSS-style declaration
  ]);

    // Set chart options
    var options = {'title':'Daily Cigarette Consumption',
                   'width':500,
                   'height':400,
                 };

    // Instantiate and draw our chart, passing in some options.
    var chart = new google.visualization.ColumnChart(document.getElementById('charts'));
    chart.draw(data, options);
  }
});
