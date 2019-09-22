testing
testAddAlternative
	| decision alternative oldParent |
	alternative := AHPAlternative named: 'Auto verde'.
	oldParent := AHPCriteria named: 'Auto rojo'.
	alternative addParent: oldParent.
	decision := AHPDecision new.
	decision addAlternative: alternative.
	self
		assertCollection: alternative parents
		equals: (Set with: decision goalModel)