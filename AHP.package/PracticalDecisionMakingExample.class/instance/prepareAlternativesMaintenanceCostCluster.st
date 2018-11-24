legacy
prepareAlternativesMaintenanceCostCluster
	alternativesMaintenanceCostCluster := AHPNode named: 'Alternatives by Maintenance cost'.
	alternativesMaintenanceCostCluster
		add: carOne;
		add: carTwo;
		add: carThree.
	alternativesMaintenanceCostCluster compare: carOne to: carTwo by: 7.
	alternativesMaintenanceCostCluster compare: carOne to: carThree by: 5.
	alternativesMaintenanceCostCluster compare: carThree to: carTwo by: 3