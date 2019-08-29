accessing
presentItemProperties
	^ (items flatCollect: [ :each | each properties keys ]) asSet
		asSortedCollection