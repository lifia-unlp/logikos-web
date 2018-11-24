priorities
localPriorityFor: aNode
	localPriorities ifNil: [ self updateLocalPriorities ].
	^ localPriorities at: aNode