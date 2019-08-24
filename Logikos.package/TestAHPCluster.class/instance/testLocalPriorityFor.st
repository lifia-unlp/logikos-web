testing
testLocalPriorityFor
	self assert: ((cluster localPriorityFor: cost) truncateTo: 0.001) equals: 0.668.
	self assert: ((cluster localPriorityFor: comfort) truncateTo: 0.001) equals: 0.088.
	self assert: ((cluster localPriorityFor: safety) truncateTo: 0.001) equals: 0.243.
	self assert: (cluster nodes sumNumbers: [ :each | cluster localPriorityFor: each ]) equals: 1