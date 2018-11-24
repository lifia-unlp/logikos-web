testing
testLocalPrioritiesForAlternativeClusters
	self assert: (aesthetics  localPriorityFor: carOne) closeTo: 0.19.
	self assert: (aesthetics localPriorityFor: carTwo) closeTo: 0.73.
	self assert: (aesthetics localPriorityFor: carThree) closeTo: 0.06.
	
	self assert: (comfort  localPriorityFor: carOne) closeTo: 0.1.
	self assert: (comfort localPriorityFor: carTwo) closeTo: 0.8.
	self assert: (comfort localPriorityFor: carThree) closeTo: 0.1.
	
	self assert: (safety  localPriorityFor: carOne) closeTo: 0.07.
	self assert: (safety localPriorityFor: carTwo) closeTo: 0.76.
	self assert: (safety localPriorityFor: carThree) closeTo: 0.16.
	
	self assert: (acquisitionCost  localPriorityFor: carOne) closeTo: 0.73.
	self assert: (acquisitionCost localPriorityFor: carTwo) closeTo: 0.06.
	self assert: (acquisitionCost localPriorityFor: carThree) closeTo: 0.19.
	
	self assert: (maintenanceCost  localPriorityFor: carOne) closeTo: 0.73.
	self assert: (maintenanceCost localPriorityFor: carTwo) closeTo: 0.08.
	self assert: (maintenanceCost localPriorityFor: carThree) closeTo: 0.18