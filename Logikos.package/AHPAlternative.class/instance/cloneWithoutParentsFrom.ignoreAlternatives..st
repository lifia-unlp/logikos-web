cloning
cloneWithoutParentsFrom: anotherNode ignoreAlternatives: ignoreAlternatives
	super
		cloneWithoutParentsFrom: anotherNode
		ignoreAlternatives: ignoreAlternatives.
	object := anotherNode object