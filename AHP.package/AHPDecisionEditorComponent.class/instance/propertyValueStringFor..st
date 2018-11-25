private
propertyValueStringFor: each
	| value |
	^ selectedLeafNode isTangible
		ifTrue: [ value := each object ifNil: [ 'not set' ] ifNotNil: [ each object at: selectedLeafNode name ifAbsent: [ 'not set' ] ].
			' - ' , selectedLeafNode name , ': ' , value ]
		ifFalse: [ '' ]