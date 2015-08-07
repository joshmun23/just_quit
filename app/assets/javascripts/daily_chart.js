$(function () {
  $('#charts-container').highcharts({
    var data = $.ajax({
      var query = { smokes: 'daily', options: {[
        cost: true
      ]} }

      url : '/users/' + userID + '/smokes',
      data : query,
      dateType: :json,
      method: 'get'
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
        name: 'Jane', // later to be user.name
        data: [4, 1, 4] // later to be an array of 7 days worth of smoked cigarettes
    }]
  });
});
