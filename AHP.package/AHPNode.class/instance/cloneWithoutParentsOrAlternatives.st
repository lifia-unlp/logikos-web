cloning
cloneWithoutParentsOrAlternatives
	^ self class new
		beCloneWithoutParentsOf: self ignoreAlternatives: true;
		yourself