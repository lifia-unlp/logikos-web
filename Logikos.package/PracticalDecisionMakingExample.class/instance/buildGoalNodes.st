running
buildGoalNodes
	goal := AHPNode named: 'Car purchase (from Practical Decision Making)'.
	comfort := AHPCriteria named: 'Comfort'.
	safety := AHPCriteria named: 'Safety'.
	aesthetics := AHPCriteria named: 'Aesthetics'.
	cost := AHPCriteria named: 'Cost'.
	acquisitionCost := AHPCriteria named: 'Acquisition cost'.
	acquisitionCost beTangible.
	maintenanceCost := AHPCriteria named: 'Maintenance cost'.
	maintenanceCost beTangible.
	goal
		addAll:
			{safety.
			comfort.
			aesthetics.
			cost}.
	cost
		addAll:
			{acquisitionCost.
			maintenanceCost}