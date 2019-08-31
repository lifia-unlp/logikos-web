callbacks
editDecision: anAHPDecision
	self
		call:
			((AHPDecisionPlaygroundComponent model: anAHPDecision)
				allowsNew: false;
				yourself)