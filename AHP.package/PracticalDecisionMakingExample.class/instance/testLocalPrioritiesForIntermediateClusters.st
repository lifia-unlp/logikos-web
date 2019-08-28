testing
testLocalPrioritiesForIntermediateClusters

	self assert: ((goal localPriorityFor: comfort) truncateTo: 0.001) closeTo: 0.316.
	"self assert: ((goalCluster localPriorityFor: comfort) truncateTo: 0.001) closeTo: 0.318."
	self assert: ((goal localPriorityFor: safety) truncateTo: 0.001) closeTo: 0.268.
	"self assert: ((goalCluster localPriorityFor: safety) truncateTo: 0.001) closeTo: 0.262."
	self assert: ((goal localPriorityFor: aesthetics) truncateTo: 0.001) closeTo: 0.043.
	self assert: ((goal localPriorityFor: cost) truncateTo: 0.001) closeTo: 0.371.
	"self assert: ((goalCluster localPriorityFor: costCluster) truncateTo: 0.001) closeTo: 0.376."
	self assert: ((cost localPriorityFor: acquisitionCost) truncateTo: 0.001) closeTo: 0.166.
	self assert: ((cost localPriorityFor: maintenanceCost) truncateTo: 0.001) closeTo: 0.833.
	self assert: (cost nodes sumNumbers: [ :each | cost localPriorityFor: each ]) equals: 1.
	self assert: (goal nodes sumNumbers: [ :each | goal localPriorityFor: each ]) equals: 1