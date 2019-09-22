initialize
initialize
	super initialize.
	returnButtonMode := #cancelAccept.
	pieChartSubcomponent := PieChartSubComponent new
		height: 250;
		width: 400;
		yourself