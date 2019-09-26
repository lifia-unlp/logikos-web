private
getValueFor: aNode
	aNode object ifNil: [ self error: 'Node does not have an object' ].
	^ aNode object
		at: property
		ifPresent: [ :it | it trimBoth ]
		ifAbsent: [ nil ]