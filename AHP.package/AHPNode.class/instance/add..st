accessing
add: anAHPNode
	(self nodeNames includes: anAHPNode name)
		ifTrue: [ ^ self error: 'Attempt to add a note with a duplicate name' ].
	localPriorities := nil.
	nodes
		do:
			[ :each | comparisons add: (AHPPairwiseComparison nodeA: each nodeB: anAHPNode) ].
	nodes add: anAHPNode.
	anAHPNode addParent: self