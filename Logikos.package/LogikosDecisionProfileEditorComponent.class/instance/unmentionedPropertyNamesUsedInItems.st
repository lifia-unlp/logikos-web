hooks
unmentionedPropertyNamesUsedInItems
	| usedNames usedPropertied |
	usedNames := Set new.
	model collectNamesIn: usedNames.
	usedPropertied := (self session items
		flatCollect: [ :each | each properties keys ]) asSet
		asSortedCollection.
	^ usedPropertied copyWithoutAll: usedNames