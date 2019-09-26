testing
testOveralPriorityFor
	| parent |
	parent := MockParent localPriority: 0.5 overallPriority: 0.1.
	parent add: cluster.
	self assert: ((cluster localPriorityFor: cost) truncateTo: 0.001) equals: 0.668.
	self assert: ((cluster overallPriorityFor: cost) truncateTo: 0.001) equals: 0.066.
	self assert: ((cluster localPriorityFor: comfort) truncateTo: 0.001) equals: 0.088.
	self assert: ((cluster overallPriorityFor: comfort) truncateTo: 0.001) equals: 0.008.
	self assert: ((cluster localPriorityFor: safety) truncateTo: 0.001) equals: 0.243.
	self assert: ((cluster overallPriorityFor: safety) truncateTo: 0.001) equals: 0.024