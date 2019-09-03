callbacks
proceed
	profile
		ifNotNil: [ self
				show:
					((LogikosDecisionPlaygroundComponent model: self createAndAddDecision)
						allowsNew: false;
						yourself) ]