cloning
cloneWithoutParents
	^ self class new
		cloneWithoutParentsFrom: self ignoreAlternatives: false;
		yourself