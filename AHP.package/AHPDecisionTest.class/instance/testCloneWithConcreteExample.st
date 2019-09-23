testing
testCloneWithConcreteExample
	| price weight altA altB altC clone goal decision leafNodes |
	price := AHPCriteria named: 'price'.
	weight := AHPCriteria named: 'weight'.
	altA := AHPAlternative named: 'A'.
	altB := AHPAlternative named: 'B'.
	altC := AHPAlternative named: 'C'.
	goal := AHPNode named: 'goal'.
	goal
		add: price;
		add: weight.
	decision := AHPDecision basedOn: goal.
	decision
		addAlternatives:
			{altA.
			altB.
			altC}.
	leafNodes := decision leafNodes asOrderedCollection .
	leafNodes first compare: decision alternatives first to: decision alternatives second by: 4.
	self fail: 'still con complete'
