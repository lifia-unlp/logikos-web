converting
asPropertyDictionary
	^ Dictionary new
		at: 'title' put: title;
		at: 'description' put: description;
		at: 'objectType' put: objectType;
		at: 'goal' put: (goalModel asDictionaryWithPrioritiesIn: nil);
		yourself