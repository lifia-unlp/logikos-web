callbacks
editDecision: anAHPDecision
	self
		call:
			((LogikosDecisionPlaygroundComponent model: anAHPDecision)
				allowsNew: false;
				yourself)