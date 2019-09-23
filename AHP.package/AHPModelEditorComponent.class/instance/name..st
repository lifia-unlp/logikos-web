accessing
name: anObject
	anObject
		ifEmpty: [ self warningMessage: 'The name cannot be empty'.
			^ self ].
	((self model parents flatCollect: #nodes)
		anySatisfy: [ :each | each name = anObject ])
		ifTrue: [ self
				warningMessage: '"' , anObject , '" is already in use. Choose another name.'.
			^ self ].
	name := anObject