comparing
compare: aNode to: anotherNode by: anInteger
	isPristine := false.
	localPriorities := nil.
	aNode == anotherNode
		ifTrue:
			[ ^ self error: 'Attempt to change the preference of a node to itself' ].
	(comparisons
		detect: [ :each | each involves: aNode and: anotherNode ])
		compare: aNode
		to: anotherNode
		by: anInteger