accessing
valueForCriteria: aString
	^ object
		ifNotNil: [ object at: aString ifAbsent: [ nil ] ]