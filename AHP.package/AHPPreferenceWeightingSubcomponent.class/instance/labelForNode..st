rendering
labelForNode: aNode
	(aNode valueForCriteria: node name) ifNotNil: [ :value | ^ value ].
	^ aNode name