testing
testEquals
	| one two three oneBis twoBis threeBis |
	one := AHPNode named: 'One'.
	oneBis := AHPNode named: 'One'.
	self assert: one equals: oneBis.
	two := AHPNode named: 'Two'.
	twoBis := AHPNode named: 'Two'.
	three := AHPNode named: 'Three'.
	threeBis := AHPNode named: 'Three'.
	one add: two.
	self deny: one equals: oneBis.
	oneBis add: twoBis.
	self assert: one equals: oneBis.
	one add: three.
	oneBis add: threeBis.
	self assert: one equals: oneBis.
	one compare: two to: three by: 4.
	oneBis compare: twoBis to: threeBis by: 3.
	self deny: one equals: oneBis.
	oneBis compare: twoBis to: threeBis by: 4.
	self assert: one equals: oneBis