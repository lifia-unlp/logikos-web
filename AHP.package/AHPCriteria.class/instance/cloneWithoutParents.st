cloning
cloneWithoutParents
	^ super cloneWithoutParents
		isTangible: isTangible;
		yourself