callbacks
getValueFor: property
	^ object ifNil: [ nil ] ifNotNil: [ object at: property ifAbsent: [ nil ] ]