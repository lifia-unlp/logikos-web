testing
testFullBookExample
	self assert: (cluster compare: cost to: comfort) equals: 7.
	self assert: (cluster compare: comfort to: cost) equals: 1 / 7.
	self assert: (cluster compare: cost to: safety) equals: 3.
	self assert: (cluster compare: safety to: cost) equals: 1 / 3.
	self assert: (cluster compare: comfort to: safety) equals: 1 / 3.
	self assert: (cluster compare: safety to: comfort) equals: 3.
	self assert: (cluster compare: safety to: safety) equals: 1