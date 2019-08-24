private
getValueFor: aNode
	aNode object ifNil: [ self error: 'Node does not have an object' ].
	^ valueBlock value: aNode object