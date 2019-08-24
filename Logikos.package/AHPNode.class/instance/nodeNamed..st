accessing
nodeNamed: aString
	^ nodes
		detect: [ :each | each name = aString ]
		ifNone: [ nil ]