legacy
prepareAlternativesAcquisitionCostCluster
	alternativesAcquisitionCostCluster := AHPNode named: 'Alternatives by Acquisition cost'.
	alternativesAcquisitionCostCluster
		add: carOne;
		add: carTwo;
		add: carThree.
	alternativesAcquisitionCostCluster compare: carOne to: carTwo by: 8.
	alternativesAcquisitionCostCluster compare: carOne to: carThree by: 5.
	alternativesAcquisitionCostCluster compare: carThree to: carTwo by: 4