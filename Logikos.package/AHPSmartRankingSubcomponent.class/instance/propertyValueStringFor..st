private
propertyValueStringFor: each
	^ each object
		ifNil: [ '' ]
		ifNotNil: [ each object
				at: self parent selectedLeafNode name
				ifAbsent: [ '' ] ]