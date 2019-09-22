cloning
cloneWithoutParents
	^ self class new
		beCloneWithoutParentsOf: self ignoreAlternatives: false;
		yourself