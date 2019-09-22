testing
testCloneWithoutParentsFromIgnoreAlternatives
	| decision alternatives modelToClone cloneTarget |
	alternatives := OrderedCollection
		with: (AHPAlternative named: 'Auto verde')
		with: (AHPAlternative named: 'Auto rojo').
	modelToClone := LogikosDecisionProfile named: 'profile'.
	modelToClone comments: 'comments'.
	modelToClone
		add: (AHPCriteria named: 'price');
		add: (AHPCriteria named: 'weight').
	decision := AHPDecision basedOn: modelToClone.
	decision addAlternatives: alternatives.
	cloneTarget := LogikosDecisionProfile named: 'different'.
	cloneTarget
		cloneWithoutParentsFrom: modelToClone
		ignoreAlternatives: true.
	self
		deny:
			((cloneTarget collect: [ :each | each yourself ])
				anySatisfy: [ :each | each class = AHPAlternative ])