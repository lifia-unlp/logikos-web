accessing
labelForNode: aNode
	(aNode valueForCriteria: parentNode name) ifNotNil: [ :value | ^ value ].
	^ aNode name