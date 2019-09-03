callbacks
proceed
	profile
		ifNotNil: [ self
				show:
					((AHPDecisionPlaygroundComponent model: self createAndAddDecision)
						allowsNew: false;
						yourself) ]