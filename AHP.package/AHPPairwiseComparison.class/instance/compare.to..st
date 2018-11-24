comparing
compare: firstNode to: secondNode
	^ nodeA == firstNode
		ifTrue: [ ^ judgment ]
		ifFalse: [ 1 / judgment ]