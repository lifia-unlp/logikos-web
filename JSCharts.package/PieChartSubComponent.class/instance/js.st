script
js
	^ 'google.charts.load(''current'', {''packages'':[''corechart'']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable('
		, self tableDataString
		,
			');

        var chart = new google.visualization.PieChart(document.getElementById(''piechart''));

        chart.draw(data);
      }'