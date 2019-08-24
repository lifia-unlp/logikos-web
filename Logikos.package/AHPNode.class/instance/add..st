accessing
add: anAHPNode
	localPriorities := nil.
	nodes do: [ :each | comparisons add: (AHPPairwiseComparison nodeA: each nodeB: anAHPNode) ].
	nodes add: anAHPNode.
	anAHPNode addParent: self.