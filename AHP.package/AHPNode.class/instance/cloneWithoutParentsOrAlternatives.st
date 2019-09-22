cloning
cloneWithoutParentsOrAlternatives
	^ self class new
		cloneWithoutParentsFrom: self ignoreAlternatives: true;
		yourself