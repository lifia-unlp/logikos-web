cloning
beCloneWithoutParentsOf: anotherNode ignoreAlternatives: ignoreAlternatives
	| nodesToAdd |
	self initialize.
	name := anotherNode name copy.
	nodesToAdd := ignoreAlternatives
		ifTrue: [ anotherNode nonAlternativeNodes ]
		ifFalse: [ anotherNode nodes ].
	self
		addAll: (nodesToAdd collect: [ :each | each cloneWithoutParents ]).
	self nodeNames combinations
		select: [ :each | each size = 2 ]
		thenDo: [ :each | 
			| aComparison |
			aComparison := anotherNode
				compareName: each first
				toName: each second.
			self
				compare: (self nodeNamed: each first)
				to: (self nodeNamed: each second)
				by: aComparison ]