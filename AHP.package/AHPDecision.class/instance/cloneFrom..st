cloning
cloneFrom: anotherDecision
	self goalModel: anotherDecision goalModel cloneWithoutParents.
	name := anotherDecision name copy.
	notes := anotherDecision notes copy.
	self addAlternatives: anotherDecision alternatives