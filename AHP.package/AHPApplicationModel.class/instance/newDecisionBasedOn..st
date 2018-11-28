accessing
newDecisionBasedOn: aRootNode
	decisions add: (AHPDecision basedOn: aRootNode cloneWithoutParents)