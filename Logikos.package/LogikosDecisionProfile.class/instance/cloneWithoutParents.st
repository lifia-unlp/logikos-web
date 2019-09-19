cloning
cloneWithoutParents
	| clone |
	clone := super cloneWithoutParentsOrAlternatives.
	clone comments: comments.
	^ clone