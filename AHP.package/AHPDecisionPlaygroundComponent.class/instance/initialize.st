initialization
initialize
	super initialize.
	allowsNew := true.
	pieChartSubcomponent := PieChartSubComponent new
		height: 250;
		width: 400;
		yourself