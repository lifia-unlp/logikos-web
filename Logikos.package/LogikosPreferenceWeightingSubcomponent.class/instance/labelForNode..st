rendering
labelForNode: aNode
	criteria := self parent selectedLeafNode name.
	criteria
		ifNotNil: [ (aNode valueForCriteria: criteria) ifNotNil: [ :value | ^ value ] ].
	^ aNode name