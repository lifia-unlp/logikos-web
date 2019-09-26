cloning
cloneFrom: anotherDecision
	self goalModel: anotherDecision goalModel cloneWithoutParentsOrAlternatives.
	name := anotherDecision name copy.
	notes := anotherDecision notes copy.
	self addAlternatives: anotherDecision alternatives