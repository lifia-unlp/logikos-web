priorities
localPriorityFor: aNode
	(nodes includes: aNode)
		ifFalse: [ ^ self error: 'Node named ' , aNode name , ' is not present' ].
	localPriorities ifNil: [ self updateLocalPriorities ].
	^ localPriorities at: aNode