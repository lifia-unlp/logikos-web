initialization
setValueFor: property to: value
	object ifNil: [ object := Dictionary new ].
	value ifEmpty: [ object removeKey: property ifAbsent: [  ] ] ifNotEmpty: [ object at: property put: value ]