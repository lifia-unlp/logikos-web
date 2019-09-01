callbacks
newNode
	| usedNames newName |
	usedNames := node nodes collect: #name.
	newName := 'Undefined'.
	[ usedNames includes: newName ]
		whileTrue: [ newName := newName , ' ' , Time millisecondClockValue printString ].
	node add: (AHPCriteria named: newName)