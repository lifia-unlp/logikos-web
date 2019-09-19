cloning
cloneWithoutParentsOrAlternatives
	| clone |
	clone := super cloneWithoutParentsOrAlternatives.
	clone comments: comments.
	^ clone