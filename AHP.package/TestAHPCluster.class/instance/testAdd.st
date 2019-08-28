testing
testAdd
	| parent child |
	parent := AHPNode named: 'Parent'.
	child := AHPNode named: 'Child'.
	parent add: child.
	self assert: child parents equals: (Set with: parent).
	self assertCollection: parent nodes asSet equals: (Set with: child)