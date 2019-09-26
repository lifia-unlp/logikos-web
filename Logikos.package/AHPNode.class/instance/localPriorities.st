accessing
localPriorities
	localPriorities ifNil: [ self updateLocalPriorities ].
	^ localPriorities