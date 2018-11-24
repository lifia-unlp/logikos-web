accessing
newDecisionBasedOn: aRootNode
	decisions add: (AHPDecision basedOn: aRootNode veryDeepCopy)