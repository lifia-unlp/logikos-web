accesing
localPriorities
	localPriorities ifNil: [ self updateLocalPriorities ].
	^ localPriorities