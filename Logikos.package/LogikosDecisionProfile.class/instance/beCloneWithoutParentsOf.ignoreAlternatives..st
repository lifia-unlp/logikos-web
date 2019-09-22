cloning
beCloneWithoutParentsOf: anotherNode ignoreAlternatives: ignoreAlternatives
	super
		beCloneWithoutParentsOf: anotherNode
		ignoreAlternatives: ignoreAlternatives.
	self comments: anotherNode comments