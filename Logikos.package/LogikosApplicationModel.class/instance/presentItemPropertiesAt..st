accessing
presentItemPropertiesAt: aSpaceName
	^ ((items at: aSpaceName)
		flatCollect: [ :each | each properties keys ]) asSet
		asSortedCollection