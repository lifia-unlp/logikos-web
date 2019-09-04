callbacks
addNewDecisionProfileFromItems
	| profile |
	profile := LogikosDecisionProfile
		forItems: LogikosApplicationModel singleton items.
	profile name: '(Copy of) ' , profile name.
	LogikosApplicationModel singleton addDecisionProfile: profile