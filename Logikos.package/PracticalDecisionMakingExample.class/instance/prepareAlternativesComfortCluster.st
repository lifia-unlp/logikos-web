legacy
prepareAlternativesComfortCluster
	alternativesComfortCluster := AHPNode
		named: 'Alternatives by Comfort'.
	alternativesComfortCluster
		add: carOne;
		add: carTwo;
		add: carThree.
	alternativesComfortCluster compare: carTwo to: carOne by: 8.
	alternativesComfortCluster compare: carOne to: carThree by: 1.
	alternativesComfortCluster compare: carTwo  to: carThree  by: 8