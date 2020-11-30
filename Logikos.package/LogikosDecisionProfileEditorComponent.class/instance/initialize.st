initialize
initialize
	super initialize.
	returnButtonMode := #none.
	hideAHPMatrix := true.
	pieChartSubcomponent := PieChartSubComponent new
		height: 250;
		width: 400;
		yourself