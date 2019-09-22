callbacks
createAndAddDecision
	| decision |
	decision := AHPDecision basedOn: profile cloneWithoutParents .
	decision
		name: name;
		notes: notes.
	decision
		addAlternatives:
			(self session items
				collect: [ :each | 
					| itemName |
					itemName := each properties
						at: 'name'
						ifAbsent: [ each printString ].
					AHPAlternative named: itemName object: each ]).
				decision smartJudge.
	self session addDecision: decision.
	^ decision