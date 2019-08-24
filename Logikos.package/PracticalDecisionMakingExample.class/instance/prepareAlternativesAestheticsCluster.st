legacy
prepareAlternativesAestheticsCluster
	alternativesAestheticsCluster := AHPNode named: 'Alternatives by Aesthetics'.
	alternativesAestheticsCluster
		add: carOne;
		add: carTwo;
		add: carThree.
	alternativesAestheticsCluster compare: carTwo to: carOne by: 5.
	alternativesAestheticsCluster compare: carOne to: carThree by: 4.
	alternativesAestheticsCluster compare: carTwo to: carThree by: 8