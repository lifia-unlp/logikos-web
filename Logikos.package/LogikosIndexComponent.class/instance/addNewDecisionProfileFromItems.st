callbacks
addNewDecisionProfileFromItems
	| profile result |
	profile := LogikosDecisionProfile forItems: self session items.
	profile
		name: '(Copy of) ' , profile name;
		comments: 'Pleas... provide a comment'.
	profileEditor model: profile.
	result := self call: profileEditor.
	result notNil
		ifTrue: [ self session addDecisionProfile: profile ]