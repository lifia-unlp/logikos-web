callbacks
attachSmartJudgementStrategyTo: anAHPCriteria
	self
		call: (AHPSmartJudgmentConfiguration model: self model criteria: anAHPCriteria)