initialization
initialize
	super initialize.
	readOnly := false.
	pieChartSubcomponent := PieChartSubComponent
		new
		height: 300;
		width: 400;
		yourself