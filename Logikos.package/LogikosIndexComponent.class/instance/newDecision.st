callbacks
newDecision
	| decision |
	decision := self call: LogikosNewDecisionComponent new.
	"	decision ifNil: [ ^ self ].
	self
		call:
			((LogikosDecisionPlaygroundComponent model: decision)
				allowsNew: false;
				yourself)"