cloning
cloneWithoutParentsFrom: anotherNode ignoreAlternatives: ignoreAlternatives
	super
		cloneWithoutParentsFrom: anotherNode
		ignoreAlternatives: ignoreAlternatives.
	self comments: anotherNode comments