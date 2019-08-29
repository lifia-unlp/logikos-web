callbacks
useDecisionProfile: aLogikosDecisionProfile
	| decision name |
	decision := AHPDecision basedOn: (aLogikosDecisionProfile cloneWithoutParents).
	decision
		addAlternatives:
			(LogikosApplicationModel singleton items
				collect: [ :each | name := each properties at: 'name' ifAbsent: [ each printString ].
					AHPAlternative named: name object: each ]).
	LogikosApplicationModel singleton addDecision: decision