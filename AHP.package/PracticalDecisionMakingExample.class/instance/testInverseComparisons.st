testing
testInverseComparisons
	self assert: (goal compare: aesthetics to: comfort) equals: 1 / 7.
	self assert: (goal compare: aesthetics to: cost) equals: 1 / 7.
	self assert: (goal compare: aesthetics to: safety) equals: 1 / 7.
	self assert: (goal compare: comfort to: cost) equals: 1 / 2.
	self assert: (goal compare: safety to: comfort) equals: 1 / 2.
	self assert: (goal compare: cost to: safety) equals: 1.
	self assert: (cost compare: acquisitionCost to: maintenanceCost) equals: 1 / 5