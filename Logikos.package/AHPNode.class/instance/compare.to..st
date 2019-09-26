comparing
compare: nodeA to: nodeB
	^ nodeA == nodeB
		ifTrue: [ 1 ]
		ifFalse: [ (comparisons detect: [ :each | each involves: nodeA and: nodeB ])
				compare: nodeA
				to: nodeB ]