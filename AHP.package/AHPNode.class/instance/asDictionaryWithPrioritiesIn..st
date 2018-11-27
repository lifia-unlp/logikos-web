converting
asDictionaryWithPrioritiesIn: aModel
	| dict |
	dict := Dictionary new.
	dict at: 'name' put: name.
	aModel
		ifNotNil: [ dict
				at: 'localPriority' put: (aModel localPriorityFor: self);
				at: 'overalllPriority' put: (aModel overallPriorityFor: self) ].
	dict
		at: 'nodes'
		put: (nodes collect: [ :each | each asDictionaryWithPrioritiesIn: self ]).
	^ dict