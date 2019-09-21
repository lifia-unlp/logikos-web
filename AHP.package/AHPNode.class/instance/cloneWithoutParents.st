cloning
cloneWithoutParents
	^ self class new
		beCloneWithoutParentsOf: self;
		yourself