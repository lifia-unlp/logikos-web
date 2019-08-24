running
prepareNodes
	goal := AHPNode named: 'Goal'.
	comfort := AHPNode named: 'Comfort'.
	safety := AHPNode named: 'Safety'.
	aesthetics := AHPNode named: 'Aesthetics'.
	cost := AHPNode named: 'Cost'.
	acquisitionCost := AHPNode named: 'Acquicition cost'.
	maintenanceCost := AHPNode named: 'Maintenance cost'.
	carOne := AHPNode named: 'Car 1'.
	carTwo := AHPNode named: 'Car 2'.
	carThree := AHPNode named: 'Car 3'.
	goal
		addAll:
			{safety.
			comfort.
			aesthetics.
			cost}.
	cost
		addAll:
			{acquisitionCost.
			maintenanceCost}.
	{comfort.
	safety.
	aesthetics.
	acquisitionCost.
	maintenanceCost}
		do: [ :each | 
			each
				addAll:
					{carOne.
					carTwo.
					carThree} ]