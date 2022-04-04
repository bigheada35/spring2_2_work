<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    google.charts.load('current', {
        'packages': ['corechart']
      });
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
          var data = google.visualization.arrayToDataTable([
            ['Year', '판매량', {role:'annotation'}, {role:'style'}],
            ['2018',  8000 , '2018', 'hotpink'   ],
            ['2019',  20170, '2019', 'yellow'     ],
            ['2020',  55060, '2020', 'opacity: 0.4'      ],
            ['2021',  49300, '2021', 'stroke-color: #703593; stroke-width: 4; fill-color: #C5A5CF'     ],
            ['2022',  ${year.sales_sum}, '올해', 'stroke-color: #871B47; stroke-opacity: 0.6; stroke-width: 8; fill-color: #BC5679; fill-opacity: 0.2']
          ]);


        var options = {
          title: '${member.member_id} 연간매출',
          width: 900,
          height: 500,
          hAxis: {
              format: 'yy',
              gridlines: {
                count: 15
              }
            },
            vAxis: {
              gridlines: {
                color: 'none'
              },
              minValue: 0
            }
          };

        var chart = new  google.visualization.ColumnChart(document.getElementById('chart_div4'));

        chart.draw(data, options);

        var button = document.getElementById('change');

        button.onclick = function() {

          // If the format option matches, change it to the new option,
          // if not, reset it to the original format.
          options.hAxis.format === 'M/d/yy' ?
            options.hAxis.format = 'MMM dd, yyyy' :
            options.hAxis.format = 'M/d/yy';

          chart.draw(data, options);
        };
      }
    </script>

</head>
<body>
	<div id="chart">
		<div id="chart_div4"></div>
	</div>	
</body>
</html>