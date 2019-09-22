cloning
clone
	| clone |
	clone := AHPDecision
		basedOn: goalModel cloneWithoutParents.
	clone
		name: name copy;
		notes: notes copy.
	clone addAlternatives: alternatives.
	^clone.