testing
testCompareTo
	cluster compare: cost to: comfort by: 9.
	self assert: (cluster compare: cost to: comfort) equals: 9.
	self assert: (cluster compare: comfort to: cost) equals: 1 / 9.
	cluster compare: comfort to: cost by: 8.
	self assert: (cluster compare: cost to: comfort) equals: 1 / 8.
	self assert: (cluster compare: comfort to: cost) equals: 8.
	self should: [ cluster compare: cost to: cost by: 3 ] raise: Error