$(function () {
  $('#charts-container').highcharts({
    var data = $.ajax('/users/' + userID + '/smokes', function() {

    });

    chart: {
        type: 'column'
    },
    title: {
        text: 'Cigarette Consumption'
    },
    xAxis: {
        categories: ['Day 1', 'Day 2', 'Day 3']
    },
    yAxis: {
        title: {
            text: 'Cigarettes Smoked'
        }
    },
    series: [{
        name: 'Jane',
        data: [1, 0, 4]
    }]
  });
});
