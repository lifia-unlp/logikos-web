private
propertyValueStringFor: each
	| value |
	^ self parent selectedLeafNode isTangible
		ifTrue: [ value := each object ifNil: [ 'not set' ] ifNotNil: [ each object at: self parent selectedLeafNode name ifAbsent: [ 'not set' ] ].
			' - ' , self parent selectedLeafNode name , ': ' , value ]
		ifFalse: [ '' ]