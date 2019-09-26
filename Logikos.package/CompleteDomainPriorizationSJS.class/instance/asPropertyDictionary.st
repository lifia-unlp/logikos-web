hooks
asPropertyDictionary
	^ Dictionary new
		at: 'strategy' put: 'CompleteDomainPriorization';
		at: 'model' put: (model asDictionaryWithPrioritiesIn: nil);
		yourself