testing
involves: firstNode and: secondNode
	^ nodeA == firstNode & (nodeB == secondNode)
		| (nodeA == secondNode & (nodeB == firstNode))