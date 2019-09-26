testing
testComparesLike
	| one two three oneBis twoBis threeBis |
	one := AHPNode named: 'One'.
	oneBis := AHPNode named: 'One'.
	self assert: (one comparesLike: oneBis).
	two := AHPNode named: 'Two'.
	twoBis := AHPNode named: 'Two'.
	three := AHPNode named: 'Three'.
	threeBis := AHPNode named: 'Three'.
	one add: two.
	oneBis add: twoBis.
	self assert: (one comparesLike: oneBis).
	one add: three.
	oneBis add: threeBis.
	self assert: (one comparesLike: oneBis).
	one compare: two to: three by: 4.
	self deny: (one comparesLike: oneBis).
	oneBis compare: twoBis to: threeBis by: 3.
	self deny: (one comparesLike: oneBis).
	oneBis compare: twoBis to: threeBis by: 4.
	self assert: (one comparesLike: oneBis)