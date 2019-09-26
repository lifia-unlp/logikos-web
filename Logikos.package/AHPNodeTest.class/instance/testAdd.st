testing
testAdd
	| one two twoBis |
	one := AHPNode named: 'One'.
	two := AHPNode named: 'Two'.
	twoBis := AHPNode named: 'Two'.
	one add: two.
	self
		assertCollection: one nodes
		equals: (OrderedCollection with: two).
	self should: [ one add: twoBis ] raise: Error.
	self should: [ one add: AHPNode new ] raise: Error.
	self should: [ one add: (AHPNode named: '') ] raise: Error