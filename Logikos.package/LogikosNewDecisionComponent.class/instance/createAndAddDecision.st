callbacks
createAndAddDecision
	| decision |
	decision := AHPDecision basedOn: profile.
	decision
		name: name;
		notes: notes.
	decision
		addAlternatives:
			(LogikosApplicationModel singleton items
				collect: [ :each | 
					| itemName |
					itemName := each properties
						at: 'name'
						ifAbsent: [ each printString ].
					AHPAlternative named: itemName object: each ]).
	LogikosApplicationModel singleton addDecision: decision.
	^ decision