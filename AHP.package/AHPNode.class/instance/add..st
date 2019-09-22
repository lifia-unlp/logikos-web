accessing
add: anAHPNode
	(self nodeNames includes: anAHPNode name)
		ifTrue: [ ^ self error: 'Attempt to add a node with a duplicate name' ].
	anAHPNode name isEmptyOrNil
		ifTrue: [ ^ self error: 'Attempt to add a node an empty or nil name' ].
	localPriorities := nil.
	nodes
		do:
			[ :each | comparisons add: (AHPPairwiseComparison nodeA: each nodeB: anAHPNode) ].
	nodes add: anAHPNode.
	anAHPNode addParent: self