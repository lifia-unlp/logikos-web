callbacks
proceed
	name ifEmpty: [ ^ self errorMessage: 'Name cannot be empty' ].
	profile
		ifNil: [ ^ self errorMessage: 'You must choose a decision profile' ].
	self answer: self createAndAddDecision