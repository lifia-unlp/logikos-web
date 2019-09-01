initialization
initialize
	super initialize.
	readOnly := false.
	pieChartSubcomponent := PieChartSubComponent
		new
		height: 200;
		yourself