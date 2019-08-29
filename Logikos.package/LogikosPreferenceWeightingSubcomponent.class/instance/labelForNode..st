rendering
labelForNode: aNode
	criteria
		ifNotNil: [ (aNode valueForCriteria: criteria) ifNotNil: [ :value | ^ value ] ].
	^ aNode name