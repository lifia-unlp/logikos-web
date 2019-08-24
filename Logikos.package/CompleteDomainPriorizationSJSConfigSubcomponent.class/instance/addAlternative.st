callbacks
addAlternative
	newName
		ifNotEmpty: [ self parent selectedStrategy addAllowedValue: newName.
			newName := '' ]