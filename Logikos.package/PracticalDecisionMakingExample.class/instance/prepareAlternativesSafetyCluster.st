legacy
prepareAlternativesSafetyCluster
	alternativesSafetyCluster := AHPNode named: 'Alternatives by safety'.
	alternativesSafetyCluster
		add: carOne;
		add: carTwo;
		add: carThree.
	alternativesSafetyCluster compare: carTwo to: carOne by: 8.
	alternativesSafetyCluster compare: carThree to: carOne by: 3.
	alternativesSafetyCluster compare: carTwo to: carThree by: 6