comparing
compare: firstNode to: secondNode by: anInteger
	nodeA == firstNode
		ifTrue: [ judgment := anInteger ]
		ifFalse: [ judgment := 1 / anInteger ]