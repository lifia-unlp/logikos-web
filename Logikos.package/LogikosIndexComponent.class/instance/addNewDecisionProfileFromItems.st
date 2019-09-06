callbacks
addNewDecisionProfileFromItems
	| profile |
	profile := LogikosDecisionProfile
		forItems: self session items.
	profile name: '(Copy of) ' , profile name.
	self session addDecisionProfile: profile