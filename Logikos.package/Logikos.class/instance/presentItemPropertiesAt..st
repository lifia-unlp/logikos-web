accessing items
presentItemPropertiesAt: aDashboardId
	^ ((self dashboard: aDashboardId) items
		flatCollect: [ :each | each properties keys ]) asSet
		asSortedCollection