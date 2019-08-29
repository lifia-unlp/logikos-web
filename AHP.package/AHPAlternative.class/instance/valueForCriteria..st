accessing
valueForCriteria: aString
	^ object
		ifNotNil: [ object properties at: aString ifAbsent: [ nil ] ]