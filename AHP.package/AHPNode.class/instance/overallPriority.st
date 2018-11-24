priorities
overallPriority
	^ parents isEmpty
		ifTrue: [ 1 ]
		ifFalse: [ self parents sumNumbers: [ :each | each overallPriorityFor: self ] ]