callbacks
addNewDecisionProfileFromItems
	| profile |
	profile := LogikosDecisionProfile named: 'From items'.
	LogikosApplicationModel singleton presentItemProperties
		do: [ :property | profile add: (AHPCriteria named: property) ].
	LogikosApplicationModel singleton addDecisionProfile: profile