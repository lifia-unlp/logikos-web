cloning
cloneWithoutParentsOrAlternatives
	^ self class new
		beCloneWithoutParentsOf: self;
		yourself