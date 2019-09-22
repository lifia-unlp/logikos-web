cloning
beCloneWithoutParentsOf: anotherNode
	self initialize.
	name := anotherNode name copy.
	self
		addAll: (anotherNode nodes collect: [ :each | each cloneWithoutParents ]).
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