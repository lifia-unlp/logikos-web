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
	self should: [ one add: twoBis ] raise: Error