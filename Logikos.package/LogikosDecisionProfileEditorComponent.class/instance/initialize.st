initialize
initialize
	super initialize.
	returnButtonMode := #none.
	pieChartSubcomponent := PieChartSubComponent new
		height: 250;
		width: 400;
		yourself